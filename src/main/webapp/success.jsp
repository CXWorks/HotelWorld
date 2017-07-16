<%--
  Created by IntelliJ IDEA.
  User: cxworks
  Date: 17-3-12
  Time: 下午3:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>操作成功</title>
</head>
<body>
<h3>操作成功</h3>
<br/>
<span id="jumpTo">3</span>秒后自动跳转

</body>

<script type="text/javascript">
    function countDown(secs,surl){
        //alert(surl);
        var jumpTo = document.getElementById('jumpTo');
        jumpTo.innerHTML=secs;
        if(--secs>0){
            setTimeout("countDown("+secs+",'"+surl+"')",1000);
        }
        else
        {
            location.href=surl;
        }
    }
    countDown(3,'${url}');
</script>
</html>
