<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>  
    <html>  
    <head>  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>  
    <script>  
/*     $(document).ready(function(){  
        $("#hide").click(function(){  
        $("p").hide(1000);  
    });  
    $("#show").click(function(){  
        $("p").show(500);  
    });  
});   
    $(document).ready(function(){    
        $("button").click(function(){    
            $("div.d1").toggle(1500);    
        });    
    });
    $(document).ready(function(){  
        $("button").click(function(){  
            $("#div1").fadeOut();  
            $("#div2").fadeOut("slow");  
            $("#div3").fadeOut(3000);  
        });  
    });
     */
    $(document).ready(function(){  
        $("button").click(function(){  
            $("#div1").fadeToggle();  
            $("#div2").fadeToggle("slow");  
            $("#div3").fadeToggle(1000);  
        });  
    });
    </script>  
    </head>  
    <body>  
<!--     <p>  
    <b>This is a little poem: </b><br/>  
    Twinkle, twinkle, little star<br/>  
    How I wonder what you are<br/>  
    Up above the world so high<br/>  
    Like a diamond in the sky<br/>  
    Twinkle, twinkle little star<br/>  
    How I wonder what you are  
    </p>  
    <button id="hide">Hide</button> 
    <button id="show">Show</button> <br><br>
    
    <div class="d1" style="border:1px solid black;padding:10px;width:250px">    
<p><b>This is a little poem: </b><br/>      
Twinkle, twinkle, little star<br/>      
How I wonder what you are<br/>      
Up above the world so high<br/>      
Like a diamond in the sky<br/>      
Twinkle, twinkle little star<br/>      
How I wonder what you are</p>     
</div>    
<button>Hide/Show</button> --> <br><br>

<div id="div1" style="width:80px;height:80px;background-color:red;"></div><br>  
<div id="div2" style="width:80px;height:80px;background-color:green;"></div><br>  
<div id="div3" style="width:80px;height:80px;background-color:blue;"></div>  
<button>Click to fade in boxes</button> 
    </body>  
    </html> 
