<!--    
        JS Credits to bartveneman
        Comments? Feel free!
 -->
<script>
$(document).ready(function () {
  $("#theForm").on("submit", function (event) {
    var name = $("#username").val(),
        auth = $('#password').val() === 'password' && name === 'jennifer',
        msgBox = $("#welcome"),
        origMsg = msgBox.html(),
        newMsg = 'Welcome. <span>' + name +'.' +'</span>',
        message = name !== '' && auth ? newMsg : origMsg;
  
    msgBox.html(message);
    if (auth) {
      $('#flippr .flipper').addClass('logged-in');
    }
  
    event.preventDefault();
  });
  
});



/* 

var app = {

  shipping : 5.00,
  products : [
      {
        "name" : "bart1",
        "password" : "hallo",
        "img" : "http://willemsol.nl/codepenimg/FlipImg3.png"
      },
      {
        "name" : "bart2",
        "password" : "hallo",
        "img" : "http://willemsol.nl/codepenimg/FlipImg3.png"
      },
      {
        "name" : "bart3",
        "password" : "hallo",
        "img" : "http://willemsol.nl/codepenimg/FlipImg3.png"
      },
      {
        "name" : "bart4",
        "password" : "hallo",
        "img" : "http://willemsol.nl/codepenimg/FlipImg3.png" 
              }
    ];

*/


</script>
<style type="text/css">
html,
body {
  width: 100%;
  height: 100%;
}
body {
  margin: 0 auto;
  display: table;
  text-align: center;
  font-family: 'Open Sans', sans-serif;
  background: #81b5d6;
  max-width: 33em;
}
.wrap {
  margin-top:50px;
}

.flip-container {
  perspective: 1000;
  border-radius: 50%;
  margin: 0 auto 10px auto;
}

.logged-in {
	transform: rotateY(180deg);
}

.flip-container, .front, .back, .back-logo {
	width: 130px;
	height: 130px;
}

.flipper {
	transition-duration: 0.6s;
	transform-style: preserve-3d;
}

.front, 
.back {
	backface-visibility: hidden;
	position: absolute;
	top: 0;
	left: 0;
  background-size: cover;
}

.front {
	background: url(http://s8.postimg.org/y7z5wso29/Flip_Img.png) 0 0 no-repeat;
}

.back {
	transform: rotateY(180deg);
	background: url(http://s8.postimg.org/u04do1mmp/Flip_Img2.png) 0 0 no-repeat;
}

h1 {
  font-size: 22px;
  color: #FFF;
}
h1 span {
  font-weight: 300;
}
input[type=text],
input[type=password] {
  color:#FFF;
  background: #68add8; /* Old browsers */
  background: linear-gradient(45deg,  #68add8 0%,#8cbede 100%); /* W3C */
  width:250px;
  height:40px;
  margin: 0 auto 10px auto;
  font-size:14px;
  padding-left:15px;
  border:none;
  box-shadow: -3px 3px #679acb ;
  -webkit-appearance:none;
  border-radius:0;
  border-top: 1px solid #92c5e2;
  border-right: 1px solid #92c5e2;
}
input::-webkit-input-placeholder { 
  color: #FFF;
}
input:focus {
  outline:none;
}
input[type=submit] {
    color: #fff;
    background-color:#3f88b8;
    font-size: 14px;
    height: 40px;
    border: none;
    margin: 0 auto 0 17px;
    padding: 0 20px 0 20px;
    -webkit-appearance:none;
    border-radius:0;
    cursor: pointer;
}
input[type=submit]:hover {
  background-color:#3f7ba2;
}
a {
  color:#1c70a7;
  font-weight:600;
  font-size:12px;
  text-decoration:none;
}
a:hover {
  color:#3f7ba2;
}

.hint
{
  width:250px;
  dislay:block;
  margin:80px auto 0 auto;
  text-align:left;
}

.hint p
{
  padding: 5px 0 5px 0;
  color:#FFF;
  font-weight:600;
  font-size:20px;
}

.hint p span
{
  font-weight:300;
  font-size:16px;
}

</style>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<div class="wrap" style="margin-top:20%;">
  
  <div class="flip-container" id='flippr'>
    <div class="flipper">
      <div class="front"></div>
      <div class="back"></div>
    </div>
  </div>
  
  <h1 class="text" id="welcome">Welcome. <span>please login.</span></h1>
  
  <form method='post' id="theForm">
    <input type='text' id="username" name='username' placeholder='Username'><p></p>
    <input type='password' id='password' name='password' placeholder='Password'>
      
    <div class='login'>
      <a href="#"><i class="icon-cog"></i> I've fogotten my password</a>
      <input type='submit' value='Login'>
    </div><!-- /login -->
  </form>
</div><!-- /wrap -->


<!--div class='hint'>
<p> Hint:<br>
    <span>Username = jennifer<br> 
      Password = password</span></p>
</div-->