<#import "/master.ftl" as master />
<#import  "header.ftl" as header>
<#import  "menu.ftl" as menu>
<#import  "footer.ftl" as footer>
<#macro frame pageTitle="" csss=[] scripts=[]>
<@master.master csss=csss scripts=scripts>
<@header.header />
<div class="page-container row-fluid">
	<div class="page-sidebar nav-collapse collapse">
		<@menu.menu />
	</div>
	<!-- BEGIN PAGE -->
	<div class="page-content" style="min-height:1024px !important">
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<!-- BEGIN STYLE CUSTOMIZER -->
					<div class="color-panel hidden-phone">
						<div class="color-mode-icons icon-color"></div>
						<div class="color-mode-icons icon-color-close"></div>
						<div class="color-mode">
							<p>主题</p>
							<ul class="inline">
								<li class="color-black current color-default" data-style="default"></li>
								<li class="color-blue" data-style="blue"></li>
								<li class="color-brown" data-style="brown"></li>
								<li class="color-purple" data-style="purple"></li>
								<li class="color-grey" data-style="grey"></li>
								<li class="color-white color-light" data-style="light"></li>
							</ul>
							<label>
								<span>系统布局</span>
								<select class="layout-option m-wrap small">
									<option value="fluid" selected>宽屏</option>
									<option value="boxed">窄屏</option>
								</select>
							</label>
							<label>
								<span>顶部</span>
								<select class="header-option m-wrap small">
									<option value="fixed" selected>漂浮</option>
									<option value="default">固定</option>
								</select>
							</label>
							<label>
								<span>右部菜单</span>
								<select class="sidebar-option m-wrap small">
									<option value="fixed">漂浮</option>
									<option value="default" selected>固定</option>
								</select>
							</label>
							<label>
								<span>尾部</span>
								<select class="footer-option m-wrap small">
									<option value="fixed">漂浮</option>
									<option value="default" selected>固定</option>
								</select>
							</label>
						</div>
					</div>
					<!-- END BEGIN STYLE CUSTOMIZER -->    
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
						<!-- 后台管理系统   --><small>欢迎使用</small>
					</h3>
					<ul class="breadcrumb">
						<li>
							<i class="icon-home"></i>
							<a href="index.html">Home</a> 
							<i class="icon-angle-right"></i>
						</li>
						<li><a href="#">仪表盘</a></li>
						<!--  
						<li class="pull-right no-text-shadow">
							<div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">
								<i class="icon-calendar"></i>
								<span></span>
								<i class="icon-angle-down"></i>
							</div>
						</li>
						 -->
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- 主页 -->
			<div id="dashboard">
				<#nested>
			</div>
			<!-- 主页 -->
		</div>
	</div>
	<!-- END PAGE -->
</div>
<@footer.footer />
</@master.master>
</#macro>
<#macro script >
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->
	<!--
	<script src="${basePath}/static/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	-->
	<script src="${basePath}/static/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="${basePath}/static/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="${basePath}/static/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="${basePath}/static/js/excanvas.min.js"></script>

	<script src="${basePath}/static/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="${basePath}/static/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="${basePath}/static/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->
<!--
	<script src="${basePath}/static/js/jquery.vmap.js" type="text/javascript"></script>   

	<script src="${basePath}/static/js/jquery.vmap.russia.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.vmap.world.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.vmap.europe.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.vmap.germany.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.vmap.usa.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.vmap.sampledata.js" type="text/javascript"></script>  
 -->
	<script src="${basePath}/static/js/jquery.flot.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.flot.resize.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.pulsate.min.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/date.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/daterangepicker.js" type="text/javascript"></script>     

	<script src="${basePath}/static/js/jquery.gritter.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/fullcalendar.min.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

	<script src="${basePath}/static/js/jquery.sparkline.min.js" type="text/javascript"></script>  
	
	<script src="${basePath}/static/js/jquery.sparkline.min.js" type="text/javascript"></script>  

	<script src="${basePath}/static/layer/layer.js" type="text/javascript"></script>        
	
	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="${basePath}/static/js/app.js" type="text/javascript"></script>
<!-- 		
		<script src="${basePath}/static/js/index.js" type="text/javascript"></script>    
	-->
	
	
	<!-- END PAGE LEVEL SCRIPTS -->  
	<script>
		jQuery(document).ready(function() {    

		   App.init(); // initlayout and core plugins

		//   Index.init();

		 //  Index.initJQVMAP(); // init index page's custom scripts

		//   Index.initCalendar(); // init index page's custom scripts

		//   Index.initCharts(); // init index page's custom scripts

		//   Index.initChat();

		//   Index.initMiniCharts();

		//   Index.initDashboardDaterange();

	//	   Index.initIntro();

		});

	</script>
	<#nested>
</#macro>
	