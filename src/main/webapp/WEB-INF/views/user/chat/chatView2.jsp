<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
 

<!DOCTYPE html><html class=''>
<head>
<!-- <script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script> -->
<meta charset='UTF-8'><meta name="robots" content="noindex">
<link rel="shortcut icon" type="image/x-icon" href="http://production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="mask-icon" type="" href="http://production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
<link rel="canonical" href="https://codepen.io/emilcarlsson/pen/ZOQZaV?limit=all&page=74&q=contact+" />
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300' rel='stylesheet' type='text/css'>

<script src="https://use.typekit.net/hoy3lrg.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'><link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css'>
<style class="cp-pen-styles">body {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background: #27ae60;
  font-family: "proxima-nova", "Source Sans Pro", sans-serif;
  font-size: 1em;
  letter-spacing: 0.1px;
  color: #32465a;
  text-rendering: optimizeLegibility;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
  -webkit-font-smoothing: antialiased;
}

#frame {
  width: 95%;
  min-width: 360px;
  max-width: 1000px;
  height: 92vh;
  min-height: 300px;
  max-height: 720px;
  background: #E6EAEA;
}
@media screen and (max-width: 360px) {
  #frame {
    width: 100%;
    height: 100vh;
  }
}
#frame #sidepanel {
  float: left;
  min-width: 280px;
  max-width: 340px;
  width: 40%;
  height: 100%;
  background: #2c3e50;
  color: #f5f5f5;
  overflow: hidden;
  position: relative;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel {
    width: 58px;
    min-width: 58px;
  }
}
#frame #sidepanel #profile {
  width: 80%;
  margin: 25px auto;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile {
    width: 100%;
    margin: 0 auto;
    padding: 5px 0 0 0;
    background: #32465a;
  }
}
#frame #sidepanel #profile.expanded .wrap {
  height: 180px;
  line-height: initial;
}
#frame #sidepanel #profile.expanded .wrap p {
  margin-top: 20px;
}
#frame #sidepanel #profile.expanded .wrap i.expand-button {
  -moz-transform: scaleY(-1);
  -o-transform: scaleY(-1);
  -webkit-transform: scaleY(-1);
  transform: scaleY(-1);
  filter: FlipH;
  -ms-filter: "FlipH";
}
#frame #sidepanel #profile .wrap {
  height: 60px;
  line-height: 60px;
  overflow: hidden;
  -moz-transition: 0.3s height ease;
  -o-transition: 0.3s height ease;
  -webkit-transition: 0.3s height ease;
  transition: 0.3s height ease;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap {
    height: 55px;
  }
}
#frame #sidepanel #profile .wrap img {
  width: 50px;
  border-radius: 50%;
  padding: 3px;
  border: 2px solid #e74c3c;
  height: auto;
  float: left;
  cursor: pointer;
  -moz-transition: 0.3s border ease;
  -o-transition: 0.3s border ease;
  -webkit-transition: 0.3s border ease;
  transition: 0.3s border ease;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap img {
    width: 40px;
    margin-left: 4px;
  }
}
#frame #sidepanel #profile .wrap img.online {
  border: 2px solid #2ecc71;
}
#frame #sidepanel #profile .wrap img.away {
  border: 2px solid #f1c40f;
}
#frame #sidepanel #profile .wrap img.busy {
  border: 2px solid #e74c3c;
}
#frame #sidepanel #profile .wrap img.offline {
  border: 2px solid #95a5a6;
}
#frame #sidepanel #profile .wrap p {
  float: left;
  margin-left: 15px;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap p {
    display: none;
  }
}
#frame #sidepanel #profile .wrap i.expand-button {
  float: right;
  margin-top: 23px;
  font-size: 0.8em;
  cursor: pointer;
  color: #435f7a;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap i.expand-button {
    display: none;
  }
}
#frame #sidepanel #profile .wrap #status-options {
  position: absolute;
  opacity: 0;
  visibility: hidden;
  width: 150px;
  margin: 70px 0 0 0;
  border-radius: 6px;
  z-index: 99;
  line-height: initial;
  background: #435f7a;
  -moz-transition: 0.3s all ease;
  -o-transition: 0.3s all ease;
  -webkit-transition: 0.3s all ease;
  transition: 0.3s all ease;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap #status-options {
    width: 58px;
    margin-top: 57px;
  }
}
#frame #sidepanel #profile .wrap #status-options.active {
  opacity: 1;
  visibility: visible;
  margin: 75px 0 0 0;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap #status-options.active {
    margin-top: 62px;
  }
}
#frame #sidepanel #profile .wrap #status-options:before {
  content: '';
  position: absolute;
  width: 0;
  height: 0;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 8px solid #435f7a;
  margin: -8px 0 0 24px;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap #status-options:before {
    margin-left: 23px;
  }
}
#frame #sidepanel #profile .wrap #status-options ul {
  overflow: hidden;
  border-radius: 6px;
}
#frame #sidepanel #profile .wrap #status-options ul li {
  padding: 15px 0 30px 18px;
  display: block;
  cursor: pointer;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap #status-options ul li {
    padding: 15px 0 35px 22px;
  }
}
#frame #sidepanel #profile .wrap #status-options ul li:hover {
  background: #496886;
}
#frame #sidepanel #profile .wrap #status-options ul li span.status-circle {
  position: absolute;
  width: 10px;
  height: 10px;
  border-radius: 50%;
  margin: 5px 0 0 0;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap #status-options ul li span.status-circle {
    width: 14px;
    height: 14px;
  }
}
#frame #sidepanel #profile .wrap #status-options ul li span.status-circle:before {
  content: '';
  position: absolute;
  width: 14px;
  height: 14px;
  margin: -3px 0 0 -3px;
  background: transparent;
  border-radius: 50%;
  z-index: 0;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap #status-options ul li span.status-circle:before {
    height: 18px;
    width: 18px;
  }
}
#frame #sidepanel #profile .wrap #status-options ul li p {
  padding-left: 12px;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #profile .wrap #status-options ul li p {
    display: none;
  }
}
#frame #sidepanel #profile .wrap #status-options ul li#status-online span.status-circle {
  background: #2ecc71;
}
#frame #sidepanel #profile .wrap #status-options ul li#status-online.active span.status-circle:before {
  border: 1px solid #2ecc71;
}
#frame #sidepanel #profile .wrap #status-options ul li#status-away span.status-circle {
  background: #f1c40f;
}
#frame #sidepanel #profile .wrap #status-options ul li#status-away.active span.status-circle:before {
  border: 1px solid #f1c40f;
}
#frame #sidepanel #profile .wrap #status-options ul li#status-busy span.status-circle {
  background: #e74c3c;
}
#frame #sidepanel #profile .wrap #status-options ul li#status-busy.active span.status-circle:before {
  border: 1px solid #e74c3c;
}
#frame #sidepanel #profile .wrap #status-options ul li#status-offline span.status-circle {
  background: #95a5a6;
}
#frame #sidepanel #profile .wrap #status-options ul li#status-offline.active span.status-circle:before {
  border: 1px solid #95a5a6;
}
#frame #sidepanel #profile .wrap #expanded {
  padding: 100px 0 0 0;
  display: block;
  line-height: initial !important;
}
#frame #sidepanel #profile .wrap #expanded label {
  float: left;
  clear: both;
  margin: 0 8px 5px 0;
  padding: 5px 0;
}
#frame #sidepanel #profile .wrap #expanded input {
  border: none;
  margin-bottom: 6px;
  background: #32465a;
  border-radius: 3px;
  color: #f5f5f5;
  padding: 7px;
  width: calc(100% - 43px);
}
#frame #sidepanel #profile .wrap #expanded input:focus {
  outline: none;
  background: #435f7a;
}
#frame #sidepanel #search {
  border-top: 1px solid #32465a;
  border-bottom: 1px solid #32465a;
  font-weight: 300;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #search {
    display: none;
  }
}
#frame #sidepanel #search label {
  position: absolute;
  margin: 10px 0 0 20px;
}
#frame #sidepanel #search input {
  font-family: "proxima-nova",  "Source Sans Pro", sans-serif;
  padding: 10px 0 10px 46px;
  width: calc(100% - 25px);
  border: none;
  background: #32465a;
  color: #f5f5f5;
}
#frame #sidepanel #search input:focus {
  outline: none;
  background: #435f7a;
}
#frame #sidepanel #search input::-webkit-input-placeholder {
  color: #f5f5f5;
}
#frame #sidepanel #search input::-moz-placeholder {
  color: #f5f5f5;
}
#frame #sidepanel #search input:-ms-input-placeholder {
  color: #f5f5f5;
}
#frame #sidepanel #search input:-moz-placeholder {
  color: #f5f5f5;
}
#frame #sidepanel #contacts {
  height: calc(100% - 177px);
  overflow-y: scroll;
  overflow-x: hidden;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #contacts {
    height: calc(100% - 149px);
    overflow-y: scroll;
    overflow-x: hidden;
  }
  #frame #sidepanel #contacts::-webkit-scrollbar {
    display: none;
  }
}
#frame #sidepanel #contacts.expanded {
  height: calc(100% - 334px);
}
#frame #sidepanel #contacts::-webkit-scrollbar {
  width: 8px;
  background: #2c3e50;
}
#frame #sidepanel #contacts::-webkit-scrollbar-thumb {
  background-color: #243140;
}
#frame #sidepanel #contacts ul li.contact {
  position: relative;
  padding: 10px 0 15px 0;
  font-size: 0.9em;
  cursor: pointer;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #contacts ul li.contact {
    padding: 6px 0 46px 8px;
  }
}
#frame #sidepanel #contacts ul li.contact:hover {
  background: #32465a;
}
#frame #sidepanel #contacts ul li.contact.active {
  background: #32465a;
  border-right: 5px solid #435f7a;
}
#frame #sidepanel #contacts ul li.contact.active span.contact-status {
  border: 2px solid #32465a !important;
}
#frame #sidepanel #contacts ul li.contact .wrap {
  width: 88%;
  margin: 0 auto;
  position: relative;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #contacts ul li.contact .wrap {
    width: 100%;
  }
}
#frame #sidepanel #contacts ul li.contact .wrap span {
  position: absolute;
  left: 0;
  margin: -2px 0 0 -2px;
  width: 10px;
  height: 10px;
  border-radius: 50%;
  border: 2px solid #2c3e50;
  background: #95a5a6;
}
#frame #sidepanel #contacts ul li.contact .wrap span.online {
  background: #2ecc71;
}
#frame #sidepanel #contacts ul li.contact .wrap span.away {
  background: #f1c40f;
}
#frame #sidepanel #contacts ul li.contact .wrap span.busy {
  background: #e74c3c;
}
#frame #sidepanel #contacts ul li.contact .wrap img {
  width: 40px;
  border-radius: 50%;
  float: left;
  margin-right: 10px;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #contacts ul li.contact .wrap img {
    margin-right: 0px;
  }
}
#frame #sidepanel #contacts ul li.contact .wrap .meta {
  padding: 5px 0 0 0;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #contacts ul li.contact .wrap .meta {
    display: none;
  }
}
#frame #sidepanel #contacts ul li.contact .wrap .meta .name {
  font-weight: 600;
}
#frame #sidepanel #contacts ul li.contact .wrap .meta .preview {
  margin: 5px 0 0 0;
  padding: 0 0 1px;
  font-weight: 400;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  -moz-transition: 1s all ease;
  -o-transition: 1s all ease;
  -webkit-transition: 1s all ease;
  transition: 1s all ease;
}
#frame #sidepanel #contacts ul li.contact .wrap .meta .preview span {
  position: initial;
  border-radius: initial;
  background: none;
  border: none;
  padding: 0 2px 0 0;
  margin: 0 0 0 1px;
  opacity: .5;
}
#frame #sidepanel #bottom-bar {
  position: absolute;
  width: 100%;
  bottom: 0;
}
#frame #sidepanel #bottom-bar button {
  float: left;
  border: none;
  width: 50%;
  padding: 10px 0;
  background: #32465a;
  color: #f5f5f5;
  cursor: pointer;
  font-size: 0.85em;
  font-family: "proxima-nova",  "Source Sans Pro", sans-serif;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #bottom-bar button {
    float: none;
    width: 100%;
    padding: 15px 0;
  }
}
#frame #sidepanel #bottom-bar button:focus {
  outline: none;
}
#frame #sidepanel #bottom-bar button:nth-child(1) {
  border-right: 1px solid #2c3e50;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #bottom-bar button:nth-child(1) {
    border-right: none;
    border-bottom: 1px solid #2c3e50;
  }
}
#frame #sidepanel #bottom-bar button:hover {
  background: #435f7a;
}
#frame #sidepanel #bottom-bar button i {
  margin-right: 3px;
  font-size: 1em;
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #bottom-bar button i {
    font-size: 1.3em;
  }
}
@media screen and (max-width: 735px) {
  #frame #sidepanel #bottom-bar button span {
    display: none;
  }
}
#frame .content {
  float: right;
  width: 60%;
  height: 100%;
  overflow: hidden;
  position: relative;
}
@media screen and (max-width: 735px) {
  #frame .content {
    width: calc(100% - 58px);
    min-width: 300px !important;
  }
}
@media screen and (min-width: 900px) {
  #frame .content {
    width: calc(100% - 340px);
  }
}
#frame .content .contact-profile {
  width: 100%;
  height: 60px;
  line-height: 60px;
  background: #f5f5f5;
}
#frame .content .contact-profile img {
  width: 40px;
  border-radius: 50%;
  float: left;
  margin: 9px 12px 0 9px;
}
#frame .content .contact-profile p {
  float: left;
}
#frame .content .contact-profile .social-media {
  float: right;
}
#frame .content .contact-profile .social-media i {
  margin-left: 14px;
  cursor: pointer;
}
#frame .content .contact-profile .social-media i:nth-last-child(1) {
  margin-right: 20px;
}
#frame .content .contact-profile .social-media i:hover {
  color: #435f7a;
}
.messages {
  height: auto;
  min-height: calc(100% - 93px);
  max-height: calc(100% - 93px);
  overflow: auto;
 /*  overflow-y: scroll; */
  overflow-x: hidden;
}
@media screen and (max-width: 735px) {
.messages {
    max-height: calc(100% - 105px);
  }
}
.messages::-webkit-scrollbar {
  width: 8px;
  background: transparent;
}
.messages::-webkit-scrollbar-thumb {
  background-color: rgba(0, 0, 0, 0.3);
}
 ul, li {
  display: inline-block;
  clear: both;
  float: left;
  margin: 15px 15px 5px 15px;
  width: calc(100% - 25px);
  font-size: 0.9em;
}
ul, li:nth-last-child(1) {
  margin-bottom: 20px;
}
ul, li.sent img {
  margin: 6px 8px 0 0;
}
.sent p {
  background: #435f7a;
  color: #f5f5f5;
} 
ul, li.replies img {
  float: right;
  margin: 6px 0 0 8px;
}
.replies p { 
  background: #f5f5f5;
  float: right;
}
.messages ul li img {
  width: 22px;
  border-radius: 50%;
  float: left;
}
.messages ul {  
  display: inline-block;
  padding: 10px 15px;
  border-radius: 20px;
  max-width: 205px;
  line-height: 130%;
}

.messages p {  
  display: inline-block;
  padding: 10px 15px;
  border-radius: 20px;
  max-width: 205px;
  line-height: 130%;
}
@media screen and (min-width: 735px) {
.messages ul li p {
    max-width: 300px;
  }
}
.message-input {
  position: absolute;
  bottom: 0;
  width: 100%;
  z-index: 99;
}
.message-input .wrap {
  position: relative;
}
.message-input .wrap input {
  font-family: "proxima-nova",  "Source Sans Pro", sans-serif;
  float: left;
  border: none;
  width: calc(100% - 90px);
  padding: 11px 32px 10px 8px;
  font-size: 0.8em;
  color: #32465a;
} 
@media screen and (max-width: 735px) {
  #frame .content .message-input .wrap input {
    padding: 15px 32px 16px 8px;
  }
}
#frame .content .message-input .wrap input:focus {
  outline: none;
}
#frame .content .message-input .wrap .attachment {
  position: absolute;
  right: 60px;
  z-index: 4;
  margin-top: 10px;
  font-size: 1.1em;
  color: #435f7a;
  opacity: .5;
  cursor: pointer;
}
@media screen and (max-width: 735px) {
  #frame .content .message-input .wrap .attachment {
    margin-top: 17px;
    right: 65px;
  }
}
#frame .content .message-input .wrap .attachment:hover {
  opacity: 1;
}
#frame .content .message-input .wrap button {
  float: right;
  border: none;
  width: 50px;
  padding: 12px 0;
  cursor: pointer;
  background: #32465a;
  color: #f5f5f5;
}
@media screen and (max-width: 735px) {
  #frame .content .message-input .wrap button {
    padding: 16px 0;
  }
}
#frame .content .message-input .wrap button:hover {
  background: #435f7a;
}
#frame .content .message-input .wrap button:focus {
  outline: none;
}
.messages {
    display: inline-block;
    clear: both;
    float: left;
    margin: 15px 15px 5px 15px;
    width: calc(100% - 25px);
}
  
</style></head>
<body>
 
<form id="chatView" name="chatView" method="get" action="/chat/chatView2">
	<input type="hidden" id="mnMmSeq" name="mnMmSeq" value="${sessSeq}">
	<input type="hidden" id="mnMmName" name="mnMmName" value="${sessName}">
	<input type="hidden" id="fdmnMmName" name="fdmnMmName">
	<input type="hidden" id="mnfdseq" name="mnfdseq">
	<input type="hidden" id="mnMmIntroduce" name="mnMmIntroduce">
	<input type="hidden" id="mnfdFriendSeq" name="mnfdFriendSeq">
	<input type="hidden" id="mnChat_Num" name="mnChat_Num">
</form>
  
<div id="frame">
	<div id="sidepanel">
		<div id="profile">
			<div class="wrap">
				<img id="profile-img" src="<c:out value="${room.path}"/><c:out value="${room.uuidName}"/>" class="online" alt="" />
				<p><c:out value="${sessSeq}"/></p>
				<p><c:out value="${sessName}"/></p>
				<i class="fa fa-chevron-down expand-button" aria-hidden="true"></i>
				<div id="status-options">
					<ul>
						<li id="status-online" class="active"><span class="status-circle"></span> <p>Online</p></li>
						<li id="status-away"><span class="status-circle"></span> <p>Away</p></li>
						<li id="status-busy"><span class="status-circle"></span> <p>Busy</p></li>
						<li id="status-offline"><span class="status-circle"></span> <p>Offline</p></li>
					</ul>
				</div> 
				<div id="expanded" style="padding-top: 75px; margin-left: 40px;" >
				<a  href="javascript:goProfileView(${sessSeq})"><input name="" type="button" value="프로필수정" /></a>
				<a  href="javascript:gouserEdit(${sessSeq})"><input name="" type="button" value="개인정보변경" /></a>
				</div>
			</div> 
		</div>
		<div class="container" style="text-align: center;">
			<span>기존 대화방</span>
		</div>
		<div id="contacts">
			<ul style="margin: 0px;">
				<%-- <li class="contact" style="padding: 0px; margin-bottom: 0px;" onclick="fdcheck(<c:out value="${item.mnMmSeq}"/>);"> --%>
					<div class="wrap">
						<div class="meta" id="fdbodyContent">
						<%-- <ul style="margin: 0px;">
							<a href=""><li class="contact" style="padding: 0px; margin-bottom: 0px;">
								<div class="wrap">
									<span class="contact-status online"></span>
									<img src="http://emilcarlsson.se/assets/louislitt.png" alt="">
									<div class="meta">
										<p class="name"><c:out value="${vo.fdmnMmName}"/></p>
									</div>
								</div>
							</li></a>
						</ul> --%>
							<%-- <p class="name"><c:out value="${item.mnMmName}"/></p>
							<p class="preview"><c:out value="${item.mnMmIntroduce}"/></p> --%>
						</div>
					</div>
				<!-- </li> -->
			</ul>
		</div>
		<div id="bottom-bar">
			<a  href="javascript:goMain(${sessSeq})"><button id="addcontact"> <span>메인화면</span></button></a>
			<a  href="#" id="btnLogout" onclick="btnLogout();"><button id="settings"> <span>로그아웃</span></button></a>
		</div>
	</div>
	<div class="content">
		<div class="contact-profile">
			<img src="<c:out value="${room.mnfdFriendSeq}"/><c:out value="${room.path}"/><c:out value="${room.uuidName}"/>" alt="" />
			<p><c:out value="${vo.fdmnMmName}"/></p>
			<!-- <div class="social-media">
				<span>화상채팅<i class="fa fa-instagram" id="btnmeet" style="margin-top: 20px;"></i></span>
			</div> -->
		</div> 
		<div class="messages" >
			 <ul id="bodyContent">
			</ul>
		</div>
		<div class="message-input">
			<div class="wrap">
			<input type="text" id="message" name="message" onkeyup="if(window.event.keyCode==13){enterkey()}" placeholder="Write your message..." autocomplete="off"/>
			<label>
				<input type="file" style="display: none;">
				<i class="fa fa-paperclip attachment"></i>
			</label>
			<button id="submit" type="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
			</div>
		</div>
	</div>
</div>

<!-- <script src='http://production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script> -->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>



<script src="https://www.gstatic.com/firebasejs/8.6.5/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.6.5/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.6.5/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.6.5/firebase-storage.js"></script>

	
</body>
</html>
<script>	
$("#profile-img").click(function() {
	$("#status-options").toggleClass("active");
});

$(".expand-button").click(function() {
  $("#profile").toggleClass("expanded");
	$("#contacts").toggleClass("expanded");
});

$("#status-options ul li").click(function() {
	$("#profile-img").removeClass();
	$("#status-online").removeClass("active");
	$("#status-away").removeClass("active");
	$("#status-busy").removeClass("active");
	$("#status-offline").removeClass("active");
	$(this).addClass("active");
	
	if($("#status-online").hasClass("active")) {
		$("#profile-img").addClass("online");
	} else if ($("#status-away").hasClass("active")) {
		$("#profile-img").addClass("away");
	} else if ($("#status-busy").hasClass("active")) {
		$("#profile-img").addClass("busy");
	} else if ($("#status-offline").hasClass("active")) {
		$("#profile-img").addClass("offline");
	} else {
		$("#profile-img").removeClass();
	};
	
	$("#status-options").removeClass("active");
});
 
	
</script>

<!-- Enter 로 submit 하기 -->
<script>
function enterkey() {
	if($("#message").val() == null || $("#message").val() == ""){
		alert("채팅을 입력 해주세요");
		return false;
	} else {
		$("#submit").click();
	}
};
</script>
<!-- Enter 로 submit 하기 끝 -->

<!-- firebase 채팅 시작 -->
<script type="module">
// Import the functions you need from the SDKs you need
import {initializeApp} from "https://www.gstatic.com/firebasejs/9.6.6/firebase-app.js";
import {
    getDatabase,
    set,
    ref,
    push,
    child,
    onValue,
    onChildAdded
} from "https://www.gstatic.com/firebasejs/9.6.6/firebase-database.js";


// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
	  apiKey: "AIzaSyDOwnSmV6IrU8U2BJeG-zXQQddLzPqYzNo",
	  authDomain: "matnam-e9c16.firebaseapp.com",
	  databaseURL: "https://matnam-e9c16-default-rtdb.firebaseio.com",
	  projectId: "matnam-e9c16",
	  storageBucket: "matnam-e9c16.appspot.com",
	  messagingSenderId: "84472849491",
	  appId: "1:84472849491:web:b1401d16c6130d3db712a6"
 };
 
// Initialize Firebase
const app = initializeApp(firebaseConfig);
const database = getDatabase(app);

// var yourName = prompt("상대방의 닉네임을 입력해주세요.");

var myName = String("${sessName}");
var Chatroom = '<c:out value="${room.mnChat_Num}"/>'
var mnmmseq = '<c:out value="${room.mnMmSeq}"/>'
var mnfdfriendseq = '<c:out value="${room.mnfdFriendSeq}"/>'
var youname = '<c:out value="${vo.fdmnMmName}"/>'

submit.addEventListener('click', (e) => {
    var message = document.getElementById('message').value;
	
	var host = mnfdfriendseq;
    var hostname = myName;
	
	var room = Chatroom;
	
	var user = mnmmseq;
	var username = youname;

	
    const id = push(child(ref(database), 'messages')).key;

    set(ref(database, 'messages/' + id), {
		room : room,
		host : host,
		user : user,
        message: message,
        hostname: hostname,
		username: username
    });
	
    set(ref(database, 'ROOM/' + host + user), {
		room : room,
		hostname: hostname,
		username: username,
		host : host,
		user : user
		
    });
    document.getElementById('message').value = "";
	})
    const newMsg = ref(database, 'messages/');
    onChildAdded(newMsg, (data) => {
			if(data.val().hostname != myName && data.val().host == mnfdfriendseq && data.val().user == mnmmseq && data.val().room == Chatroom) {
            	var divData = '<li class="sent" id="sent">\n' + 
						'<div>' + data.val().hostname +' </div>\n' + 
						'<p> '+data.val().message+' </p>\n' +
					'</li>'; 
           	 	var d1 = document.getElementById('bodyContent');
            	d1.insertAdjacentHTML('beforebegin', divData);
			$('.messages').scrollTop($('.messages')[0].scrollHeight);

        	}else if (data.val().hostname == myName && data.val().host == mnfdfriendseq && data.val().user == mnmmseq && data.val().room == Chatroom){

            	var divData = '<li class="replies" id="replies">\n' +
						'<div style="float: right;">' + data.val().hostname +' </div>\n' +
 						'<br>' +
						'<p>' +data.val().message+' </p>\n' +
					'</li>';
            	var d1 = document.getElementById('bodyContent');
            	d1.insertAdjacentHTML('beforebegin', divData);
       	 	}
			$('.messages').scrollTop($('.messages')[0].scrollHeight);
    });
   

	const roomnumber = ref(database, 'ROOM/');
    	onChildAdded(roomnumber, (data) => {
    		if(data.val().host == mnfdfriendseq) {
            	var divData = '<ul style="margin: 0px;">' + 
							  	'<a href="http://localhost:8093/chat/chatView2?mnMmSeq=' + data.val().user + '&mnfdFriendSeq=' + data.val().host + '&mnMmName=' + data.val().hostname + '&fdmnMmName=' + data.val().username + '">' + 
									'<li class="contact" style="padding: 0px; margin-bottom: 0px;">' +
										'<div class="wrap">' +
											'<span class="contact-status online"></span>' +
											'<img src="<c:out value="${room.path}"/><c:out value="${room.uuidName}"/>" alt="">' +
											'<div class="meta">' +
												'<p class="name">' + data.val().username + '</p>' +
											'</div>' +
										'</div>' +
							 		'</li>' + '</a>'
							 '</ul>'
           	var d1 = document.getElementById('fdbodyContent');
            d1.insertAdjacentHTML('beforebegin', divData);
		}else{

		}
	});
</script>
<!-- firebase 채팅 끝 --> 

<script type="text/javascript">
	$("#btnLogout").on("click",function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/user/logoutProc"
			,data : { "sessSeq" : $("#sessSeq").val(), "sessId" : $("#sessId").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/index/matnamMain";
				} else {
					alert("오류");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	goProfileView = function(seq){
		$("#mnMmSeq").val(seq);
		$("#chatView").attr("action","/user/profileView");
		$("#chatView").submit();
	} 
 
	gouserEdit = function(seq){
		$("#mnMmSeq").val(seq);
		$("#chatView").attr("action","/user/userEdit");
		$("#chatView").submit();
	}
	
	goMain = function(seq){
		$("#mnMmSeq").val(seq);
		$("#chatView").attr("action","/index/matnamMain");
		$("#chatView").submit();
	}

</script>

<!-- <script type="text/javascript">
	const socket = new WebSocket('ws://localhost:8093/online')
	let myStream;
	async function getMedia(){
	    try {
	        myStream = await navigator.mediaDevices.getUserMedia({
	            audio: true,
	            video: true,
	        });
	    } catch (e) {
	        console.log(e);
	    }
	}
	
	async function initCall(){
	    await getMedia();
	    makeConnection();
	}

	$("#btnmeet").on("click" , async function(){
		
		const offer = await myPeerConnection.createOffer();
		myPeerConnection.setLocalDescription(offer);
		console.log(offer);
		
		send({type : "offer", roomSeq : '<c:out value="${roomSeq}"/>' , content : offer});
		
	});
	
	function send(message){
		socket.send(JSON.stringify(message));
		
	}
	
	
	function makeConnection(){
		myPeerConnection = new RTCPeerConnection({
			iceServers: [
				{
					urls: [
						"stun:stun.l.google.com:19302",
	                    "stun:stun1.l.google.com:19302",
	                    "stun:stun2.l.google.com:19302",
	                    "stun:stun3.l.google.com:19302",
					],
				},
			],
		});
		
//		myPeerConnection.onicecandidate = handleIce;
//	myPeerConnection.onaddstream = handleAddstream;
		
		
//		myPeerConnection.addEventListener("icecandidate", handleIce);
//		myPeerConnection.addEventListener("addstream", handleAddstream);
//		myStream.getTracks().forEach((track) => myPeerConnection.addTrack(track, myStream)); 
		
	}
	
	socket.onopen = function (){
		//initCall();
	}
	
	socket.onmessage = function(event) {
		console.log(event.data);
	}
</script> -->
