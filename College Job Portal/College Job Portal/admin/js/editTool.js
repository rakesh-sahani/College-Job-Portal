// JavaScript Document// JavaScript Document
var j;
 var arr=[];
 

(function() {
decanvas= this.__canvases=new fabric.Canvas('decanvas');
fabric.loadSVGFromURL("img/exp.svg", function(objects, options) {
  var i=0;
  j=0;
 
  objects[0].set('selectable', false);
  while(objects[i]){
if(objects[i].type=="text")
{
arr[j] = new fabric.Text(objects[i].text, {
  left:objects[i].transformMatrix[4],
    top: objects[i].transformMatrix[5],
	fontSize:objects[i].fontSize,
	fill: objects[i].fill
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
 console.log(objects[i].getTransformMatrix());
 decanvas.renderAll();
 j++;
}
i++;
  }
}); 
})();

function tosvg(){
	alert(decanvas.toSVG());
	};
	
function clickEvent(name,j){
	
	name[j].on('selected', function() {
	 //console.log(name[j].text);
	 document.getElementById('toolbox').className="visible";
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
  left:100,
    top:250,
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
	console.log("url");
	fabric.Image.fromURL(url, function(oImg) {
  	arr[j]=oImg;
	decanvas.add(arr[j]);
	decanvas.renderAll();
clickEvent(arr,j);
});


j++;
	}
	$('#form-image-uploader').on('submit', (function(e) {
	e.preventDefault();

	var formData = new FormData();
	formData.append('file', $('input[type=file]')[0].files[0]);
var Url="upload.php";
	$.ajax({
		type:'POST',
		url: Url,
		data: formData,
		cache: false,
		contentType: false,
		processData: false,
		success:function(data) {
			newImage(data);
		},
			error: function(data) {
		}
	});
}));
 

//sendBackwards(intersectingopt)