
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

                <div class="row ">
                <div class="col-lg-8 col-lg-offset-1">
                    <label for="usermsg"></label><input name="usermsg" type="text" id="usermsg" onfocus="clear()" size="63" />
                </div>
                    <div class="col-lg-3 submit"><input name="submitmsg" type="submit" id="submitmsg" value="Send" /></div>
                </div>

        </div>
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript">
// jQuery Document



function clear() {

    $("#usermsg").attr("value", "");

}
$("#submitmsg").click(function sendData() {

    var clientmsg = $("#usermsg").val();
    $.post(
        "/chat/setData",
            /* string like this: "text=me%20man&mail=peace@man.com or an object": */
        {text: clientmsg}
    )
    /* you can check if the request was submitted successfully */
        .success(function(data) {
            $("#usermsg").attr("value", "");
            var elems = document.getElementsByName("usermsg");
            var l = elems.length;
            for (var i = 0; i < l; ++i){
                elems[i].value="";
            }
            loadLog();
        })
        /* you can check if the request failed */
        .error(function() {

            $("#usermsg").attr("value", "");

            alert("Error!");

        });
    $("#usermsg").attr("value", "");




});


function loadLog(){

    var oldscrollHeight = $("#chatbox").attr("scrollHeight") - 20; //Scroll height before the request

    $.post(
        "/chat/log",
            /* string like this: "text=me%20man&mail=peace@man.com or an object": */
        {text: "hola"}
    )
    /* you can check if the request was submitted successfully */
        .success(function(data) {
            $("#chatbox").html(data); //Insert chat log into the #chatbox div

            //Auto-scroll
            var newscrollHeight = $("#chatbox").attr("scrollHeight") - 20; //Scroll height after the request
            if (newscrollHeight > oldscrollHeight) {
                var element =  $("#chatbox");
                console.log(element)
                element.scrollTop = element.scrollHeight - element.clientHeight;
                //Autoscroll to bottom of div
            }
        })
        /* you can check if the request failed */
        .error(function() {
            alert("Error!");
        });


}
</script>

</body>
