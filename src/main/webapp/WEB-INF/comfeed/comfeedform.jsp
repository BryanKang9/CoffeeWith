<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coffeewith</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://use.fontawesome.com/releases/v6.2.0/js/all.js"></script>
<link rel="stylesheet" href="../res/css/style.css" type="text/css">
<style type="text/css">

    .table{
        height: 700px;
        margin-bottom: 0px;
        table-layout: fixed;
    }

    .fddata {
        text-align: center;
        margin: auto;
    }

    .fddata .fdtitle {
        padding-top: 10px;
        padding-bottom: 10px;
    }

    .fddata .fdtitle a{
        padding-bottom: 10px;
        float: right;
        padding-right: 15px;
    }

    .table .photo {
        height: 100%;
        width: 70%;
        vertical-align: middle;
        text-align: center;
        padding: 0;
    }

    .table .profile {
        height: 5%;
        text-align: left;
    }

    .table .profile img{
        height: 40px;
        width: 40px;
        border-radius: 100%;
    }

    .table .fdcontent {
        height: 85%;
        vertical-align: top;
    }

    .table .inputtext {
        height: 100%;
        width: 100%;
        padding: 0;
        border: none;
        outline: none;
    }

    .table .fdcafe {
        height: 5%;
    }

    .table .fdtag {
        height: 5%;
    }

    #imgform{
        width: 100%;
        height: 100%;
    }

    #imgform .carousel-inner{
        width: 100%;
        height: 100%;
    }

    #imgform .carousel-item{
        height: 100%;
    }

    #imgform .carousel-item img{
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

<form action="insert" id="fdsubmit" method="post" enctype="multipart/form-data">
    <input type="hidden" name="ur_id" value="${sessionScope.login_id}">
    <div class="fddata">
        <div class="fdtitle">
            <b>새 피드 작성</b>
            <a type="submit" data-bs-dismiss="modal" onclick="document.getElementById('fdsubmit').submit();">공유하기</a>
        </div>

        <table class="table table-bordered" >
            <tr>
                <td rowspan="4" class="photo">
                    <a><i class='fas fa-photo-video' style='font-size:24px'></i>사진 선택</a>
                    <input class="selectphoto" type="file" multiple="multiple" style="display: none" name="upload">

                    <!-- Carousel -->
                    <div id="imgform" class="carousel slide" data-bs-interval="false" style="display: none">

                        <div class="carousel-inner" data-bs-interval="false"></div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#imgform" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#imgform" data-bs-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </button>
                    </div>
                </td>
                <td class="profile">
                    <img src="${root}/res/prfimg/${sessionScope.login_img}">
                    ${sessionScope.login_nick}
                </td>
            </tr>
            <tr>
                <td class="fdcontent">
                    <textarea class="inputtext" style="resize:none" required="required" name="fd_txt" placeholder="내용 입력"></textarea>
                </td>
            </tr>
            <tr>
                <td class="fdcafe">
                    <input onkeyup="filter()" type="text" class="inputtext" required="required" name="cf_id" placeholder="카페 추가">
                </td>
            </tr>
            <tr>
                <td class="fdtag">
                    <input onkeyup="filter()" type="text" class="inputtext" name="fg_nm" placeholder="태그 입력">
                </td>
            </tr>
        </table>
    </div>
</form>
</body>

<script>
    $(".photo a").click(function (){
        $(".photo .selectphoto").click();
    })

    $(".selectphoto").change(function (e){

        var files=e.target.files;
        var arr=Array.prototype.slice.call(files);

        for(var i=0;i<files.length;i++){
            if(!checkExtension(files[i].name,files[i].size)){
                return false;
            }
        }

        $(this).parent().find("a").empty();

        preview(arr)
    })

    function checkExtension(fileName,fileSize){
        var regex = new RegExp("(.*?)\.(jpg|png|jpeg)$");
        var maxSize = 20971520;  //20MB

        if(fileSize >= maxSize){
            alert('파일 사이즈 초과');
            $("input[type='file']").val("");  //파일 초기화
            return false;
        }

        if(!regex.test(fileName)){
            alert('업로드 불가능한 파일이 있습니다.');
            $("input[type='file']").val("");  //파일 초기화
            return false;
        }
        return true;
    }

    function preview(arr){
        $("#imgform").show();
        arr.forEach(function(f, ele){

            var str='';

            //이미지 파일 미리보기
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                str += '<div class="carousel-item'+(ele===0?" active":"")+'">';
                str += '<img src="'+e.target.result+'"></div>';
                $(str).appendTo(".carousel-inner");
            }
            reader.readAsDataURL(f);

        });
    }

    function filter(){
        console.log("1");
    }


</script>
</html>