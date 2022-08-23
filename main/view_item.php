<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Add New Item</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../asset/mm_training.css" type="text/css" />
<style>
input, button, select, textarea {
width:100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
}
#back { font-size:16px;
	border-radius:5px;
    color: white;
	padding:10px;
}
.content {
width:100%;
    background-color: #f1f1f1;
    padding: 20px;
	border-radius:5px;
}
#td{ border-bottom:1px solid #999999;
border-left:1px solid #999999;}
#th{ border-bottom:2px solid #999999;
border-left:2px solid #999999;}

.style1 {color: #000066}
</style>

</head>
<body bgcolor="#64748B">
<table id="table" width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#26354A">
	<td width="15" nowrap="nowrap"><img src="../asset/mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td height="70" colspan="2" class="logo" nowrap="nowrap">Glory B  <span class="tagline">INVOICING SYSTEM </span></td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#FF6600">
	<td colspan="4"><img src="../asset/mm_spacer.gif" alt="" width="1" height="4" border="0" /></td>
	</tr>

	<tr bgcolor="#D3DCE6">
	<td colspan="4"><img src="asset/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#FFCC00">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td width="705" colspan="2" height="24">
	<table border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td class="navText" align="center" nowrap="nowrap"><a href="index.php">HOME</a></td>
		  <td class="navText" align="center" nowrap="nowrap"><a href="add_item.php">ADD NEW ITEM</a></td>
		  <td class="navText" align="center" nowrap="nowrap"><a href="add_quant.php">ADD ITEM QUANTITY</a></td>
		  <td class="navText" align="center" nowrap="nowrap"><a href="view_item.php">VIEW ITEMS</a></td>
		  <td class="navText" align="center" nowrap="nowrap"><a href="trans.php">PERFORM TRANSACTION</a></td>
		  		  <td class="navText" align="center" nowrap="nowrap"><a href="view_rec.php">VIEW TRANSACTION RECORD</a></td>
		  <td class="navText" align="center" nowrap="nowrap"><a href="../index.php">LOG OUT</a></td>

        </tr>
      </table>	</td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#D3DCE6">
	<td colspan="4"><img src="asset/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#FF6600">
	<td colspan="4"><img src="asset/mm_spacer.gif" alt="" width="1" height="4" border="0" /></td>
	</tr>

	<tr bgcolor="#D3DCE6">
	<td colspan="4"><img src="asset/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#D3DCE6">
	<td width="15" valign="top">&nbsp;</td>
	<td width="35"><img src="asset/mm_spacer.gif" alt="" width="35" height="1" border="0" /></td>
	<td width="710" valign="top"><br />
	&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="2" width="500">
		<tr>
		<td class="pageName">View Items  </td>
		</tr>

		<tr>
		<td class="bodyText">
<div align="center">
   <div align="center" class="content">
<?php
include('connect.php');

$sql="SELECT * FROM item ORDER BY item_id DESC";
$result=mysql_query($sql);
?>   

<table width="705" height="71" cellpadding="3">
  <tr>
    <th id="th" scope="col"><h2 class="style1">S/N</h2></th>
    <th id="th" scope="col"><h2 class="style1">Item Name</h2></th>
    <th id="th" scope="col"><h2 class="style1">Price</h2></th>
    <th id="th" scope="col"><h2 class="style1">Quantity Available</h2></th>
  </tr>
  <?php
  $i=1;
  while($rows=mysql_fetch_assoc($result)){
  ?>
  <tr>
    <td id="td"><h3 align="center"><?php echo $i++; ?></h3></td>
    <td id="td"><h3><?php echo $rows['item_name']; ?></h3></td>
    <td id="td"><h3 align="center">#<?php echo $rows['price']; ?></h3></td>
    <td id="td"><h3 align="center"><?php echo $rows['quantity']; ?></h3></td>
  </tr>
  <?php
  }
  mysql_close();
  ?>
   <tr>
    <td id="back" colspan="4" align="center"><a href="index.php">BACK</a></td>
  </tr>
</table>



</div>
</div>	
		
		
		
		
		
		<br /></td>
		</tr>
	</table>
	 <br />	</td>
	<td>&nbsp;</td>
	</tr>

	<tr>
	<td width="15">&nbsp;<br />
	&nbsp;<br />	</td>
    <td width="35">&nbsp;</td>
    <td width="710">&nbsp;</td>
	<td width="100%">&nbsp;</td>
  </tr>
</table>
</body>
</html>

