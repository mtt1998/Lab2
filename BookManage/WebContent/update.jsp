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
	
    <title>update book</title>


    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link href="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/theme-default.min.css" rel="stylesheet">
	
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
    <div class="container">
      <div class="row">
      
        <div class="col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 main">
			<form class = "form-horizontal" role = "form" id = "bookform" action = "updateBook" method = "post">
				<fieldset>
					<legend>Update Book's information</legend>
				
					<div class = "form-group">
						<label class = "col-lg-3 control-label">ISBN:</label>
						<div class="col-lg-5">
							<input class="form-control" type="text" value="${myBook.isbn}" name="myBook.isbn" readonly="readonly">
						</div>
					</div>
					
					<div class = "form-group">
						<label class = "col-lg-3 control-label">Title:</label>
						<div class="col-lg-5">
							<input class="form-control" type="text" value="${myBook.title}" name="myBook.title" readonly="readonly">
						</div>
					</div>
					
					<div class = "form-group">
						<label class = "col-lg-3 control-label">AuthorID:</label>
						<div class="col-lg-5">
							<input class="form-control" type="text" value="${myBook.authorId}" name="myBook.authorId" data-validation="number" data-validation-allowing="positive">
						</div>
					</div>
					
					<div class = "form-group">
						<label class = "col-lg-3 control-label">Publisher:</label>
						<div class="col-lg-5">
							<input class="form-control" type="text" value="${myBook.publisher}" name="myBook.publisher" data-validation="length" data-validation-length="1-200">
						</div>
					</div>
					
					<div class = "form-group">
						<label class = "col-lg-3 control-label">Publish Date:</label>
						<div class="col-lg-5">
							<input class="form-control" type="text" value="${myBook.publishDate}" name="myBook.publishDate" data-validation="date" data-validation-help="Please input as the format 'YYYY-MM-DD'">
						</div>
					</div>
					
					<div class = "form-group">
						<label class = "col-lg-3 control-label">Price:</label>
						<div class="col-lg-5">
							<input class="form-control" type="text" value="${myBook.price}" name="myBook.price" data-validation="number" data-validation-allowing="float,positive">
						</div>
					</div>	
				</fieldset>
				<div class="form-group">
					<div class="col-lg-9 col-lg-offset-3">
						<button type = "submit" class = "btn btn-primary"> Submit </button>									
					</div>
				</div>			
			</form>
        </div>
        
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
    
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
	<script>
		$.validate({
			form:'#bookform',
			moudles:'html5,date'
		});
	</script>
  </body>
</html>