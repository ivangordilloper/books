
<body id="chat">

<div class="row padd"></div>

<div id="row">
    <div id="row menu">
        <div class="col-lg-4 col-lg-offset-4">
        <p class="welcome">Welcome, ${user.nombre}<b></b></p><div style="clear:both"></div>
        </div>
    </div>
    <div class="row" ></div>
    <div id="chatbox"></div>
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <form name="message" action="">
                <div class="row ">
                <div class="col-lg-8 col-lg-offset-1">
                    <input  name="usermsg" type="text" id="usermsg" size="63" />
                </div>
                    <div class="col-lg-3 submit"><input name="submitmsg" type="submit"  id="submitmsg" value="Send" /></div>
                </div>

            </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript">
// jQuery Document
$(document).ready(function(){
    console.log("hola")
    loadLog()
    var element = document.getElementById('chatbox')
    console.log( element.scrollTop)
    element.scrollTop = 1000;
    console.log( element.scrollTop)

});


$("#submitmsg").click(function(){
    var clientmsg = $("#usermsg").val();
    $.post("/chat/setData", {text: clientmsg});
    $("#usermsg").attr("value", "");


});


function loadLog(){
    var oldscrollHeight = $("#chatbox").attr("scrollHeight") - 20; //Scroll height before the request
    console.log(oldscrollHeight)
    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/chat/log",
        "method": "POST",
        "headers": {
            "cache-control": "no-cache",
            "postman-token": "6b7c4a67-898e-a4b6-9263-f552fd2b9db0"
        }
    }

    $.ajax(settings).done(function (response) {

        $("#chatbox").html(response); //Insert chat log into the #chatbox div

        //Auto-scroll
        var newscrollHeight = $("#chatbox").attr("scrollHeight") - 20; //Scroll height after the request
        if (newscrollHeight > oldscrollHeight) {
            var element =  $("#chatbox");
            console.log(element)
            element.scrollTop = element.scrollHeight - element.clientHeight;
            //Autoscroll to bottom of div
        }
        console.log(response);
    });

}
</script>

</body>
