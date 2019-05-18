function activies_addcheck(){
	var atv_place=$("#atv_place").val();
	var atv_title=$("#atv_title").val();
	
	
	if(atv_place==""){
		$("#atv_placespan").css("color","red");
		$("#atv_placespan").html("交往记录地址不能为空");
		return false;
	}else if(atv_place!=""){
		$("#atv_placespan").css("color","green");
		$("#atv_placespan").html("(●'◡'●)");
		}
	
	if(atv_title==""){
		$("#atv_titlespan").css("color","red");
		$("#atv_titlespan").html("交往概要不能为空");
		return false;
	}else if(atv_title!=""){
		$("#atv_titlespan").css("color","green");
		$("#atv_titlespan").html("(●'◡'●)");
		}
	
	if(atv_place!=""&&atv_title!=""){
		return true;
	}else{
		alert("必要信息不能为空");
		return false;
	}
}