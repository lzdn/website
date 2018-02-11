package com.note.website.conf;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.note.website.utils.MD5Util;


@Configuration
@EnableWebSecurity
// 用于@PreAuthorize的生效,基于方法的权限控制
@EnableGlobalMethodSecurity(prePostEnabled = true)
// 覆盖默认的spring security提供的配置
@Order(SecurityProperties.ACCESS_OVERRIDE_ORDER)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService authUserService;

	@Autowired
	SessionRegistry sessionRegistry;
	
	 @Autowired
	 @Qualifier(DataSourceConstant.NoteCore.DATASOURCE)
	 private DataSource notecoreDataSource;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		/*	http.csrf().disable().authorizeRequests()//禁用CSRF保护
			 //任何访问都必须授权
	        .anyRequest().fullyAuthenticated()
			.antMatchers("/login").permitAll()
			.antMatchers("/logout").permitAll()
			.antMatchers("/static/**").permitAll()
			//.antMatchers("/js/**").permitAll()
			//.antMatchers("/css/**").permitAll()
			//.antMatchers("/fonts/**").permitAll()
			//.antMatchers("/favicon.ico").permitAll()
			.antMatchers("/").permitAll()
			.anyRequest().authenticated()
			.sessionManagement().maximumSessions(1).sessionRegistry(sessionRegistry)
			.and().and().logout().invalidateHttpSession(true)
			.clearAuthentication(true)
			.and().httpBasic(); httpBasic:参考http://blog.csdn.net/u012373815/article/details/56832167
			*/
			 //允许所有用户访问”/”和”/home”
			http.csrf().disable().authorizeRequests()
			.antMatchers( "/login","/logout","/register","/error","/static/**").permitAll()
	        //其他地址的访问均需验证权限
	        .anyRequest().authenticated().and().formLogin() 
	        //指定登录页是”/login”
	        .loginPage("/login").permitAll()
	        .failureHandler(loginFailureHandler())
	        //登录成功后可使用loginSuccessHandler()存储用户信息，可选。
	        .successHandler(loginSuccessHandler()).and()
	        
	        .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
	        //退出登录后的默认网址是”/home”
	        .logoutSuccessUrl("/login").permitAll()
	        .invalidateHttpSession(true).clearAuthentication(true).and()
	        //登录后记住用户，下次自动登录
	        //数据库中必须存在名为persistent_logins的表
	        //建表语句见code15
	       // 这里是核心
	        .rememberMe()
	        .tokenValiditySeconds(1209600)
	        //指定记住登录信息所使用的数据源
	        .tokenRepository(tokenRepository()); 
			http.sessionManagement().maximumSessions(1).sessionRegistry(sessionRegistry);
			http.sessionManagement().invalidSessionUrl("/login");
	}
	
	//spring security  
    @Bean
    public JdbcTokenRepositoryImpl tokenRepository(){        
        JdbcTokenRepositoryImpl j=new JdbcTokenRepositoryImpl();
        j.setDataSource(notecoreDataSource);
        return j;
    }
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(authUserService).passwordEncoder(new PasswordEncoder() {

            @Override
            public String encode(CharSequence rawPassword) {
                return MD5Util.encode((String) rawPassword);
            }

            @Override
            public boolean matches(CharSequence rawPassword, String encodedPassword) {
                return encodedPassword.equals(MD5Util.encode((String) rawPassword));
            }
        });
    }
    
    @Bean
    public SessionRegistry getSessionRegistry(){
        SessionRegistry sessionRegistry=new SessionRegistryImpl();
        return sessionRegistry;
    }
    
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/static/**");
        web.ignoring().antMatchers("/webjars/**");
    }
    
    @Bean
    public LoginSuccessHandler loginSuccessHandler(){
        return new LoginSuccessHandler();
    }
    
    @Bean
    public LoginFailureHandler loginFailureHandler(){
        return new LoginFailureHandler();
    }

}
