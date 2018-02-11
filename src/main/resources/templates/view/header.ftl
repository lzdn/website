<#macro header>
<div class="header navbar navbar-inverse navbar-fixed-top">
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="navbar-inner">
		<div class="container-fluid">
			<!-- BEGIN LOGO -->
			<a class="brand" href="/index">
			<img src="${basePath}/static/image/mlogo_1.png" alt="logo"/>
			</a>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
			<img src="${basePath}/static/image/menu-toggler.png" alt="" />
			</a>          
			<!-- END RESPONSIVE MENU TOGGLER -->            
			<!-- BEGIN TOP NAVIGATION MENU -->              
			<ul class="nav pull-right">
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown user">

					<a href="#" class="dropdown-toggle" data-toggle="dropdown">

					<img alt="" src="${basePath}/static/image/avatar1_small.jpg" />

					<span class="username">管理员</span>

					<i class="icon-angle-down"></i>

					</a>

					<ul class="dropdown-menu">

						<li><a href="extra_profile.html"><i class="icon-user"></i>个人信息</a></li>
						<!-- 
						<li><a href="page_calendar.html"><i class="icon-calendar"></i> My Calendar</a></li>

						<li><a href="inbox.html"><i class="icon-envelope"></i> My Inbox(3)</a></li>

						<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>

						<li class="divider"></li>
 						-->
						<li><a href="extra_lock.html"><i class="icon-lock"></i>锁屏</a></li>

						<li><a href="login.html"><i class="icon-key"></i>退出</a></li>

					</ul>

				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
			<!-- END TOP NAVIGATION MENU --> 
		</div>
	</div>
	<!-- END TOP NAVIGATION BAR -->
</div>
</#macro>