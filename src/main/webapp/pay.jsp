<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>

<html><head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Language" content="zh-cn">
<title>HotelWorld充值跳转</title>
<script>document.domain="qcloud.com";</script>
<link href="css/wechat_pay.css" rel="stylesheet" media="screen">
    <link href="css/bootstrap.css" rel="stylesheet" >
</head>
<body>
<script>
var PTLOGIN_DOMAIN="http://ui.ptlogin2.qcloud.com",
    WIKI_DOMAIN="http://wiki.qcloud.com",
    SUPPORT_DOMAIN="http://exp.qq.com/ur/?urid=13383",
    BBS_DOMAIN="http://bbs.qcloud.com",
    OPEN_DOMAIN="http://open.qq.com",
    OP_OPEN_DOMAIN="http://op.open.qq.com",
    WIKI_OPEN_DOMAIN="http://wiki.open.qq.com",
    MANAGE_DOMAIN="http://manage.qcloud.com",
    MAIN_DOMAIN="http://www.qcloud.com",
    CAPI_DOC_DOMAIN="http://doc.qcloud.com",
    MONITOR_DOMAIN="https://cm.qcloud.com",
    COOKIE_DOMAIN=".qcloud.com",
    CSS_DOMAIN="//qzonestyle.gtimg.cn/open_proj/qcloud",
    CSS_DOMAIN_NEW="//qzonestyle.gtimg.cn/open_proj/proj_qcloud_v2",
    JS_DOMAIN='//qzonestyle.gtimg.cn',
    MOBILESPEEDUP_DOMAIN="https://mna.qcloud.com";
var JS_ONLINE_FLAG = ("1"==="1"),
    cur_uin=0,
    vcodeUrl="https://www.qcloud.com/captcha?";
</script>
<div class="body">
    <h1 class="mod-title">
        <span class="ico-wechat"></span><span class="text">微信支付</span>
    </h1>
    <div class="mod-ct">
        <div class="order">
        </div>

        <div class="input-group amount">
            <span class="input-group-addon">￥</span>
            <input id="amount" type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
            <span class="input-group-addon">.00</span>
        </div>
        <div class="qr-image" style="">
            <img style="width:230px;height:230px;" id="billImage" src="data:image/jpg;base64,iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAACsklEQVRIie2XsW3kMBBFR1DATGpAANtgxpbWDUhUA1RLzNgGATYgZQwIzX2u4LNxl3gYm1gY62dA3uH8+fOX6Pf8f2bmo2ivKhHfpk6WbzmeaPQmDUHvJeH9bUDk2OajZC68B5pDWg37LuyN9nZ0xFdZXr0YwNnMnJ0i6sOtSn2V7Myy4S/fi/8xxn17k79eX20Q4HZs2sroTJ3LeH7r/s/xHNgRfXCr0hMK1bccT6Z+sN5jfb9Z5pC9HM9RO5XmgMfXOdJctOvBabILqfE0mkvdQj47cBg5vDsfRxTKJd9yPETcN34bnRq9yhfXlxy/7yZfofUfYvRmdD0YE7AMMa2Qs0HrKskxWQx0hXyOiBFPQ0k9mJaPUoeQ96JvpY8w3h3YMEd9t3nSR2zyOeV4MtBOPnhksJKg6FuOCarh9BHQee3bVH3+SwmeFAQI+fCp+MCna64jxphLbvVBgMD4mUiOJ5vmyE2DVu/h3f8ObPIRm4V7m/fQ7OqWYyLMpT5JO3hnXCZ6rFeIDVYZRhxTBZxmrpMcDwUNry9Fq8UL5T7PFmKUGJ+mQchgj1fJ8Mz0ag5BWInA+IzUgYNmqMbAJGCfvEd2coxp3gBsc6lJEeZ76sHYHrhmiAgrEc2ntQPHutoF970VPu2C2brlGHrBMN22DozOY8Lq2oNxwXAIfapli228nBzPcfQWDpEGpg0GrD63lAy3+pxN6D8cYg89GCHOI6oobDYs6vGKj80IMdOK+gJKxIrGEuBTjhFVPMy7NO/EtSEK3XL8LjRfEdlnWVtmeYQsw3jYHiEi9naZFJJpmuQYefDgpZklHMI017w7cOvVk0xhMy2L9WFkDTjEXPhqU/43rUtxekHOzXpx68/1CTGqREBoqSfvjAT0ZB8ZfmdkfInBOsquBf9llePf8+/5A92Sn1mCTnLtAAAAAElFTkSuQmCC">
        </div>
        <!--detail-open 加上这个类是展示订单信息，不加不展示-->
        <jsp:useBean id="now" class="java.util.Date" />
        <div class="detail detail-open" id="orderDetail" style="">
            <dl class="detail-ct">
                <dt>商家</dt>
                <dd id="storeName">Hotel World</dd>
                <dt>商品名称</dt>
                <dd id="productName">${user.username}账户充值</dd>
                <dt>交易单号</dt>
                <dd id="billId">20170119010000041172975553227822</dd>
                <dt>创建时间</dt>
                <dd id="createTime"></dd>
            </dl>
            <input type="button" class="arrow btn-default" value="confirm" onclick="submit();"/>
        </div>
        <div class="tip">
            <span class="dec dec-left"></span>
            <span class="dec dec-right"></span>
            <div class="ico-scan"></div>
            <div class="tip-text">
                <p>请使用微信扫一扫</p>
                <p>扫描二维码完成支付</p>
            </div>
        </div>
     </div>

    <div class="foot">
        <div class="inner">
            <p>您若对上述交易有疑问</p>
            <p>请联系Hotel World企业QQ <a href="javascript:void(0);" class="link">800033878</a></p>
        </div>
    </div>

</div>
<div style="width:720px;height:380px;display:none;"><div id="video-dialog"></div><a href="javascript:void(0);" onclick="return false;" style="position:absolute;right:-25px;top:-20px;" id="close_video_btn" class="ico-video-close"></a></div>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script>
var submit=function () {
    var amount=$('#amount')[0].value;
    if (amount<=0){
        $('#amount')[0].value="";
        return;
    }
    window.location.href="/pay/confirm?amount="+amount;
}
</script>
</body></html>