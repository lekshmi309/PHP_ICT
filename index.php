<?php
$insert=false;
if(isset($_POST['institution']))
{
//local host
 //$server="localhost";
 //$username="root";
 //$password="";
//remotesql
$server="remotemysql.com";
$username="IRFiY5URIk";
$password="L5FJ27JVNc";
$database="IRFiY5URIk";
 $con=mysqli_connect($server,$username,$password,$database);

 if(!$con)
 {
     die("Connection to this database failed ".mysqli_connect_error());
     
 }
 
 $institution=$_POST['institution'];
 $district=$_POST['district'];
 $localbodytype=$_POST['localbodytype'];
 $localbodyname=$_POST['localbodyname'];
 $address=$_POST['address'];
 $pincode=$_POST['pincode'];

 $sql="INSERT INTO `institution` (`Institution`, `district`, `localbodytype`, `localbodyname`, `address`, `pin`) VALUES ('$institution', '$district', '$localbodytype', '$localbodyname', '$address', '$pincode');";
 

 
 if($con->query($sql)==true)
 {
     $insert=true;
    //echo "SUCessfully inserted";
 }
 else
 {
     echo"ERROR:$sql <br> $con->error";
 }

 $con->close();
}
?>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Php Project</title>
    <link rel="stylesheet" href="style.css">
    
    
</head>
<body>
    <div class="container">
        <h3 align="center"> REGISTRATION FORM</h3>
        
    </div>
    <div class="container2">
        <form name="myform" action="index.php" method="post" onsubmit="return validateForm()">
            <input type="text" name="institution" id="institution" placeholder="Enter Institution name"  required>
            <br>
            
            <select name="district" id="district" required>

                <option value="">Select District</option>
                <?php
                    //$server="localhost";
                    //$username="root";
                    //$password="";
                    //$database="project_db";
                    //remote sql
                    $server="remotemysql.com";
                    $username="IRFiY5URIk";
                    $password="L5FJ27JVNc";
                    $database="IRFiY5URIk";
                   
                    $conn=mysqli_connect($server,$username,$password,$database);
                   
                    if(!$conn)
                    {
                        die("Connection to this database failed ".mysqli_connect_error());
                        
                    }
                    $drop_query="select * from districts";
                    $result_drop=mysqli_query($conn,$drop_query);
                    $num=mysqli_num_rows($result_drop);
                     if($num>0)
                        {
                            while($row=mysqli_fetch_assoc($result_drop))
                                {
                                    echo "<option value='".$row['Name']."'>".$row['Name']."</option>";
                                }

                         }
                
                $conn->close();
                ?>
            </select>
            <br>
            <select name="localbodytype" id="localbodytype"  required >
                <option value="" >Select local body type</option>
                <option value="Panchayath">Panchayath</option>
                <option value="Muncipality">Muncipality</option>
                <option value="Corporation">Corporation</option>
            </select>   
            
            <input type="text" name="localbodyname" id="localbodyname" placeholder="Enter Your Local Body Name"required>
            <input type="text" name="address" id="address"placeholder="Enter Your Address" required>
            <input type="text" name="pincode" id="pincode" placeholder="Enter Your Pincode" pattern="[0-9]{6}" size="6" maxlength="6"minlength="6" required>
            <input type="submit" name="Submit" id="Submit">
        </form>
        <?php
        if($insert==true)
         echo "<p class='submsg'>Thanks for submitting </p>";
        ?>

    </div>
    

<script src="index.js"></script>
</body>
</html>