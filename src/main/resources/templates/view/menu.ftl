<#macro menu>
<ul class="page-sidebar-menu">
	<li>
		<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

		<div class="sidebar-toggler hidden-phone"></div>

		<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

	</li>
	<li>
		<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
		<form class="sidebar-search">

			<div class="input-box">

				<a href="javascript:;" class="remove"></a>

				<input type="text" placeholder="Search..." />

				<input type="button" class="submit" value=" " />
			</div>
		</form>
		<!-- END RESPONSIVE QUICK SEARCH FORM -->
	</li>
	<li class="start active">
		<a href="/index">
			<i class="icon-home"></i> 
			<span class="title">Home</span>
			<span class="selected"></span>
		</a>
	</li>
	<li class="">
		<a href="javascript:;">
			<i class="icon-group"></i> 
			<span class="title">用户管理</span>
			<span class="arrow"></span>
			<!-- 
			<span class="arrow open"></span>
			 -->
		</a>
		<ul class="sub-menu">
			<!-- <li class="active">-->
			<li class="">
				<a href="/user/list">
 					用户列表
				</a>
			</li>
		</ul>
	</li>
	<li class="">
		<a href="javascript:;">
			<i class="icon-user-md"></i> 
			<span class="title">角色管理</span>
			<span class="arrow"></span>
		</a>
		<ul class="sub-menu">
			<li class="">
				<a href="#">
 					角色列表
				</a>
			</li>
		</ul>
	</li>
	<li class="last">
		<a href="javascript:;">
			<i class="icon-cogs"></i> 
			<span class="title">系统设置</span>
			<span class="arrow "></span>
		</a>
		<ul class="sub-menu">
			<li >
				<a href="#">
 					字典维护
				</a>
			</li>
			<li >
				<a href="#">
 					爬虫规则
				</a>
			</li>
			<li >
				<a href="#">
 					监控
				</a>
			</li>
		</ul>
	</li>
</ul>
</#macro>
