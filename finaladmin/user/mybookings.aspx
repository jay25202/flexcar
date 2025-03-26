<%@ Page Title="" Language="C#" MasterPageFile="~/user/HomeMasterPage1.master" AutoEventWireup="true" CodeFile="mybookings.aspx.cs" Inherits="user_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    


<meta content='Zoomcar' name='description'>
<meta content='zoomcar' name='keywords'>
<meta content='noindex' name='robots'>
<meta content='© Copyright 2019 Zoomcar India Private Ltd. All rights reserved.' name='copyright'>
<meta content='Zoomcar India Private Ltd.' name='author'>
<meta content='English' name='language'>
<meta charset='utf-8'>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"67f497f988","applicationID":"211875786","transactionName":"c1sMTEVXXQlTQEsRQlVGERdHSl4DX14B","queueTime":0,"applicationTime":331,"agent":""}</script>
<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1118.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>
<meta content='fDdJX7us6u1qQf0s4gOC3_AINk3iIGG6S7CsQbRPhJw, TIw8Efq2-Y8YXX1bhIp-3arop4g5GnSvBkcFf9jNT28' name='google-site-verification'>
<meta content='width=device-width, initial-scale=1' name='viewport'>
<link href="//www.zoomcar.com//assets/savedcards.acd426feb7d4984bcfb1eb5132413f6d.css" rel="stylesheet" type="text/css"></link>
<link href="//www.zoomcar.com//assets/profile_verification.9a12fe3ff414558da22ebefa4f8042b0.css" rel="stylesheet" type="text/css"></link>

<link href="//css.zoomcar.com/assets/application-e4018888a5b97ccdcdbfa7eeece6d456.css" media="all" rel="stylesheet" />
<link href='//css.zoomcar.com/assets/vendor.css' rel='stylesheet'>
<link href='//assets.zoomcar.com/assets/favicon-94c70086866938b66cbd6706cfb6e048.png' rel='shortcut icon' type='image/png'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
<script data-apikey='df4ee4753252ce7d34ad29748284d673' src='//d2wy8f7a9ursnm.cloudfront.net/bugsnag-2.min.js'></script>
<script>
  var _zaq = _zaq || [];
  function pushEvent(category, action, label) {
    try{
      if(label) {
          _zaq.push([category, action, label]);
      } else {
          _zaq.push([category, action]);
      }
    }
    catch(err){
    }
  }
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-38347989-1']);
  _gaq.push(['_setDomainName', 'zoomcar.com']);
  _gaq.push(['_setAllowLinker', true]);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = 'https://ssl.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<script>
  var userSelectedCity = "Surat";
  var cityLinkName = "surat";
  var enable_full_hours = "true";
</script>
<script>
  var userEmail = "jaypatel1234539@gmail.com";
  var userNumber = '7226924298';
</script>
<script>
  window.globals = {
    min_age: 18,
    hd_working_hours: 3,
    map_location_pin: "//assets.zoomcar.com/assets/new-maplocationpin-76c90c403dcb81132485e9667859fc8a.png",
    analytics_url: "track.zoomcar.com",
    flexi_hash: {},
    apiHostName: '//api.zoomcar.com'
  };
</script>
<!-- Google Tag Manager -->
<script>
  var dataLayer = [];
  var car_id = 1;
  (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-NQRM5Q');
</script>
<!-- End Google Tag Manager -->
<script>
  // segment.io integration snippet
  !function(){var analytics=window.analytics=window.analytics||[];if(!analytics.initialize)if(analytics.invoked)window.console&&console.error&&console.error("Segment snippet included twice.");else{analytics.invoked=!0;analytics.methods=["trackSubmit","trackClick","trackLink","trackForm","pageview","identify","reset","group","track","ready","alias","page","once","off","on"];analytics.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);e.unshift(t);analytics.push(e);return analytics}};for(var t=0;t<analytics.methods.length;t++){var e=analytics.methods[t];analytics[e]=analytics.factory(e)}analytics.load=function(t){var e=document.createElement("script");e.type="text/javascript";e.async=!0;e.src="https://cdn.segment.com/analytics.js/v1/"+t+"/analytics.min.js";var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(e,n)};analytics.SNIPPET_VERSION="3.1.0";
    analytics.load("KuhTnkyjhSzI0rfKtviDuQ1o9RRQ5iGW");
    function CheckCookieAndSegmentHeader(){
      if((typeof CookieModule == 'function') && (typeof Segment == 'object')){
        var cookieObject = new CookieModule;
        Segment.trackPageLoad(cookieObject);
      }
      else{
        setTimeout(CheckCookieAndSegmentHeader,1000);
      }
    }
    CheckCookieAndSegmentHeader();
    }}();
</script>
<!-- Start Visual Website Optimizer Asynchronous Code -->
<script>
  var _vwo_code=(function(){
  var account_id=218859,
  settings_tolerance=2000,
  library_tolerance=2500,
  use_existing_jquery=false,
  // DO NOT EDIT BELOW THIS LINE
  f=false,d=document;return{use_existing_jquery:function(){return use_existing_jquery;},library_tolerance:function(){return library_tolerance;},finish:function(){if(!f){f=true;var a=d.getElementById('_vis_opt_path_hides');if(a)a.parentNode.removeChild(a);}},finished:function(){return f;},load:function(a){var b=d.createElement('script');b.src=a;b.type='text/javascript';b.innerText;b.onerror=function(){_vwo_code.finish();};d.getElementsByTagName('head')[0].appendChild(b);},init:function(){settings_timer=setTimeout('_vwo_code.finish()',settings_tolerance);var a=d.createElement('style'),b='body{opacity:0 !important;filter:alpha(opacity=0) !important;background:none !important;}',h=d.getElementsByTagName('head')[0];a.setAttribute('id','_vis_opt_path_hides');a.setAttribute('type','text/css');if(a.styleSheet)a.styleSheet.cssText=b;else a.appendChild(d.createTextNode(b));h.appendChild(a);this.load('//dev.visualwebsiteoptimizer.com/j.php?a='+account_id+'&u='+encodeURIComponent(d.URL)+'&r='+Math.random());return settings_timer;}};}());_vwo_settings_timer=_vwo_code.init();
</script>
<!-- End Visual Website Optimizer Asynchronous Code -->


<style>
  .footer{
  	bottom: 0px;
  }
</style>
<form runat="server" class=''>
    <div class="table-responsive">
</div>
<style>
  .widgetSearch {
    box-shadow: 0px 0px 2px 2px #ccc;
    padding: 12px 40px;
    height: 48px;
    display: block;
  }
  #floatingHead {
    background: #e8e8e8;
    height: 60px;
    padding: 6px 0 !important;
    box-shadow: 0px 2px 2px 0px #ccc;
  }
</style>

<noscript>
<iframe height='0' src='//www.googletagmanager.com/ns.html?id=GTM-NQRM5Q' style='display:none;visibility:hidden' width='0'></iframe>
</noscript>

    <div class='content'>
        <div class='wrapper bg-f'>
            <script>
                var userReferralCode = "jayrpaxtflz";
                var facebookAppID = "194504380711275";
            </script>
            <div class='profile_content_wrapper'>
                <div class='col-md-3 p-0'>
                    <div class='profile_Sidebar'>
                        <div class='profile_info_sec border-b-c'>
                            <div class='profile_userinfo t-c p-t20'>
                                <div class='profile_usericon'></div>
                                <div class='profile_username size-14 f-b m-b5' id='pro_name'></div>
                                <div class='profile_usermobile size-11 m-b5' id='pro_mobile'></div>
                                <div class='profile_usermail size-11 m-b5' id='pro_email'></div>
                                <div class='ajax_spinner p-20'>
                                    <i class='fa fa-spinner fa-spin'></i>
                                </div>
                                <hr class='m-r25 m-l25'>
                            </div>
                            <ul class='p-l10 profile_tabs p-b15 p-t15 m-0'>
                                <li class='p-b10 user_status hide'>
                                    <span class='tab_icons fa fa-check-circle-o fl' id='licenceStatus'></span>
                                    <span>Driving Licence</span>
                                </li>
                                <li class='p-b10 profile_status hide'>
                                    <span class='tab_icons fa fl' id='profileStatus'></span>
                                    <span>Profile Document</span>
                                </li>
                                <li class='p-b10'>
                                    <span class='tab_icons fa fa-check-circle-o fl' id='numberStatus'></span>
                                    <%--<span>Mobile Number</span>--%>
                                    <asp:Label ID="lblmobileno" runat="server" Text="mobileno"></asp:Label>
                                </li>
                                <%--<li class='paytm-wallet'>
<span class='fa fa-times-circle-o fl red'></span>
<span>
Paytm Wallet
</span>
</li>--%>
                            </ul>
                        </div>
          
                        <div class='profile_nav_tabs bg-f border-t-c' id='profile_nav_tabs'>
                            <ul class='m-0 tabs-left'>
                                <li>
                                    <span class='active-dot fa fa-circle'></span>
                                    <a data-toggle='tab' href='mybookings.aspx' id='bookings-tab'>My Bookings</a>
                                </li>
                          
                                <li>
                                    <span class='active-dot fa fa-circle'></span>
                                    <a data-toggle='tab' href='userprofile.aspx' id='accounts-tab'>Account</a>
                                </li>
                           
                            </ul>
                        </div>
                    </div>
                    
                    <div class='hide' id='accNumberBlock'>
                        <div class='account p-r15 fc' style='width: 280px; margin: auto;'>
                            <div class='radio inline-block'>
                                <label>
                                    <input checked='' class='activeAccount' name='accountNumbers' type='radio'>
                                        <span class='size-16 accountNumber p-l10 grey block p-t4' style='letter-spacing: 1.5px;'></span>
                                    </input>
                                </label>
                            </div>
                            <span class='red p-l15 size-14 accDelete p-t11 fr'>Delete
                            </span>
                        </div>
                    </div>
                    <script>
                        function delinkSetup() {
                            if (window.jQuery) {
                                // phonepe changes
                                if (window.navigator.userAgent.includes('phonepe-webview')) {
                                    $(".paytm-wallet").hide();
                                    $(".accountTitleWord1").hide();
                                }

                                $('#ex-wallet').on('hide.bs.modal', function () {
                                    Segment.trackEvent('Link_Clicked', {
                                        event_screen: 'Paytm_My_Account',
                                        id: 'paytm_delink_cancel',
                                        city: new CookieModule().getCookie('city'),
                                        current_url: window.location.href,
                                    });
                                });
                            } else {
                                window.setTimeout(delinkSetup, 1000);
                            }
                        }
                        delinkSetup();
                        function delink_user() {
                            Segment.trackEvent('Link_Clicked', {
                                event_screen: 'Paytm_My_Account',
                                id: 'paytm_delink',
                                city: new CookieModule().getCookie('city'),
                                current_url: window.location.href,
                            });
                            $('#paytmButtons').addClass('hide')
                            $('#delinkPaytmMessage').addClass('hide')
                            $('#paytmLoader').removeClass('hide')
                            $.ajax({
                                url: '/paytm/users/delink',
                                method: 'DELETE',
                            })
                                .done(function (response) {
                                    $('#paytmLoader').addClass('hide')
                                    $('#delinkPaytmMessage').removeClass('hide')
                                    if (response.status == 1) {
                                        Segment.trackEvent('Link_Clicked', {
                                            event_screen: 'Paytm_My_Account',
                                            id: 'paytm_delink_success',
                                            city: new CookieModule().getCookie('city'),
                                            current_url: window.location.href,
                                        });
                                        $('#delinkPaytmMessage').text('Your wallet has been delinked successfully!')
                                        $('#delinkPaytmMessage').removeClass('red')
                                        window.location.reload()
                                    }
                                    else {
                                        Segment.trackEvent('Message', {
                                            event_screen: 'Paytm_My_Account',
                                            id: 'paytm_delink_fail',
                                            msg: response.error_title,
                                            city: new CookieModule().getCookie('city'),
                                            current_url: window.location.href,
                                        });
                                        $('#delinkPaytmMessage').text(response.error_title || 'Something went wrong. Please try again.')
                                        $('#delinkPaytmMessage').addClass('red')
                                        $('#paytmButtons').removeClass('hide')
                                    }
                                })
                                .fail(function () {
                                    {
                                        Segment.trackEvent('Message', {
                                            event_screen: 'Paytm_My_Account',
                                            id: 'paytm_delink_fail',
                                            msg: "There was an error delinking your wallet",
                                            city: new CookieModule().getCookie('city'),
                                            current_url: window.location.href,
                                        });
                                        $('#delinkPaytmMessage').text("There was an error delinking your wallet")
                                        $('#delinkPaytmMessage').addClass('red')
                                    }
                                })
                                .always(function () {
                                    $('#delinkPaytmMessage').removeClass('hide')
                                })
                        }
                    </script>

                </div>
                <div class='col-md-9 p-0'>
                    <div class='profile_right_content fr bg-f4'>
                        <div class="account_Section">
                            <div class="p-b15 p-t15 m-b10 border-b-c t-c bg-f size-24">
                                MY
                                <b>Bookings
                                </b>
                                <br />
                                <br />
                                <div class='mybookings_nav table-responsive'>
                                            
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="booking_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" InsertVisible="False" SortExpression="booking_id"></asp:BoundField>
                                            <asp:BoundField DataField="booking_date" HeaderText="booking_date" SortExpression="booking_date"></asp:BoundField>
                                            <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="car_id" HeaderText="car_id" SortExpression="car_id" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="driver_id" HeaderText="driver_id" SortExpression="driver_id" Visible="False"></asp:BoundField>
                                            <%--<asp:BoundField DataField="total_fare" HeaderText="total_fare" SortExpression="total_fare"></asp:BoundField>--%>
                                            <asp:BoundField DataField="booking_days" HeaderText="booking_days" SortExpression="booking_days" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="pick_time" HeaderText="pick_time" SortExpression="pick_time" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="ride_starting_date" HeaderText="ride_starting_date" SortExpression="ride_starting_date"></asp:BoundField>
                                            <asp:BoundField DataField="ride_ending_date" HeaderText="ride_ending_date" SortExpression="ride_ending_date"></asp:BoundField>
                                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" Visible="False"></asp:BoundField>
                                            <asp:HyperLinkField DataNavigateUrlFields="booking_id,customer_id,car_id,driver_id" DataNavigateUrlFormatString="booking_details.aspx?bid={0}&cid={1}&car_id={2}&did={3}" Text="More Detail"></asp:HyperLinkField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tbl_booking] WHERE ([customer_id] = @customer_id)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="uid" Name="customer_id" Type="Int32"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>








                            </div>
                            
                            <%--<div class="accountContent bg-f m-l10 m-r10">
                                <form data-segment-id="AccountsForm" id="accounts-form">
                                    
                                </form>
                                <div class="hide" id="otpModalContent">
                                    <div id="referForm">
                                        <div class="modal-loader" id="modal-loader-wrapper"></div>
                                        <div class="t-c" id="referbox">
                                            <div class="red otpContentText fix_error_msg_otp">
                                            </div>
                                            <div class="col-md-12 size-13 otp_text">
                                                <div class="t-c otpContentText">
                                                    A code has been sent to
                                                    <div id="unverifiedNumber"></div>
                                                    Please enter it in the space below.
                                                </div>
                                            </div>
                                            <br>
                                            <div class="col-md-12">
                                                <form class="form-horizontal" data-segment-id="ReferForm" id="referForm">
                                                    <div class="form-group otp_input_box">
                                                        <div class="col-md-12">
                                                            <input class="validate-presence form-control" id="otpCode" name="otpCode" placeholder="Enter Code" type="number">
                                                            <span class="otp_input_text">
                                                                <a class="dark_grey_important" href="javascript:void(0)" id="resendProfileOtp">Resend?
                                                                </a>
                                                            </span>
                                                            <div class="error t-l" id="LoginEmailError"></div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="form-group">
                                                        <div class="col-md-offset-4 col-md-4 t-c">
                                                            <div id="LoginSubmit">
                                                                <input class="card_btn green_card_btn citrus_submit" id="profileOtpSubmit" type="button" value="Submit">
                                                            </div>
                                                            <div class="p-5 hide" id="LoginWait">
                                                                <div class="wait"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <script>
                                    window.user_settings_modal = false
                                </script>

                            </div>--%>
                            
                        </div>
                        <div class='tab-content booking_tab_content'>
                            <div class='tab-pane' id='bookings'>
                                <div class='bookings_Section'>
                                    <div class='p-b15 p-t15 border-b-c t-c bg-f size-24'>
                                        MY
                        <b>BOOKINGS
                        </b>
                                    </div>
                                </div>
                                <div class='mybooking_content bg-f'>
                                    <div class='my_bookings_tabs_content'>
                                        
                                        <div class='tab-content'>
                                            <div class='tab-pane active' id='live_upcomingBookings' role='tabpanel'>
                                                <div id='liveBookings'></div>
                                                <div id='futureBookings'></div>
                                                <div class='noBookings t-c fc p-t30'></div>
                                            </div>
                                            <div class='tab-pane' id='completedBookingsContainer' role='tabpanel'>
                                                <div id='completedBookings'>
                                                    <div class='noBookings t-c fc p-t30'></div>
                                                </div>
                                                <div class='m-t10 m-b10 f-b size-14 pointer view-more' data-page='1' id='viewMoreBookings' style='margin: 0 auto; display: block; text-align: center;'>
                                                    View More
                                                </div>
                                            </div>
                                            <div class='tab-pane' id='cancelledBookings' role='tabpanel'>
                                                <div class='noBookings t-c fc p-t30'></div>
                                            </div>
                                            <div class='tab-pane' id='unfinishedBookings' role='tabpanel'>
                                                <div class='noBookings t-c fc p-t30'></div>
                                            </div>
                                        </div>
                                    </div>
                                    <script id='bookingsTemplate' type='text/template'>
                                        <div>
                                            <form action='' class='mybookings-form' method='get'>
                                                <div class='booking_block'>
                                                    <div class='booking_car fl'>
                                                        <div class='booking_car_img lazy'></div>
                                                    </div>
                                                    <div class='booking_id fl'>
                                                        <h4 class='size-16 booking_id_text m-b2'>
                                                            <a href=''></a>
                                                        </h4>
                                                        <span class='size-12 booking_id_car'></span>
                                                    </div>
                                                    <div class='booking_start_drop fl'>
                                                        <div class='booking_start_date fl'>
                                                            <p class='size-14 m-0 f-op-w600 start_time_txt'></p>
                                                            <span class='grey start_date_txt'></span>
                                                        </div>
                                                        <div class='booking_to fl'></div>
                                                        <div class='booking_drop_date fl'>
                                                            <p class='size-14 m-0 f-op-w600 end_time_txt'></p>
                                                            <span class='grey end_date_txt'></span>
                                                        </div>
                                                    </div>
                                                    <!-- ------------------- One way booking Info ----------------- -->
                                                    <div class='booking_start_drop_one_way fr'>
                                                        <div class='booking_start_date fl'>
                                                            <p class='size-14 m-0 f-op-w600 start_city_one_way'></p>
                                                            <p class='size-12 m-0 f-op-w500 start_location_one_way'></p>
                                                            <div class='one_way_date_time'>
                                                                <p class='size-11 m-0 grey start_date_txt'></p>
                                                                <span>,</span>
                                                                <span class='grey start_time_txt'></span>
                                                            </div>
                                                        </div>
                                                        <div class='booking_to fl'></div>
                                                        <div class='booking_drop_date fr'>
                                                            <p class='size-14 m-0 f-op-w600 destination_city_one_way'></p>
                                                            <p class='size-12 m-0 f-op-w500 destination_loc_one_way'></p>
                                                            <div class='one_way_date_time'>
                                                                <span class='size-11 m-0 grey destination_date_txt'></span>
                                                                <span>,</span>
                                                                <span class='grey destination_time_txt'></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class='booking_loc fl size-12 booking_loc_text'></div>
                                                    <div class='booking_status fc'>
                                                        <div class='booking_error_status fl'>
                                                            <span class='size-12 booking_amt_text block m-t10 red f-b'></span>
                                                            <span class='size-12 booking_status_text block m-t10 f-b'></span>
                                                        </div>
                                                        <div class='booking_pay_now fr'>
                                                            <input id='checkoutDeposit' name='checkoutDeposit' type='hidden' value='1'>
                                                            <input class='btn_booking_pay_nw size-12 paynow m-auto' type='submit' value='PAY NOW'>
                                                        </div>
                                                        <div class='booking_one_way_distance grey'>
                                                            <span class='booking_one_way_info'></span>
                                                        </div>
                                                        <div class='booking_manage fr m-t10 m-r10'>
                                                            <div class='glyphicon glyphicon-lock m-r10'></div>
                                                            <a href=''>Manage Booking</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </script>


                                </div>
                            </div>
                            <div class='tab-pane' id='savedcards'>
                                <div class='savedcards_Section'>
                                    <div class='p-b15 p-t15 border-b-c t-c bg-f size-24'>
                                        SAVED
                        <b>CARDS
                        </b>
                                    </div>
                                </div>
                                <div class='savedcards_content bg-f'>
                                    <div id='saved-cards'></div>

                                </div>
                            </div>
                            <div class='tab-pane' id='accounts'>
                                <div class='account_Section'>
                                    <div class='p-b15 p-t15 m-b10 border-b-c t-c bg-f size-24'>
                                        MY
                        <b>Bookings
                        </b>
                                    </div>
                                    <div class="panel panel-default account-settings">
                                       
                                    </div>
                                </div>
                            </div>
                            <div class='tab-pane' id='licence'>
                                <div class='red'>Page Does Not Exist</div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <script>
                var accounts_resp
                    , bookings_resp;
                function checkJquery_profile() {
                    if (window.jQuery) {
                        profile_sidebar();
                        $(function () {
                            $('#withdraw').tooltip()
                        });
                        (function () {
                            $('#profile_nav_tabs a[href="#accounts"]').on('shown.bs.tab', function (event) {
                                if (typeof accounts_resp === "undefined") {
                                    myAccounts();
                                }
                            });

                            $('#profile_nav_tabs a[href="#bookings"]').on('shown.bs.tab', function (event) {
                                if (typeof bookings_resp === "undefined") {
                                    mybookings(0);
                                }
                            });

                            // pick up the hash in the URL and open the corresponding tab, is hash is present
                            var hash = window.location.hash;
                            if (hash) {
                                $('#profile_nav_tabs ' + 'a[href="' + hash + '"]').tab('show');
                            }
                            else {
                                $('#profile_nav_tabs a[href="#bookings"]').tab('show');
                            }

                            $('#profile_nav_tabs a').on('shown.bs.tab', function (event) {
                                window.location.hash = event.target.hash;
                                if (isMobile()) {
                                    $('body').animate({
                                        scrollTop: $(".profile_right_content").offset().top - 80
                                    }, '500', 'swing');
                                } else {
                                    $('body').animate({ scrollTop: 0 }, '500', 'swing');
                                }

                            });
                        })();

                        // bind the change of country in accounts settings
                        $('.bind-country').on("change", function () {
                            if ($(this).val() == 'IN') {
                                $('.bind-to-country').show();
                            } else {
                                $('.bind-to-country').hide();
                            }
                        });

                        $('#viewMoreBookings').on('click', function () {
                            if (typeof page !== 'undefined') {
                                page = page + 1;
                            }
                            else {
                                page = parseInt($(this).attr('data-page'));
                            }
                            mybookings(page);
                        })

                    } else {
                        window.setTimeout(checkJquery_profile, 1000);
                    }
                }
                checkJquery_profile();

                function checkJqueryWithdrawal() {
                    if (window.jQuery) {
                        var accsCount = 0;
                        $('#cw_ac, #cw_conf_acc').on("paste", function (e) {
                            e.preventDefault();
                        });
                        $('#withdraw').on('click', function () {
                            accsCount = 0;
                            var placeHolder = $('<div>');
                            ajaxCall('GET', '/extwallets/saved_account_details')
                                .done(function (accounts_list) {
                                    if (accounts_list.status && accounts_list.acc_details.length !== 0) {
                                        $('#accountInfo').addClass('hide');
                                        $('#enterOtp').addClass('hide');
                                        $('#accountList').removeClass('hide');
                                        $('.accountTitle').css('visibility', 'visible');
                                        var accsList = $(document.createElement('div'));
                                        var single_acc = $('#accNumberBlock');

                                        var acc_details = accounts_list.acc_details;
                                        for (var i = 0; i < Math.min(acc_details.length, 5); i++) {
                                            var accNumber = acc_details[i][1];
                                            var ifsc = acc_details[i][2];
                                            var owner = acc_details[i][0];
                                            accNumberDisplay = Array(accNumber.length - 3).join("X") + accNumber.substring(accNumber.length - 4);
                                            $(single_acc).find('span.accountNumber').html(accNumberDisplay);
                                            $(single_acc).find('span.accountNumber').attr('data-owner', owner);
                                            $(single_acc).find('span.accountNumber').attr('data-ifsc', ifsc);
                                            $(single_acc).find('span.accountNumber').attr('data-accnumber', accNumber);
                                            $(single_acc).find('span.accDelete').attr('data-ifsc', ifsc);
                                            $(single_acc).find('span.accDelete').attr('data-accnumber', accNumber);
                                            placeHolder[0].innerHTML += single_acc.html();
                                        }
                                        $('#dynAccountList').html(placeHolder);
                                    }
                                    else if (accounts_list.status && accounts_list.acc_details.length === 0) {
                                        $('#accountList').addClass('hide');
                                        $('#enterOtp').addClass('hide');
                                        $('#accountInfo').removeClass('hide');
                                        $('.accountTitle').css('visibility', 'visible');
                                    }
                                });
                        });

                        $('#addAccount').on('click', function () {
                            if (!($('#dynAccountList .account').length === 5)) {
                                $('#accountList').addClass('hide');
                                $('#enterOtp').addClass('hide');
                                $('#accountInfo').removeClass('hide');
                            }
                            else {
                                alert("Can not store more accounts, please delete a stored account");
                            }
                        });

                        $('#otpSubmit').on('click', function () {
                            var temp = 0;
                            $("#exWalletOtp").validator().on('submit', function (e) {
                                if (e.isDefaultPrevented()) {
                                    $('.with-errors').each(function () {
                                    });
                                }
                                else {
                                    if (!temp) {
                                        temp = 1;
                                        $('#otpSubmit').toggleClass('progress_meter');
                                        var data_obj = {};
                                        data_obj.otp = $('#otpInput').val();
                                        ajaxCall('POST', '/extwallets/confirm_withdraw_otp', data_obj)
                                            .done(function (response) {
                                                $('#otpSubmit').toggleClass('progress_meter');
                                                if (response.status === "1") {
                                                    alert(response.message);
                                                    $('#ex-wallet').modal('hide');
                                                    window.location.reload();
                                                }
                                                else {
                                                    alert(response.message);
                                                    $('#otpInput').val("");
                                                }
                                            });
                                    }
                                }
                            });
                        });

                        $('#resend').on('click', function () {
                            $('#resend').css("color", "black");
                            $('#resend').css('cursor', 'default');
                            ajaxCall('GET', '/extwallets/resend_withdraw_otp')
                                .done(function (response) {
                                    $('#resend').css("color", "#00AEEF");
                                    $('#resend').css('cursor', 'pointer');
                                    $('#otpInput').val("");
                                    if (response.status) {
                                        alert(response.message);
                                    }
                                    else {
                                        alert(response.message);
                                    }
                                });
                        });
                        $('#withdrawSubmit').on('click', function () {
                            var temp = 0;
                            $("#exWalletInfo").validator().on('submit', function (e) {
                                if (e.isDefaultPrevented()) {
                                    $('.with-errors').each(function () {
                                    });
                                }
                                else {
                                    if (!temp) {
                                        temp = 1;
                                        $('#withdrawSubmit').toggleClass('progress_meter');
                                        var data_obj = {};
                                        data_obj.owner = $('#cw_name').val();
                                        data_obj.account = $('#cw_ac').val();
                                        data_obj.ifsc = $('#cw_ifsc').val();
                                        data_obj.amount = $('#cw_amount').val();
                                        data_obj.save_details = $("#saveAccount").is(':checked');
                                        ajaxCall('POST', '/extwallets/withdraw_direct', data_obj)
                                            .done(function (response) {
                                                $('#withdrawSubmit').toggleClass('progress_meter');
                                                if (response.status) {
                                                    $('#accountInfo').addClass('hide');
                                                    $('#accountList').addClass('hide');
                                                    $('#enterOtp').removeClass('hide');
                                                    $('#otpInput').val("");
                                                    $('.accountTitle').css('visibility', 'hidden');
                                                }
                                            });
                                    }
                                }
                            });
                        });
                        $('#withdrawListSubmit').on('click', function () {
                            var temp = 0;
                            $("#exWalletList").validator().on('submit', function (e) {
                                if (e.isDefaultPrevented()) {
                                    $('.with-errors').each(function () {
                                    });
                                }
                                else {
                                    if (!temp) {
                                        temp = 1;
                                        $('#withdrawListSubmit').toggleClass('progress_meter');
                                        var selected = $("input[type='radio'][name='accountNumbers']:checked");
                                        var data_obj = {};
                                        data_obj.owner = selected.siblings('.accountNumber').attr('data-owner');
                                        data_obj.account = selected.siblings('.accountNumber').attr('data-accnumber');
                                        data_obj.ifsc = selected.siblings('.accountNumber').attr('data-ifsc');
                                        data_obj.amount = $('#cw_amount2').val();
                                        data_obj.save_details = false;
                                        ajaxCall('POST', '/extwallets/withdraw_direct', data_obj)
                                            .done(function (response) {
                                                $('#withdrawListSubmit').toggleClass('progress_meter');
                                                if (response.status) {
                                                    $('#accountList').addClass('hide');
                                                    $('#accountInfo').addClass('hide');
                                                    $('#enterOtp').removeClass('hide');
                                                    $('#otpInput').val("");
                                                    $('.accountTitle').css('visibility', 'hidden');
                                                }
                                            });
                                    }
                                }
                            });
                        });

                        $('#dynAccountList').on('click', 'span.accDelete', function () {
                            var data_obj = {};
                            data_obj.account = $(this).attr('data-accnumber');
                            data_obj.ifsc = $(this).attr('data-ifsc');

                            var thisDelete = $(this);
                            ajaxCall('POST', '/extwallets/remove_saved_account_details', data_obj)
                                .done(function (response) {
                                    if (response.status) {
                                        thisDelete.parents('.account').remove();
                                        if ($('#dynAccountList .account').length === 0) {
                                            $('#accountList').addClass('hide');
                                            $('#enterOtp').addClass('hide');
                                            $('#accountInfo').removeClass('hide');
                                        }
                                    }
                                })
                        });

                        $(document).on('keydown', '#otpCode', function (event) {
                            if (event.keyCode == 13) {
                                event.preventDefault();
                            }
                        })

                        $('#newModalBodyRight').on('click', '#profileOtpSubmit', function () {
                            $('#newModalBodyRight #LoginEmailError').addClass('hide');

                            var auth_token = getCookie('authToken');

                            var otp = $('#newModalBodyRight #otpCode').val();

                            var dataObj = {
                                auth_token: auth_token,
                                otp: otp,
                                request_code: 1001,
                                platform: 'web'
                            };

                            $.ajax({
                                type: "POST",
                                url: "/users/verify_otp",
                                data: dataObj
                            })
                                .done(function (response) {
                                    if (response.status) {
                                        window.location.reload();
                                    }
                                })
                                .fail(function (jqXHR) {
                                    if (jqXHR.responseJSON) {
                                        $('#newModalBodyRight #LoginEmailError').text(jqXHR.responseJSON.msg).removeClass('hide');
                                    }
                                })
                        });

                        $('#newModalBodyRight').on('click', '#resendProfileOtp', function () {
                            var auth_token = getCookie('authToken');

                            var phone = $('#cUserMobile').val();

                            var dataObj = {
                                auth_token: auth_token,
                                request_code: 1001,
                                phone: phone
                            };

                            $.ajax({
                                type: "POST",
                                url: "/users/send_otp",
                                data: dataObj
                            })
                                .done(function (response) {
                                    $('#newModalBodyRight #LoginEmailError').text('Otp sent successfully').removeClass('hide');
                                })
                                .fail(function (jqXHR) {
                                    if (jqXHR.responseJSON) {
                                        $('#newModalBodyRight #LoginEmailError').text(jqXHR.responseJSON.msg).removeClass('hide');
                                    }
                                });
                        });

                        $('#cUserMobile').on('keydown', function (event) {
                            if (event.currentTarget.value.toString().length > 9 && event.keyCode >= 48 && event.keyCode <= 57) {
                                event.preventDefault();
                            }
                        });

                    } else {
                        window.setTimeout(checkJqueryWithdrawal, 1000);
                    }
                }
                checkJqueryWithdrawal();
            </script>

        </div>
    </div>

<script>
  var city_name = 'Surat';
</script>
<script>
  $('.profile-verification-tab').removeClass('hide');
  var profileTabs = $('.profile_tabs');
  profileTabs.find('.profile_status').removeClass('hide');
  var profileStatusIcon = profileTabs.find('#profileStatus');
  if (false) {
  	profileStatusIcon.addClass('fa-check-circle-o');
  	profileStatusIcon.css('color', 'rgb(120, 182, 67)');
  }
  else {
  	profileStatusIcon.addClass('fa-times-circle-o');
  	profileStatusIcon.css('color', 'rgb(190, 50, 50)');
  }
</script>
<script src="//www.zoomcar.com//assets/savedcards.cbbf9cb951eaa869b1e7.js"></script>
<script src="//www.zoomcar.com//assets/application_userProfile.d6d0cd19468fe005e720.js"></script>
<script src="//www.zoomcar.com//assets/profile_verification.b871269ee2fb2f1ae18d.js"></script>
</div>
</form>

    

</asp:Content>

