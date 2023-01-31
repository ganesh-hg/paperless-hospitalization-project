<?php
include("header.php");
?>
<style>
  body{
    background-image: url("images/bg.png")
  }
  .box{
    height:380px;
    width: 800px;
    margin: 2px 10px;
    font-size: 36pt;
  }
  .slogan{
    color: #0089ff;
    text-shadow: 2px 2px 3px black;
  }
</style>
<div class="box">
<div class="slogan">
<center><h1>Medical Services that you can Trust</h1></center>
</div>
</div>
<div class="wrapper col1" style="background-color: #62baed3d">
  <center>
  <div id="container">
    <div id="content">
      <center>
    <div class="homecontent">
        <ul>
          <li>
            <h2 style="background-color: #62baed3d;color: white">Book your Appointment through online</h2>
            <p class="imgholder" style="background-color: #62baed3d"><a href="patientappointment.php"><img src="images/add-appointment.png" alt="" style="width:200px;height:100px;background-color: #62baed3d" /></a></p>
          </li>
          <li class="last">
            <h2 style="background-color: #62baed3d;color: white">Login Panel for existing users</h2>          
            <p class="imgholder" style="background-color: #62baed3d"><a href="patientlogin.php"><img src="images/login.png" alt="" style="width:286px;height:100px;background-color: #62baed3d"  /></a></p>
          </li>
        </ul>
        <div class="clear"></div>
      </div>
    </center>
    </div>
      <center>
     
   
    <div class="clear"></div>
  </div>
</center>
</div>
<?php
include("footer.php");
?>