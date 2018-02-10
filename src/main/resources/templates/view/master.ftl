<#global basePath=springMacroRequestContext.contextPath>
<#macro master  bodyclass="" >
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
	
		<link href="${basePath}/static/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>
	
		<link href="${basePath}/static/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
	
		<!-- END PAGE LEVEL STYLES -->
		
		<!--JAVASCRIPT -->
		<script src="${basePath}/static/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<!--JAVASCRIPT -->
		
		<script language="javascript">
			$.basePath = "${basePath}";
		</script>
  </head>
 
  <body class="page-header-fixed page-sidebar-fixed page-footer-fixed ${bodyclass!}" >
		<#nested>
	 <!-- 全局js -->
		<script src="${basePath}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
		<script src="${basePath}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<!-- validate -->
		<script src="${basePath}/static/js/plugins/validate/jquery.validate.min.js"></script>
		<!-- iCheck -->
		<script src="${basePath}/static/js/plugins/iCheck/icheck.min.js"></script>
		<!-- 自定义js -->
		<script src="${basePath}/static/js/hplus.js"></script>
		<script src="${basePath}/static/js/contabs.js"></script>
		<!-- 第三方插件 -->
		<script src="${basePath}/static/js/plugins/pace/pace.min.js"></script>
		
		<!-- layer javascript -->
		<script src="${basePath}/static/js/plugins/layer/layer.min.js"></script>
		
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
	
		<script src="${basePath}/static/js/jquery.vmap.js" type="text/javascript"></script>   
	
		<script src="${basePath}/static/js/jquery.vmap.russia.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/jquery.vmap.world.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/jquery.vmap.europe.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/jquery.vmap.germany.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/jquery.vmap.usa.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/jquery.vmap.sampledata.js" type="text/javascript"></script>  
	
		<script src="${basePath}/static/js/jquery.flot.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/jquery.flot.resize.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/jquery.pulsate.min.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/date.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/daterangepicker.js" type="text/javascript"></script>     
	
		<script src="${basePath}/static/js/jquery.gritter.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/fullcalendar.min.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/jquery.easy-pie-chart.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/jquery.sparkline.min.js" type="text/javascript"></script>  
	
		<!-- END PAGE LEVEL PLUGINS -->
	
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
	
		<script src="${basePath}/static/js/app.js" type="text/javascript"></script>
	
		<script src="${basePath}/static/js/index.js" type="text/javascript"></script>        
	
		<!-- END PAGE LEVEL SCRIPTS -->  
		<script>
			jQuery(document).ready(function() {    

			   App.init(); // initlayout and core plugins
	
			   Index.init();
	
			   Index.initJQVMAP(); // init index page's custom scripts
	
			   Index.initCalendar(); // init index page's custom scripts
	
			   Index.initCharts(); // init index page's custom scripts
	
			   Index.initChat();
	
			   Index.initMiniCharts();
	
			   Index.initDashboardDaterange();
	
			   Index.initIntro();
	
			});
	
		</script>

  </body>
</html>
</#macro>

