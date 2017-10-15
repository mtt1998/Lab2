<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%> 
<%@ taglib prefix="s" uri="/struts-tags"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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


	
    <title>Detail</title>


    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template 
    <link href="dashboard.css" rel="stylesheet"-->

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
	<ol class = "breadcrumb">
		<li><a href = "search">Home</a>
		<li class = "active">detail</li>
	</ol>
    <div class="container">
      <div class="row">
      
        <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 main">
        
          <!-- 响应式表格 让表格水平滚动以适应小型设备  -->
          <div class="table-responsive">
            <table class="table table-hover table-bordered">
            <caption>Book Information</caption>
            
              <tbody>
            	<tr>
            		<td>ISBN:</td>
					<td>${myBook.isbn}</td>
				</tr>
				<tr>
            		<td>Title:</td>
					<td>${myBook.title}</td>
				</tr>
            	<tr>
            		<td>AuthorId:</td>
					<td>${myBook.authorId}</td>
				</tr>
				<tr>
            		<td>Publisher:</td>
					<td>${myBook.publisher}</td>
				</tr>
            	<tr>
            		<td>Publish Date:</td>
					<td>${myBook.publishDate}</td>
				</tr>
				<tr>
            		<td>Price:</td>
					<td>${myBook.price}元</td>
				</tr>
				
              </tbody>
            </table>
            
            <table class="table table-hover table-bordered">
            <caption>Author Information</caption>
            
              <tbody>
            	<tr>
            		<td>AuthorId:</td>
					<td>${myAuthor.authorId}</td>
				</tr>
				<tr>
            		<td>Name:</td>
					<td>${myAuthor.name}</td>
				</tr>
            	<tr>
            		<td>Age:</td>
					<td>${myAuthor.age}</td>
				</tr>
				<tr>
            		<td>Country:</td>
					<td>${myAuthor.country}</td>
				</tr>				
              </tbody>
            </table>
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
  </body>
</html>