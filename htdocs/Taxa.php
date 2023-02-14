<?php

$valor=$_POST{'v'};
if($valor %2 == 0){
echo"<br>valor digitado par",$valor;
}
if($valor %2 == 1){
echo "<br>valor digitado e impar ",$valor;
}



?>