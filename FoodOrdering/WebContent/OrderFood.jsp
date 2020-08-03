
<!DOCTYPE html>
<html>
<head>
  <metacharset="ISO-8859-1">
<title>Sweet and Salt Restaurant</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta name="viewport" content="width = 1050, user-scalable = no" />
<style>
		.billboard.light{
    		background-image: url('back.jpg');
    		 background-repeat:no-repeat;  
    		background-size:100% 200vh; 
    		height:200vh;
        text-align: center;
    		  
   		}
      th{
        font-size: 18px;
        text-align: center;
        font-weight: bold;
        color: black;
      }
      @keyframes scrolltop{
        0%{
          margin-top:500px;
          opacity:0;
        }
        25%{
          margin-top:375px;
          opacity:0.25;
        }
        50%{
          margin-top:250px;
          opacity:0.5;
        }
        75%{
          margin-top:125px;
          opacity:0.75;
        }
        100%{
          margin-top:0px;
          opacity:1;
        }
      }
      
</style>
</head>
<body>
<% session.setAttribute("food","ordering"); %>
<form action="/FoodOrdering/FoodServlet" method="post" name='form'>
	<section class="billboard light">
		
			<a href="#"><img style='width:4%;float:left' src="logo.PNG" alt="Restaurant Logo"/></a>
			<a href="Welcome.jsp"><button type="button" class="btn btn-primary">Home</button></a>
  			<a href="OrderFood.jsp"><button type="button" class="btn btn-success">Menu</button></a>
  			<a href="Contact.jsp"><button type="button" class="btn btn-danger">Contact US</button></a><br><br><br><br><br>
       <h1 style="color: red">Menu</h1>
      
       <table align="center" id='ta'>
         <tr>

          <th colspan="2">Items</th>
          <th>Quantity</th>
          <th>Price amount per one</th>
        </tr>
        <tr>
           <th><img src="idly.jfif" width="80px" height="60px"></th>
          <th>Idly</th>
          <th><input type="number" name= "idly" min="1" max="15"></th>
          <th>5</th>
        </tr>   
        <tr>
          <th><img src="dosai.jfif" width="80px" height="60px"></th>
          <th>Dosai</th>
          <th><input type="number" name="dosai" min="1" max="15"></th>
          <th>20</th>
        </tr>
        <tr>
          <th><img src="parotta.jfif" width="80px" height="60px"></th>
          <th>Parotta</th>
         <th><input type="number" name="parotta" min="1" max="15"></th>
          <th>10</th>
        </tr>
        <tr>
          <th><img src="masaldosai.jfif" width="80px" height="60px"></th>
          <th>MasalDosai</th>
          <th><input type="number" name="masaldosai" min="1" max="15"></th>
          <th>30</th>
        </tr>
        <tr>
          <th><img src="oniondosai.jfif" width="80px" height="60px"></th>
          <th>Onion Dosai</th>
          <th><input type="number" name="oniondosai" min="1" max="15" ></th>
          <th>30</th>
        </tr>
        <tr>
          <th><img src="eggfriedrice.jfif" width="80px" height="60px"></th>
          <th>EggFriedRice</th>
          <th><input type="number" name="EggFriedRice" min="1" max="15"></th>
          <th>60</th>
        </tr>
        <tr>
          <th><img src="eggnoodles.jfif" width="80px" height="60px"></th>
          <th>EggNoodles</th>
          <th><input type="number" name="EggNoodles" min="1" max="15"></th>
          <th>60</th>
        </tr>
        <tr>
          <th><img src="chickenfriedrice.jfif" width="80px" height="60px"></th>
          <th>ChickenFriedRice</th>
          <th><input type="number" name="ChickenFriedRice" min="1" max="15"></th>
          <th>70</th>
        </tr>
        <tr>
          <th><img src="chickennoodles.jfif" width="80px" height="60px"></th>
          <th>ChickenNoodles</th>
          <th><input type="number" name="ChickenNoodles" min="1" max="15"></th>
          <th>70</th>
        </tr>
        <tr>
          <th><img src="chappathi.jfif" width="80px" height="60px"></th>
          <th>Chappathi</th>
          <th><input type="number" name="chappathi" min="1" max="15"></th>
          <th>10</th>
        </tr>
        <tr>
          <th><img src="chickenbriyani.jfif" width="80px" height="60px"></th>
          <th>ChcikenBriyani</th>
          <th><input type="number" name="ChickenBriyani" min="1" max="15"></th>
          <th>100</th>
        </tr>
        <tr>
          <th><img src="eggbriyani.jfif" width="80px" height="60px"></th>
          <th>EggBriyani</th>
          <th><input type="number" name="EggBriyani" min="1" max="15"></th>
          <th>80</th>
        </tr>
        <tr>
          <th><img src="muttonbriyani.jfif" width="80px" height="60px"></th>
          <th>MuttonBriyani</th>
          <th><input type="number" name="MuttonBriyani" min="1" max="15"></th>
          <th>120</th>
        </tr>
        <tr>
      <th><img src="chillichicken.jfif" width="80px" height="60px"></th>
          <th>ChilliChciken</th>
          <th><input type="number" name="ChilliChicken" min="1" max="15"></th>
          <th>60</th>
        </tr>
       <tr>
        <th></th>
       <th><input type="button" onclick="calculate()" value="submit"></th>
       <th><input type="reset" value="reset"></th></tr> 
       <tr>
        <th></th>
        <th>Total Amount</th>
         <th><input type='number' name='totalamount'></th></tr>
       <tr>
        <th></th>
        <th><b><h4><input type="submit" class="btn btn-danger" name="confirm" value='confirm'></th></tr>
       </form>
       </table>
     
      </section>
      <script type="text/javascript">
        function calculate() {
          let v=0;
          v+=+document.form.idly.value*5
          v+=+document.form.dosai.value*20
          v+=+document.form.masaldosai.value*30
          v+=+document.form.oniondosai.value*30
          v+=+document.form.parotta.value*10
          v+=+document.form.EggFriedRice.value*60
          v+=+document.form.EggNoodles.value*60
          v+=+document.form.ChickenFriedRice.value*70
          v+=+document.form.ChickenNoodles.value*70
          v+=+document.form.ChickenBriyani.value*100
          v+=+document.form.MuttonBriyani.value*120
          v+=+document.form.EggBriyani.value*80
          v+=+document.form.chappathi.value*10
          v+=+document.form.ChilliChicken.value*60
          document.form.totalamount.value=v; 
        }
      </script>
</body>
</html>     