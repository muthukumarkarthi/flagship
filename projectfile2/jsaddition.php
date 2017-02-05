<html>

	<body>
		<lable>field one</lable>
		<input type="text" id="txt1"  onkeyup="(sum() && fun2());" value=0 /></br>
		<lable>field two</lable>
		<input type="text" id="txt2"  onkeyup="(sum() && fun2());" value=0 /></br>
		<lable>field three</lable>
		<input type="text" id="txt4"  onkeyup="(sum() && fun2());" value=0 /></br>
		<lable>output</lable>
		<input type="text" id="txt3" /></br>
		<lable>division of field one</lable>
		<input type="text" id="txt5" /></br>
	</body>
	
	<script>
		function sum() {
            var txtFirstNumberValue = document.getElementById('txt1').value;
            var txtSecondNumberValue = document.getElementById('txt2').value;
			var three = document.getElementById('txt4').value;
            var result = parseInt(txtFirstNumberValue) + parseInt(txtSecondNumberValue)+ parseInt(three);
			var result2 =  parseInt(txtFirstNumberValue) / 12;
            if (!isNaN(result)) {
                document.getElementById('txt3').value = result;
				document.getElementById('txt5').value = result2;
            }
			return true;
			
			
        }
		
		function fun2()
		{
			//alert();
			var txtFirstNumberVal = document.getElementById('txt1').value;
			var res = parseInt(txtFirstNumberVal)*12;
			
			if (!isNaN(res)) {
                document.getElementById('txt5').value = result;
            }
			
		}
	</script>
	
</html>