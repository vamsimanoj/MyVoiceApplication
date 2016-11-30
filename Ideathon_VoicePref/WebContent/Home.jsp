<!DOCTYPE HTML>
<html>
  <head>
    <style type="text/css">
      .aaa
      {
        border:1px solid white;
		border-radius:9999px;
		padding:13px 20px;
		margin:10px;
		margin-top:0px;
		text-align:center;
      }
      .dialdiv
      {
	    margin-top: -4px;
	    margin-left: 96px;
	    margin-right: 95px;
	    padding-left: 30px;
      }
	.endcall
	{
		background-position: center;
		background-image: url("endcall.png");
		background-repeat:no-repeat;
		margin:auto;
		margin-left:14px;
		margin-top:10px;
		border:0px;
	}
	.endcall:hover
	{
		border:0px;
		cursor:pointer;
	}
	.lowbar
	{
		width: 311px;
	    height: 60px;
	    margin-left: 95px;
	    padding-top: 34px;
	    opacity: 0.8;
	}
	.topbar
	{
	width: 310px;
    margin-left: 95px;
    opacity: 0.8;
    margin-top: 100px;
	}
	.hov:hover
	{
		background-color:#ff66ff;
		 -webkit-transition: background-color 500ms linear;
        -moz-transition: background-color 500ms linear;
        -o-transition: background-color 500ms linear;
        -ms-transition: background-color 5000ms linear;
        transition: background-color 500ms linear;
        border:1px solid #ff66ff;
        cursor:pointer;
	}
	.bbb
	{
		height:35px;
		width:20px;
		font-size:25px;
		color:white;
	}
	
	.bbb1
	{
		font-size:10px;
		color:white;
	
	}
	.dialpad
	{
		border:0px solid;
		width:500px;
		height:750px;
		background-position: center;
		background-image: url("iphone55.png");
		background-repeat:no-repeat;
		margin:auto;
		background-size: 800px 800px;
	}
	body
	{
		background:linear-gradient(141deg, #0fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
	}
</style>
<script src="jquery-3.1.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	window.clickToSubmitForm = function(ied)
	{
		var iid = ied.id;
		$.ajax({
		    type: 'POST',
		    url: '/Ideathon_VoicePref/FormServlet',
		    data: { 
		        'key': iid 
		    },
		    success: function(msg){
		        var text = msg;
		        var watch = setInterval(function() {
		            var voicesAvailable = speechSynthesis.getVoices();
		          }, 1);

		            event.preventDefault();
		            var utterance = new SpeechSynthesisUtterance();

		            utterance.text = text;
		            utterance.voice = "native";
		            utterance.rate = 0.6;
		            utterance.pitch = 2;
		            window.speechSynthesis.speak(utterance);
		    }
		});
	}
});
</script>    
  </head>
<body >
	<div class="dialpad">
	<img class="topbar" src="bar.png"/>
		<div class="dialdiv">
		  	<form class="aaa hov" style="display:inline-block; margin-top:77px;" action="./FormServlet" method="post" id="1" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">1<input type="hidden" name="key" value="1"/><div class="bbb1" style="visibility:hidden;">ABC</div></div>
		  	</form>
			<form class="aaa hov" style="display:inline-block" action="./FormServlet" method="post" id="2" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">2<input type="hidden" name="key" value="2"/><div class="bbb1">ABC</div></div>
		  	</form>
			<form class="aaa hov" style="display:inline-block" action="./FormServlet" method="post" id="3" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">3<input type="hidden" name="key" value="3"/><div class="bbb1">DEF</div></div>
		  	</form>
		</div>
		<div class="dialdiv">
			<form class="aaa hov" style="display:inline-block" action="./FormServlet" method="post" id="4" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">4<input type="hidden" name="key" value="4"/><div class="bbb1">GHI</div></div>
		  	</form>
			<form class="aaa hov" style="display:inline-block" action="./FormServlet" method="post" id="5" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">5<input type="hidden" name="key" value="5"/><div class="bbb1">JKL</div></div>
		  	</form>
			<form class="aaa hov" style="display:inline-block" action="./FormServlet" method="post" id="6" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">6<input type="hidden" name="key" value="6"/><div class="bbb1">MNO</div></div>
		  	</form>
		</div>
		<div class="dialdiv">
			<form class="aaa hov" style="display:inline-block" action="./FormServlet" method="post" id="7" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">7<input type="hidden" name="key" value="7"/><div class="bbb1">PQRS</div></div>
		  	</form>
			<form class="aaa hov" style="display:inline-block" action="./FormServlet" method="post" id="8" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">8<input type="hidden" name="key" value="8"/><div class="bbb1">TUV</div></div>
		  	</form>
			<form class="aaa hov" style="display:inline-block" action="./FormServlet" method="post" id="9" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">9<input type="hidden" name="key" value="9"/><div class="bbb1">WXYZ</div></div>
		  	</form>
		</div>
		<div class="dialdiv">
			<div class="aaa hov" style="display:inline-block">
			  	<div class="bbb">*<div class="bbb1" style="visibility:hidden">PQRS</div></div>
			</div>
			<form class="aaa hov" style="display:inline-block" action="./FormServlet" method="post" id="0" onclick="clickToSubmitForm(this)">
		  		<div class="bbb">0<input type="hidden" name="key" value="0"/><div class="bbb1">+</div></div>
		  	</form>
			<form class="aaa hov" action="./FormServlet" method="post" id="#" onclick="clickToSubmitForm(this)" style="display:inline-block">
				<div class="bbb">#<input type="hidden" name="key" value="#"/><div class="bbb1" style="visibility:hidden">PQRS</div></div>
			</form>
		</div>
		<div class="dialdiv">
			<div class="aaa" style="display:inline-block; border:none;">
		  		<div class="bbb" style="visibility:hidden">*<div class="bbb1" style="visibility:hidden">PQRS</div></div>
			</div>
			<form class="aaa endcall" style="display:inline-block" action="./FormServlet" method="post" id="Call" onclick="clickToSubmitForm(this)">
		  		<div class="bbb" style="visibility:hidden">endcall<input type="hidden" name="key" value="call"/><div class="bbb1" style="visibility:hidden">+</div></div>
			</form>
			<div class="aaa" style="display:inline-block; border:none;">
		  		<div class="bbb" style="visibility:hidden">#<div class="bbb1" style="visibility:hidden">PQRS</div></div>
			</div>
		</div>
		<img class="lowbar" src="lowbar.png"/>
	</div>
  </body>
</html>      