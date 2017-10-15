<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<%@ taglib prefix="s" uri="/struts-tags"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!--  <html lang="zh-CN"> -->
<html>
  <head>
  	<!--规定html文档的字符编码为utf8  -->
    <meta charset="utf-8">
    <!-- 指定ie使用最新版本渲染当前页面 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <!-- 指定宽度为设备宽度  initial-scale=1.0确保网页加载时，以1:1的比例呈现-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    
    <meta name="description" content="a book management system">
    <meta name="author" content="mtt">


	
    <title>HomePage</title>


    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
	<!-- navbar-fixed-top固定在顶部  navbar-inverse反色导航条 -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
    
	<!-- container-fluid占据全部viewport的容器 -->
      <div class="container">
      
      	<!-- 响应式导航栏 -->
        <div class="navbar-header"> 
        
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
           	<!-- sr-only除了屏幕阅读器外，其他设备上隐藏元素 -->
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            
          </button>
          <a class="navbar-brand" href="">图书管理系统</a>
        </div>
        
        <div id="navbar" class="navbar-collapse collapse">
        <!-- nav导航菜单 navbar-nav导航栏 -->
        <!--  
          <ul class="nav navbar-nav navbar-right">
          	<li><button type = "submit" class = "btn btn-primary"><span class = "glyphicon glyphicon-plus"></span>新增图书</button></li>
          	<li><button type = "submit" class = "btn btn-primary"><span class = "glyphicon glyphicon-remove"></span>删除已选</button></li>
          </ul>
      	-->
          <form action = "search" class="navbar-form navbar-right" method = "post">
          	<div class = "form-group">
            	<input type="text" class="form-control" name = "authorName" placeholder="输入作者...">
            </div>
            <button type = "submit" class = "btn btn-primary"> 搜索 <span class = "glyphicon glyphicon-search"></span></button>
          </form>
              
        </div>
        
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">

        <div class="col-sm-12  col-md-12  main">
   
          <!-- 响应式表格 让表格水平滚动以适应小型设备  -->
          <div class = "panel panel-primary">
          	<div class = "panel-heading">功能面板</div>
          	<div class = "panel-body">
          		
 								
                    <button type="button" class="btn btn-primary" id="addBtn">  
	                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增  
                    </button>
                    <button type="button" class="btn btn-primary" id="deleteBtn">  
	                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除  
                    </button>
                    <button type="button" class="btn btn-primary" id="selectBtn">
                    	<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>全选
                    </button>    
                    <button type="button" class="btn btn-primary" id="showAllBtn">  
	                    	所有图书  
                    </button>              
                 
          		<div class="table-responsive">
            		<table class="table table-hover table-striped" id = "mytable">
              			<thead>
                			<tr>
                			<th>选择</th>
                  			<th>书籍名称</th>
                  			<th></th>
                  			<th></th>
                			</tr>
              			</thead>
            
             			 <tbody>
							<s:iterator value = "authorBooks" var = "book" status = "st">
								<tr>
									<td>
										<input type = "checkbox" name = "checkItem" value = "${book.isbn}">
									</td>
									<td>
										<s:a href = 'http://60.205.230.161:8080/BookManage/showDetail.action?bookId=%{#book.isbn}' target = "_blank">
											<s:property value = "#book.title"/>
										</s:a>
									</td>
									<td>																			    									
										<s:a href = 'http://60.205.230.161:8080/BookManage/delete.action?bookId=%{#book.isbn}' id = "deletelink"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除</s:a>
    								</td>	
    								<td>	
    									<s:a href = 'http://60.205.230.161:8080/BookManage/update.action?bookId=%{#book.isbn}' target = "_blank"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>编辑</s:a>
									</td>
								</tr>
							</s:iterator>
              			</tbody>
            		</table>
            		
            		
            		
          		</div>          		
          	</div>
          	
          	<div class="panel-footer">
 			</div><!-- end of panel-footer -->
 
 
          </div>
          
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    
    <script type = "text/javascript">
    $(document).ready(function(){
    	$("#addBtn").click(function(){
    		window.location.href="http://60.205.230.161:8080/BookManage/add";
    	});
    	$("#deleteBtn").click(function(){
    		var chk_value = "";
    		var obj = $("[name = 'checkItem']:checkbox:checked");
    		if(obj.length <= 0){
    			alert('您未勾选!');
    			return;
    		}
    		var res = confirm('您确定要删除吗?');
    		if(res == true){
    			var dropIds = "";
    			obj.each(function(){
    				dropIds += ($(this).val() + ',');
    			});
    			$.ajax({
    				type:'post',   				
    				url:'deleteList.action',
    				data:{'dropIds':dropIds},
    				dataType:'json',
    				success:function(response){
    					alert('删除成功');
    					obj.each(function(){
    						$(this).parents("tr").hide();
    					});
    				}
    			});
    		}
    	});
    	$("#selectBtn").click(function(){
    		$("[name = 'checkItem']").prop("checked",true);
    	});
    	$("#showAllBtn").click(function(){
    		window.location.href="http://60.205.230.161:8080/BookManage/showAllBook";
    	});
    	$("#deletelink").click(function(){
    		$(this).parents("tr").hide(1);
    	});
    });
    </script>
  </body>
</html>