<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="mtw" uri="http://www.mentaframework.org/tags-mtw/"%>
<html>
	<head>
    	<meta charset="UTF-8">
    	<meta name="google" value="notranslate">
		<title>Web Eat - Login</title>

        <style>
      		@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300);
			* {
				box-sizing: border-box;
			  	margin: 0;
			  	padding: 0;
			  	font-weight: 300;
			}
			body {
			  font-family: 'Source Sans Pro', sans-serif;
			  color: white;
			  font-weight: 300;
			}
			body ::-webkit-input-placeholder {
			  /* WebKit browsers */
			  font-family: 'Source Sans Pro', sans-serif;
			  color: white;
			  font-weight: 300;
			}
			body :-moz-placeholder {
			  /* Mozilla Firefox 4 to 18 */
			  font-family: 'Source Sans Pro', sans-serif;
			  color: white;
			  opacity: 1;
			  font-weight: 300;
			}
			body ::-moz-placeholder {
			  /* Mozilla Firefox 19+ */
			  font-family: 'Source Sans Pro', sans-serif;
			  color: white;
			  opacity: 1;
			  font-weight: 300;
			}
			body :-ms-input-placeholder {
			  /* Internet Explorer 10+ */
			  font-family: 'Source Sans Pro', sans-serif;
			  color: white;
			  font-weight: 300;
			}
			.wrapper {
				background: #50a3a2;
			 	background: -webkit-linear-gradient(top left, #2196F3 0%, #53e3a6 100%);
  				background: linear-gradient(to bottom right, #2196F3 0%, #538FE3 100%);
			  	position: absolute;
			  	left: 0;
			  	width: 100%;
			  	height: 100%;
			  	overflow: hidden;
			}
			.wrapper.form-success .container h1 {
			  -webkit-transform: translateY(85px);
			      -ms-transform: translateY(85px);
			          transform: translateY(85px);
			}
			.container {
			  max-width: 600px;
			  margin: 0 auto;
			  padding: 80px 0;
			  height: 400px;
			  text-align: center;
			}
			.container h1 {
			  font-size: 40px;
			  -webkit-transition-duration: 1s;
			          transition-duration: 1s;
			  -webkit-transition-timing-function: ease-in-put;
			          transition-timing-function: ease-in-put;
			  font-weight: 200;
			}
			form {
			  padding: 20px 0;
			  position: relative;
			  z-index: 2;
			}
			form input {
			  appearance: none;
			  outline: 0;
			  border: 1px solid rgba(255, 255, 255, 0.4);
			  background-color: rgba(255, 255, 255, 0.2);
			  width: 250px;
			  border-radius: 3px;
			  padding: 10px 15px;
			  margin: 0 auto 10px auto;
			  display: block;
			  text-align: center;
			  font-size: 18px;
			  color: white;
			  -webkit-transition-duration: 0.25s;
			          transition-duration: 0.25s;
			  font-weight: 300;
			}
			form input:hover {
			  background-color: rgba(255, 255, 255, 0.4);
			}
			form input:focus {
			  background-color: white;
			  width: 300px;
			  color: #2196F3;;
			}
			form button {
			  appearance: none;
			  outline: 0;
			  background-color: white;
			  border: 0;
			  padding: 10px 15px;
			  color: #2196F3;;
			  border-radius: 3px;
			  width: 250px;
			  cursor: pointer;
			  font-size: 18px;
			  -webkit-transition-duration: 0.25s;
			          transition-duration: 0.25s;
			}
			form button:hover {
			  background-color: #f5f7f9;
			}
			.bg-bubbles {
			  position: absolute;
			  top: 0;
			  left: 0;
			  width: 100%;
			  height: 100%;
			  z-index: 1;
			}
			.bg-bubbles li {
			  position: absolute;
			  list-style: none;
			  display: block;
			  width: 40px;
			  height: 40px;
			  background-color: rgba(255, 255, 255, 0.15);
			  bottom: -160px;
			  -webkit-animation: square 25s infinite;
			  animation: square 25s infinite;
			  -webkit-transition-timing-function: linear;
			  transition-timing-function: linear;
			}
			.bg-bubbles li:nth-child(1) {
			  left: 10%;
			}
			.bg-bubbles li:nth-child(2) {
			  left: 20%;
			  width: 80px;
			  height: 80px;
			  -webkit-animation-delay: 2s;
			          animation-delay: 2s;
			  -webkit-animation-duration: 17s;
			          animation-duration: 17s;
			}
			.bg-bubbles li:nth-child(3) {
			  left: 25%;
			  -webkit-animation-delay: 4s;
			          animation-delay: 4s;
			}
			.bg-bubbles li:nth-child(4) {
			  left: 40%;
			  width: 60px;
			  height: 60px;
			  -webkit-animation-duration: 22s;
			          animation-duration: 22s;
			  background-color: rgba(255, 255, 255, 0.25);
			}
			.bg-bubbles li:nth-child(5) {
			  left: 70%;
			}
			.bg-bubbles li:nth-child(6) {
			  left: 80%;
			  width: 120px;
			  height: 120px;
			  -webkit-animation-delay: 3s;
			          animation-delay: 3s;
			  background-color: rgba(255, 255, 255, 0.2);
			}
			.bg-bubbles li:nth-child(7) {
			  left: 32%;
			  width: 160px;
			  height: 160px;
			  -webkit-animation-delay: 7s;
			          animation-delay: 7s;
			}
			.bg-bubbles li:nth-child(8) {
			  left: 55%;
			  width: 20px;
			  height: 20px;
			  -webkit-animation-delay: 15s;
			          animation-delay: 15s;
			  -webkit-animation-duration: 40s;
			          animation-duration: 40s;
			}
			.bg-bubbles li:nth-child(9) {
			  left: 25%;
			  width: 10px;
			  height: 10px;
			  -webkit-animation-delay: 2s;
			          animation-delay: 2s;
			  -webkit-animation-duration: 40s;
			          animation-duration: 40s;
			  background-color: rgba(255, 255, 255, 0.3);
			}
			.bg-bubbles li:nth-child(10) {
			  left: 90%;
			  width: 160px;
			  height: 160px;
			  -webkit-animation-delay: 11s;
			          animation-delay: 11s;
			}
			@-webkit-keyframes square {
			  0% {
			    -webkit-transform: translateY(0);
			            transform: translateY(0);
			  }
			  100% {
			    -webkit-transform: translateY(-700px) rotate(600deg);
			            transform: translateY(-700px) rotate(600deg);
			  }
			}
			@keyframes square {
			  0% {
			    -webkit-transform: translateY(0);
			            transform: translateY(0);
			  }
			  100% {
			    -webkit-transform: translateY(-700px) rotate(600deg);
			            transform: translateY(-700px) rotate(600deg);
			  }
			}

    </style>

    <script>

	</script>
  </head>
	<body>
    	<div class="wrapper">
			<div class="container">
				<h1>Bem Vindo!</h1>
				<h3>EAT APP</h3><mtw:out value="mensagemErro"></mtw:out>
				<mtw:form action="LoginAction.login.mtw" method="post" klass="form">
					<mtw:input name="email" extra="placeholder=E-mail" type="text" />
					<mtw:input name="senha" extra="placeholder=Senha" type="password" />
					<button type="submit" id="login-button">Login</button>
				</mtw:form>
			</div>
			<ul class="bg-bubbles">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="//assets.codepen.io/assets/common/stopExecutionOnTimeout-6c99970ade81e43be51fa877be0f7600.js"></script>
		<script>
			jquery.read(function(){
		    	$('#login-button').click(function (event) {
				    event.preventDefault();
				    $('form').fadeOut(500);
				    $('.wrapper').addClass('form-success');
				});
				
				if (document.location.search.match(/type=embed/gi)) {
			    	window.parent.postMessage("resize", "*");
			  	}
				
			});
    	</script>
	</body>
</html>