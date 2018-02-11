<#import "/frame.ftl" as frame />
<@frame.frame pageTitle="" csss=["select2_metro.css","DT_bootstrap.css"] scripts=[]> 
<div class="row-fluid">
	<div class="span12 responsive" data-tablet="span12 fix-offset" data-desktop="span12">
		<!-- BEGIN EXAMPLE TABLE PORTLET-->

		<div class="portlet box grey">

			<div class="portlet-title">

				<div class="caption"><i class="icon-user"></i>用户</div>

				<div class="actions">

					<a href="#" class="btn blue"><i class="icon-pencil"></i> 新增</a>

					<div class="btn-group">

						<a class="btn green" href="#" data-toggle="dropdown">

						<i class="icon-cogs"></i> 操作

						<i class="icon-angle-down"></i>

						</a>

						<ul class="dropdown-menu pull-right">

							<li><a href="#"><i class="icon-pencil"></i> 编辑</a></li>

							<li><a href="#"><i class="icon-trash"></i> 删除</a></li>
							<!-- 
							<li><a href="#"><i class="icon-ban-circle"></i> Ban</a></li>

							<li class="divider"></li>

							<li><a href="#"><i class="i"></i> Make admin</a></li>
							 -->
						</ul>

					</div>

				</div>

			</div>

			<div class="portlet-body">

				<table class="table table-striped table-bordered table-hover" id="sample_2">

					<thead>

						<tr>

							<th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_2 .checkboxes" /></th>

							<th>用户名</th>

							<th class="hidden-480">邮箱</th>

							<th class="hidden-480">状态</th>

						</tr>

					</thead>

					<tbody>
						<#if userlist?exists && userlist?size gt 0>
							 <#list userlist as user>
								 <tr class="odd gradeX">
									<td><input type="checkbox" class="checkboxes" value="${user.userId!}" /></td>
									<td>${user.userName!}</td>
									<td class="hidden-480">${user.email!}</td>
									<td>
										<#if user.status==0>
											<span class="label label-danger">无效</span>
										<#elseif user.status==1>
											<span class="label label-success">有效</span>
										</#if>
									</td>
								 </tr>
							 </#list>
						</#if>
					</tbody>

				</table>

			</div>

		</div>

		<!-- END EXAMPLE TABLE PORTLET-->

	</div>

</div>
</@frame.frame>
<@frame.script>
<script src="${basePath}/static/js/select2.min.js" type="text/javascript"></script>
<script src="${basePath}/static/js/jquery.dataTables.js" type="text/javascript"></script>
<script src="${basePath}/static/js/DT_bootstrap.js" type="text/javascript"></script>
<script>
jQuery(document).ready(function() {  
	// begin second table
	$('#sample_2').dataTable({
	    "aLengthMenu": [
	        [5, 15, 20, -1],
	        [5, 15, 20, "All"] // change per page values here
	    ],
	    // set the initial value
	    "iDisplayLength": 5,
	    "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	    "sPaginationType": "bootstrap",
	    "oLanguage": {
	        "sLengthMenu": "_MENU_ per page",
	        "oPaginate": {
	            "sPrevious": "Prev",
	            "sNext": "Next"
	        }
	    },
	    "aoColumnDefs": [{
	            'bSortable': false,
	            'aTargets': [0]
	        }
	    ]
	});

	jQuery('#sample_2 .group-checkable').change(function () {
	    var set = jQuery(this).attr("data-set");
	    var checked = jQuery(this).is(":checked");
	    jQuery(set).each(function () {
	        if (checked) {
	            $(this).attr("checked", true);
	        } else {
	            $(this).attr("checked", false);
	        }
	    });
	    jQuery.uniform.update(set);
	});

	jQuery('#sample_2_wrapper .dataTables_filter input').addClass("m-wrap small"); // modify table search input
	jQuery('#sample_2_wrapper .dataTables_length select').addClass("m-wrap small"); // modify table per page dropdown
	jQuery('#sample_2_wrapper .dataTables_length select').select2(); // initialzie select2 dropdown
	 
});
</script>
</@frame.script>