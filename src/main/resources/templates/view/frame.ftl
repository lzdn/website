<#import "/master.ftl" as master />
<#import  "header.ftl" as header>
<#import  "menu.ftl" as menu>
<#import  "footer.ftl" as footer>
<#macro frame >
<@master.master>

<@header.header />
<div class="page-container">
	<div class="page-sidebar nav-collapse collapse">
		<@menu.menu />
	</div>
	<!-- BEGIN PAGE -->
	<div class="page-content">
		<#nested>
	</div>
	<!-- END PAGE -->
</div>
<@footer.footer />

</@master.master>
</#macro>

	