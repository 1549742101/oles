<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <base href="${pageContext.request.contextPath}/">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>模板-在线考试后台管理系统</title>

    <link href="js/bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="vendor/css/animate.css" rel="stylesheet">
    <link href="vendor/css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="vendor/css/plugins/dropzone/dropzone.css" rel="stylesheet">
    <link href="vendor/css/style.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">
    <%@include file="navigation.jsp"%>

    <div id="page-wrapper" class="gray-bg">
        <!-- header 顶部包装区域 -->
        <%@include file="header.jsp"%>
        <!-- 顶部导航 -->
        <div class="row wrapper border-bottom white-bg page-heading" style="text-align: center">
        </div>
        <!-- main 主体区域 -->
        <div class="wrapper wrapper-content animated fadeIn">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <form action="">
                    <div class="form-group">
                        <label>请输入考试编号：</label>
                        <br>
                        <input type="text" placeholder="考卷编号" class="form-control" id="examNo">
                        <br>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">选择
                        </button>
                        <button type="submit" class="btn btn-outline btn-warning">维护</button>
                        <button type="reset" class="btn btn-outline btn-default">重置</button>
                    </div>
                    </form>
                </div>
                <div class="col-lg-2"></div>
            </div>
        </div>
        <!-- footer 底部包装区域 -->
        <%@include file="footer.jsp"%>
        <!-- 选择模态框 -->
        <div class="modal inmodal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title">请选择考卷编号</h4>
                    </div>
                    <div class="modal-body">
                        <a onclick="document.getElementById('examNo').value=this.innerHTML;" data-dismiss="modal">Text001</a><br>
                        <a onclick="document.getElementById('examNo').value=this.innerHTML;" data-dismiss="modal">Text002</a><br>
                        <a onclick="document.getElementById('examNo').value=this.innerHTML;" data-dismiss="modal">Text003</a><br>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<!-- Mainly scripts -->
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script src="vendor/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="vendor/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="vendor/js/inspinia.js"></script>
<script src="vendor/js/plugins/pace/pace.min.js"></script>

<!-- DROPZONE -->
<script src="vendor/js/plugins/dropzone/dropzone.js"></script>


<script>
    $(document).ready(function () {

        Dropzone.options.myAwesomeDropzone = {

            autoProcessQueue: false,
            uploadMultiple: true,
            parallelUploads: 100,
            maxFiles: 100,

            // Dropzone settings
            init: function () {
                var myDropzone = this;

                this.element.querySelector("button[type=submit]").addEventListener("click", function (e) {
                    e.preventDefault();
                    e.stopPropagation();
                    myDropzone.processQueue();
                });
                this.on("sendingmultiple", function () {

                });
                this.on("successmultiple", function (files, response) {
                    console.log("successmultiple>>>>>" + response);
                });
                this.on("errormultiple", function (files, response) {
                    console.log(response);
                });
            }
        }

    });

    $(function () {
        $("#refresh").click(function () {
            window.location.reload();
        })
    })

    $(function () {
        $("#return").click(function () {
            window.location.replace("views/SerialNumber.jsp");;
        })
    })

    $("#examNo").val($(".choose").html());
</script>

</body>

</html>
