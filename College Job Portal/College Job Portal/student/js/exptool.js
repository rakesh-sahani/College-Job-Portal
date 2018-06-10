// JavaScript Document// JavaScript Document
var j;
 var arr=[];
 

(function() {
	//document.getElementById('decanvas').width=500;
	//document.getElementById('decanvas').height=500;
decanvas= this.__canvases;
fabric.loadSVGFromURL("../product_img/"+file_name, function(objects, options) {
  var i=0;
  j=0;
 
  objects[0].set('selectable', false);
  console.log(objects[0].getWidth());
   console.log(objects[0].getHeight());
    document.getElementById('decanvas').width=objects[0].getWidth();
   document.getElementById('decanvas').height=objects[0].getHeight();
   if( screen.width<500)
   {
	   if(objects[0].getWidth()>objects[0].getHeight())
	   {
	   var factor=-.05+(objects[0].getHeight()/objects[0].getWidth());
	    document.getElementById('decanvas').style= "-webkit-transform : scale("+factor+");-webkit-transform-origin : 0 0;"
	   }
	   else
	   {
	    var factor=(objects[0].getWidth()/objects[0].getHeight());
	    document.getElementById('decanvas').style= "-webkit-transform : scale("+factor+");-webkit-transform-origin : 0 0;"
	   }
}
  decanvas= this.__canvases=new fabric.Canvas('decanvas');

  while(objects[i]){
	    
if(objects[i].type=="text")
{
arr[j] = new fabric.Text(objects[i].text, {
  left:objects[i].transformMatrix[4],
    top: objects[i].transformMatrix[5],
	fontSize:objects[i].fontSize,
	fill: objects[i].fill,
	 fontFamily:objects[i].fontFamily,
      fontSize: objects[i].fontSize,
      fontStyle: objects[i].fontStyle,
     fontWeight: objects[i].fontWeight,
});

decanvas.add(arr[j]);

clickEvent(arr,j);

 decanvas.renderAll();
 
	 j++;
}
else{
	arr[j]=objects[i];
	
	 decanvas.add(arr[j]);
	 clickEvent(arr,j);
 decanvas.renderAll();
 j++;
}
i++;

  }

}); 
})();

function tosvg(str){
	var svg=decanvas.toSVG();
	//alert(decanvas.toSVG());
	//window.open(decanvas.toDataURL('png'));
	//var d="data="+svg+"&file="+str;
	var obj={data:svg,file:str};
	var json = JSON.stringify( obj );
	//console.log(d);
	var url="tool_img_save.php";
	/*var xmlHttp=new XMLHttpRequest();
	xmlHttp.onreadystatechange=function()
 	        {	   
				if(xmlHttp.readyState==4 && xmlHttp.status==200)
  				{
  					var msg=xmlHttp.responseText.trim();  					
					if(msg=="done1")
					{				
						//document.getElementById('accept_order').className="hidden";
						//document.getElementById("err_id").innerHTML="* Order Inserted";
					window.location="order.php";				
					}	
					else if(msg=="done2")
					window.location="users.php";				
				else
					console.log(msg);
				}
			}
		xmlHttp.open("POST",url,true);
			xmlHttp.send("data=svg&file=filename");*/
	//alert(decanvas.toSVG());
	
	$.ajax({
		type:'POST',
		url: url,
		data: json,
		cache: false,
		contentType:  'application/json; charset=utf-8',
		processData: "json",
		success:function(data) {
			document.getElementById('err').innerHTML="Saved";
			
			
		},
			error: function(data) {
				document.getElementById('err').innerHTML="Error in Saving";
		}
	});
	};
	
function clickEvent(name,j){
	
	name[j].on('selected', function() {
	 //console.log(name[j].text);
	 document.getElementById('toolbox').className="show";
	 input(name,j);
	 if(name[j].type=='text'){
	 document.getElementById('textopt').className="show";
	}
	else
	{
	 document.getElementById('textopt').className="hidden";
	 
	}
	
	 });
	};
	
function input(name,j){
	 var inputBox = document.getElementById('input');
	 var colorBox = document.getElementById('color');
	 var sizeBox = document.getElementById('size');
	  var fontBox = document.getElementById('font');
	  var remove=document.getElementById('remove');
	   var bringUp=document.getElementById('bringUp');
	    var bringDown=document.getElementById('bringDown');
	  
	
	

sizeBox.onchange = function() {
name[j].set({fontSize:sizeBox.value});
decanvas.remove(name[j]);
decanvas.add(name[j]);
decanvas.renderAll();
};
fontBox.onchange = function() {
name[j].set({fontFamily:fontBox.value});
decanvas.remove(name[j]);
decanvas.add(name[j]);
decanvas.renderAll();
};
colorBox.onchange = function() {
var color=rgba(colorBox.value);
name[j].set({fill:color});
decanvas.renderAll();
};
inputBox.onkeyup = function() {
name[j].set({text: inputBox.value});
decanvas.remove(name[j]);
decanvas.add(name[j]);
decanvas.renderAll();
	};
remove.onclick=function(){
	name[j].remove();
	decanvas.renderAll();
	};	
bringUp.onclick=function(){
name[j].bringForward();
decanvas.renderAll();
	};
bringDown.onclick=function(){
name[j].sendBackwards();
decanvas.renderAll();
	};

	};	
function rgba(hex){
    hex = hex.replace('#','');
    r = parseInt(hex.substring(0,2), 16);
    g = parseInt(hex.substring(2,4), 16);
    b = parseInt(hex.substring(4,6), 16);

    result = 'rgb('+r+','+g+','+b+')';
    return result;
};
function newText(){
	arr[j] = new fabric.Text("New Text", {
  fontWeight: 'normal',
  left:0,
    top:0,
	fontSize: 30,
	fill: 'white'
});
//console.log("i am here");
decanvas.add(arr[j]);
decanvas.renderAll();
clickEvent(arr,j);
j++;
	};
	
function newImage(url){
	console.log(url);
	fabric.Image.fromURL(url, function(oImg) {
  	arr[j]=oImg;
	arr[j].set({width:150});
	arr[j].set({height:150});
	decanvas.add(arr[j]);
	decanvas.renderAll();
clickEvent(arr,j);
document.getElementById('imagebox').className='hidden';
});


j++;
	}
	
	
	
	
	
	$('#form-image-uploader').on('submit', (function(e) {
	e.preventDefault();

	var formData = new FormData();
	formData.append('file', $('input[type=file]')[0].files[0]);
var Url="upload_tool_img.php";
	$.ajax({
		type:'POST',
		url: Url,
		data: formData,
		cache: false,
		contentType: false,
		processData: false,
		success:function(data) {
			console.log(data);
			//document.getElementById('err').innerHTML="null";
			newImage(data);
			
		},
			error: function(data) {
		}
	});
}));
 

//sendBackwards(intersectingopt)