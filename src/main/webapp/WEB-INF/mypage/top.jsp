<%--
  Created by IntelliJ IDEA.
  User: ian
  Date: 2022-10-02
  Time: 오후 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Coffeewith</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.2.0/js/all.js"></script>
    <style>

        .top-container div {
            /*border: 1px solid gray;*/
        }

        .user-profil-box {
            height: 100px;
            display: grid;
            position: relative;
            grid-template-columns: 60px 1.5fr;
            gap: 0px 10px;
            align-items: center;
        }

        .user-profil-box h2 {
            margin-bottom: -0.5rem;
        }


        .img-area {
            width: 60px;
            height: 60px;
            display: block;
            position: relative;
        }

        .img-area > div {
            overflow: hidden;
            border-radius: 50%;
            box-shadow: 1px 1px 1px gray;
        }

        .img-area:after {
            content: "";
            position: absolute;
            right: 0;
            bottom: 0;
            width: 24px;
            height: 24px;
            background: url("/resources/images/pen.png") no-repeat;
        }

        .img-area img {
            width: 100%;
            height: 100%;
        }

        .box-type-01 {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            margin: 24px 0;
            border-radius: 8px;
            background: #6B4804;
        }

        .txt, .num {
            color: #f0f0f0;
        }


        .link-area {
            height: 60px;
            line-height: 60px;
            text-align: center;
        }

        div.txt:hover {
            font-size: 20px;
        }


    </style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<div class="top-container">
    <div class="user-profil-box">
        <%--이미지 클릭하면 회원정보 변경으로 이동(예정)--%>
        <a href="#" class="img-area">
            <div>
                <c:if test="${sessionScope.login_img != null}">
                    <img src="${root}/resources/prfimg/${sessionScope.login_img}"
                         onerror="this.src='${root}/resources/images/noprofile.jpg'">
                </c:if>
                <c:if test="${sessionScope.login_img == null}">
                    <img src="${root}/images/noprofile.jpg">
                </c:if>
            </div>
        </a>
        <div class=" txt-area">
            <h2 class="tit-dep2 nick">&nbsp;${sessionScope.login_nick} 님 환영합니다!</h2>
        </div>
    </div>
    <div class="box-type-01">
        <div class="link-area">
            <a href="${root}/mypage/bookmarks" class="inner">
                <div class="txt book-marks">
                    북마크
                    <span class="num">${sessionScope.cfLkCnt}</span>
                </div>
            </a>
        </div>
        <div class="link-area">
            <a href="${root}/mypage/review" class="inner">
                <div class="txt cf-tr">
                    작성한 리뷰
                    <span class="num">${sessionScope.cfCmtCnt}</span>
                </div>
            </a>
        </div>
        <div class="link-area">
            <a href="#" class="inner">
                <div class="txt join-tr">
                    참여중인 투어
                    <span class="num"></span>
                </div>
            </a>
        </div>
        <div class="link-area">
            <a href="#" class="inner">
                <div class="txt before-tr">
                    지난 투어내역
                    <span class="num"></span>
                </div>
            </a>
        </div>
    </div>
</div>
</body>
</html>
