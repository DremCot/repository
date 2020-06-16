<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>数据 - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">


    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/source/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->
    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                请假 <small>请假表单</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index.jsp"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a
                        href="${pageContext.request.contextPath}/users/getUsers">请假</a></li>
                <li class="active">请假表单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->


            <!-- 正文区域 -->
            <section class="content"> <!--产品信息-->
                <security:authorize access="hasAnyRole('ROLE_MANAGER1','ROLE_MANAGER2','ROLE_MANAGER3','ROLE_MANAGER4')">
                <div class="panel panel-default">
                    <div class="panel-heading">请假表单</div>
                    <c:set var="index" value="0" />
                    <c:forEach items="${info.list}" var="applicant">
                    <form action="${pageContext.request.contextPath}/user/manager"
                          method="post">
                    <c:set var="index" value="${index+1}"/>
                    <div class="row data-type">
                        <div class="col-md-2 title">申请列表</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control text-red" disabled=""
                                   placeholder="次数" value="第${index}个申请">
                        </div>
                        <div class="col-md-2 title">申请人</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="applicant" disabled=""
                                   placeholder="申请人" value="${applicant.applicant}">
                        </div>
                        <div class="col-md-2 title">请假类型</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="reason" disabled=""
                                   placeholder="请假理由" value="${applicant.type}">
                        </div>
                        <div class="col-md-2 title">请假理由</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="reason" disabled=""
                                   placeholder="请假理由" id="reason" value="${applicant.reason}">
                        </div>
                        <div class="col-md-2 title">请假开始时间</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" disabled=""
                                       id="datepicker-a3" name="leaveTime" value="${applicant.leaveTimeStr}">
                            </div>
                        </div>
                        <div class="col-md-2 title">请假结束时间</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" name="backTime" value="${applicant.backTimeStr}"disabled="">
                            </div>
                        </div>
                        <div class="col-md-2 title">意见</div>
                        <div class="col-md-4 data">
                            <select class="form-control select2" style="width: 100%"
                                    name="OPTIONS">
                                <option value="同意">同意</option>
                                <option value="驳回">驳回</option>
                            </select>
                        </div>
                        <div class="col-md-4 data">
                            <input type="hidden" value="${applicant.id}" name="id">
                            <input type="hidden" value="${applicant.status}" name="status">
                            <input type="hidden" value="${applicant.applicant}" name="applicant"/>
                            <input type="hidden" class="form-control" name="operater"
                                   placeholder="操作人" value="<security:authentication property="principal.username"/>"/>
                        </div>
                    </div>
                        <!--订单信息/--> <!--工具栏-->
                     </section>
                    <div class="box-tools text-center">
                        <button type="submit" class="btn bg-maroon">处理第${index}个申请</button>
                    </div>
                            </form>
                        </c:forEach>
                </div>
    </div>
    </security:authorize>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2014-2017 <a
                href="#">研究院研发部</a>.
        </strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>


<script
        src="${pageContext.request.contextPath}/source/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/source/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/source/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

<script>
    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }
    //通过Ajax异步请求获取用户名是否存在,若存在则阻止表单的提交以防误删
  /*  $(function () {
        document.getElementsByTagName("form")[0].onsubmit = function () {
            return regexUsername();
        }
        document.getElementById("username").onblur = regexUsername;

        function regexUsername() {
            var flag = false;
            $.get({
                url: "${pageContext.request.contextPath}/users/regex",
                data: {username: $("#username").val()},
                dataType: "json",
                error: function () {
                    alert("error");
                },
                success: function (data) {
                    var username = $("#username");
                    if (data.userExist) {
                        username.css("border", "red 1px solid");
                        flag = false;
                    } else {
                        username.css("border", "green 1px solid");
                        flag = true;
                    }
                },
            });
            return flag;
        }
    });*/
</script>


</body>
</html>
</html>