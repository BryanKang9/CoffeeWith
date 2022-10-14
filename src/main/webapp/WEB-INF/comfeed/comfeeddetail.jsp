<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Coffeewith</title>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.2.0/js/all.js"></script>
    <link rel="stylesheet" href="../res/css/style.css" type="text/css">
    <style type="text/css">

        .fddata a{
            text-decoration: none;
            color: black;
            font-size: 13px;
        }

        .fddata {
            width: 100%;
            text-align: center;
            margin: auto;
        }

        .table {
            height: 750px;
            margin-bottom: 0;
            border-collapse: collapse;
        }

        .table .photo {
            border: hidden;
            height: 100%;
            width: 70%;
            vertical-align: middle;
            text-align: center;
            padding: 0;
        }

        .table .profile {
            height: 5%;
            text-align: left;
            padding-bottom: 0;
            border-bottom: hidden;
        }

        .table .fdcafe {
            text-align: left;
            height: 3%;
            padding: 0;
            padding-left: 10px;
        }

        .table .profile img {
            height: 40px;
            width: 40px;
            border-radius: 100%;
        }

        .table .fdcontent {
            height: 45%;
            vertical-align: top;
            text-align: left;
        }

        .table .fdtag {
            border: hidden;
            height: 3%;
        }

        .table .fdmpl{
            height: 2%;
            padding: 0;
            text-align: left;
            padding-left: 10px;
        }

        .table .fdcmt{
            height: 42%;
        }

        #imgdetail {
            width: 100%;
            height: 100%;
        }

        #imgdetail .carousel-inner {
            width: 100%;
            height: 100%;
        }

        #imgdetail .carousel-item {
            height: 100%;
        }

        #imgdetail .carousel-item img {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
        }

    </style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<div class="fddata">
    <table class="table">
        <tr>
            <td rowspan="6" class="photo">
                <!-- Carousel -->
                <div id="imgdetail" class="carousel slide" data-bs-interval="false">
                    <div class="carousel-inner" data-bs-interval="false">
                        <c:forEach var="photo" varStatus="i" items="${comfeeddto.fd_photo.split(',')}">
                            <c:if test="${i.count==1}">
                                <div class="carousel-item active">
                            </c:if>
                            <c:if test="${i.count!=1}">
                                <div class="carousel-item">
                            </c:if>
                            <img src="${root}/images/upload/${photo}">
                            </div>
                            <c:if test="${i.count==2}">
                                <button class="carousel-control-prev" type="button" data-bs-target="#imgdetail"
                                        data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#imgdetail"
                                        data-bs-slide="next">
                                    <span class="carousel-control-next-icon"></span>
                                </button>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
            </td>
            <td class="profile">
                <img src="${root}/res/prfimg/${userdto.ur_img}">
                ${userdto.ur_nk}
            </td>
        </tr>
        <tr>
            <td class="fdcafe">
                <a href="${root}/cafe/detail?cf_id=${cafedto.cf_id}">${cafedto.cf_nm}</a>
            </td>
        </tr>
        <tr>
            <td class="fdcontent">
                ${comfeeddto.fd_txt}
            </td>
        </tr>
        <tr>
            <td class="fdtag">
                ${comfeeddto.fg_nm}
            </td>
        </tr>
        <tr>
        <c:if test="${sessionScope.login_id==comfeeddto.ur_id}">
            <td class="fdmpl">
                <a id="updatefd" onclick="updatemodal()">수정하기</a>&nbsp;&nbsp;&nbsp;
                <a id="deletefd" onclick="location.href='delete?fd_id=${comfeeddto.fd_id}'">삭제하기</a>
            </td>
        </c:if>
         </tr>
        <tr>
            <td class="fdcmt">
            </td>
        </tr>
    </table>
</div>

<script>
    function updatemodal(){
        var fd_id = ${comfeeddto.fd_id}
        $("#modaltmp .modal-content").load("update?fd_id=" + fd_id);
    }

</script>
</body>
</html>