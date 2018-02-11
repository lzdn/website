<#global basePath=springMacroRequestContext.contextPath>
<#macro master bodyclass="" csss=[] scripts=[]>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
		<title>后台管理系统</title>
		
		<link rel="shortcut icon" href="${basePath}/static/image/favicon.ico" />
		
		<!-- BEGIN GLOBAL MANDATORY STYLES -->

		<link href="${basePath}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	
		<link href="${basePath}/static/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	
		<link href="${basePath}/static/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	
		<link href="${basePath}/static/css/style-metro.css" rel="stylesheet" type="text/css"/>
	
		<link href="${basePath}/static/css/style.css" rel="stylesheet" type="text/css"/>
	
		<link href="${basePath}/static/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	
		<link href="${basePath}/static/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	
		<link href="${basePath}/static/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	
		<!-- END GLOBAL MANDATORY STYLES -->
	
		<!-- BEGIN PAGE LEVEL STYLES --> 
	
		<link href="${basePath}/static/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
	
		<link href="${basePath}/static/css/daterangepicker.css" rel="stylesheet" type="text/css" />
	
		<link href="${basePath}/static/css/fullcalendar.css" rel="stylesheet" type="text/css"/>
	
		<!-- <link href="${basePath}/static/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/> --> 
	
		<link href="${basePath}/static/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
	
		<#if csss?exists && csss?size gt 0>
			 <#list csss as css>
				<link href="${basePath}/static/css/${css!}" rel="stylesheet" type="text/css"/>
			 </#list>
		</#if>
		
		<!-- END PAGE LEVEL STYLES -->
		<!--JAVASCRIPT -->
		<script src="${basePath}/static/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<!--JAVASCRIPT -->
		<#if scripts?exists && scripts?size gt 0>
			 <#list scripts as script>
			 	<script src="${basePath}/static/js/${script!}" type="text/javascript"></script>  
			 </#list>
		</#if>
		
		<script language="javascript">
			var global_basePath = "${basePath}";
		</script>
  </head>
 
  <body class="page-header-fixed  ${bodyclass!}" >
		<#nested>
  </body>
</html>
</#macro>

