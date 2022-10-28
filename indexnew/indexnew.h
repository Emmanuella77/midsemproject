
char page[] PROGMEM = R"(

<!DOCTYPE html><html><head>
    <title>Midterm Project</title>
    <style>
    body {margin-top:50px; font-family:Arial}
    body {font-size:20px; text-align:center}
    .btn {display:block; width:280px; margin:auto; padding:30px}
    .btn {font-size:30px; color:black; text-decoration:none}
    .on {background-color:SkyBlue}
    .off {background-color:LightSteelBlue}
    .zero {background-color:Thistle}
    td {font-size:30px; margin-top:50px; margin-bottom:5px}
    p {font-size:30px; margin-top:50px; margin-bottom:5px}
    </style></head>
    <body>
    <h1>Water Level Operation</h1>
    <table style='width:100%'><tr>
    </tr></table>
    <table style='width:100%'><tr>
    <td>
    <p>Press to Turn </p>
    <button class = 'btn off' id='light' onclick = 'sendData(id)'>

         light ON
         </button></td>
         <td>
         <p>Press to Turn </p>
         <button class = 'btn Off' id='Manual'
       onclick = 'sendData(id)'>Manual ON
       </button></td>
  </tr></table>

	<h1>Current Water Level Display Page</h1>

	<p> <button onclick='updateByAJAX_dbData()'>Fetch current water level</button></p>
	<p> <div id="dbdata"></div></p>

		

	<script type="text/javascript">

		function updateByAJAX_dbData(){
			const xhttp=new XMLHttpRequest();
			xhttp.onload=function(){
				document.getElementById("dbdata").innerText=this.responseText;
			}
			
			xhttp.open("GET", "viewLevel");
			xhttp.send();
		}

	</script>


  <script>
  function sendData(butn)
  {
    var URL, variab, text;
    if(butn == 'Manual')
    {
      URL = 'manualFunction';
      variab = 'LEDR';
    }
    else if(butn == 'light')
    {
      URL = 'autoFunction';
      variab = 'LEDG';
    }
    else if(butn == 'zero')
    {
      URL = 'zeroUrl';
      variab = 'counter';
    }
    if(butn == 'Manual' || butn == 'light')
  { // change button class and text 
    var state = document.getElementById(butn).className;
    state = (state == 'btn on' ? 'btn off' : 'btn on');
    text = (state == 'btn on' ? butn + ' OFF' : butn + ' ON');
      document.getElementById(butn).className = state;
      document.getElementById(butn).innerHTML =  text;
    }
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function(butn)
    {
      if (this.readyState == 4 && this.status == 200)
      document.getElementById(variab).innerHTML = this.
      responseText;
    };
    xhr.open('GET', URL, true);
    xhr.send();
  }
  
  setInterval(reload, 1000);
  function reload()
  {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function()
    {
      if(this.readyState == 4 && this.status == 200)
      document.getElementById('counter').innerHTML = this.
      responseText;
    };
    xhr.open('GET', 'countUrl', true);
    xhr.send();
  }
  </script>
  </body></html>

)";

 