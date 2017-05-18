<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
        <div class="page-header">
            <h3>编辑书籍</h3>
        </div>
        <div class="row">
            <div class="col-xs-4">
				
				 <form action="" method="post">
                    <input type="hidden" name="id" value="${book.id}">
                    <div class="form-group">
                        <label>书籍名称</label>
                        <input type="text" name="bookname" class="form-control" value="${book.bookname}">
                    </div>
                    <div class="form-group">
                        <label>书籍作者</label>
                        <input type="text" name="bookauthor" class="form-control" value="${book.bookauthor}">
                    </div>
                    <div class="form-group">
                        <label>书籍价格</label>
                        <input type="text" name="bookprice" class="form-control" value="${book.bookprice}">
                    </div>
                    <div class="form-group">
                        <label>书籍数量</label>
                        <input type="text" name="booknum" class="form-control" value="${book.booknum}">
                    </div>
                    <div class="form-group">
                        <label>分类</label>
                        <select class="form-control" name="typeid">
                            <c:forEach items="${types}" var="type">
                                <option value="${type.id}" ${book.typeid == type.id ? 'selected' : ''}>${type.booktype}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>出版社</label>
                        <select class="form-control" name="pubid">
                            <c:forEach items="${pubs}" var="pub">
                                <option value="${pub.id}" ${book.pubid == pub.id ? 'selected' : ''}>${pub.pubname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary">保存</button>
                    </div>
                </form>

            </div>
        </div>


    </div>


</body>
</html>