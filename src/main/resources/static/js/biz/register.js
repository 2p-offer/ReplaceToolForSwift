var prev="../../swiftSource";
var usrsel;
var pwdsel;
var telsel;
var vercodesel;
var backgroundimgs=[];
var backgroundindex=0;
$(function () {
    init();

    doTask();

    $("#showpreview").on("click",function () {

        usrsel=prev+$("#usersel").val();
        pwdsel=prev+$("#pwdsel").val();
        telsel=prev+$("#telsel").val();
        vercodesel=prev+$("#vercodesel").val();
        backgroundimgs=$("#backgroundsel").val().split(",");
        $("#userimg").attr('src',usrsel);
        $("#pwdimg").attr('src',pwdsel);
        $("#pwd2img").attr('src',pwdsel);
        $("#mobileimg").attr('src',telsel);
        $("#vercodeimg").attr('src',vercodesel);

        //  登陆页
        $("#loginuserimg").attr('src',usrsel);
        $("#loginpwdimg").attr('src',pwdsel);
        // 绑定页
        $("#bundleuserimg").attr('src',usrsel);
        $("#bundlepwdimg").attr('src',pwdsel);
        $("#bundlemobileimg").attr('src',telsel);
        $("#bundlevercodeimg").attr('src',vercodesel);
        //找回密码页
        $("#pwdpwdimg").attr('src',pwdsel);
        $("#pwdpwd2img").attr('src',pwdsel);
        $("#pwdmobileimg").attr('src',telsel);
        $("#pwdvercodeimg").attr('src',vercodesel);

    })

    $("#besure").on("click",function () {
        if(window.confirm("确定要生成更新swift项目么？")){

            var user = $("#userimg").attr('src');
            var pwd = $("#pwdimg").attr('src');
            var tel = $("#mobileimg").attr('src');
            var ver = $("#vercodeimg").attr('src');
            var background = $("#previewContainer").css('backgroundImage');
            var jsonStrings={};
            jsonStrings["user"]=user;
            jsonStrings["pwd"]=pwd;
            jsonStrings["tel"]=tel;
            jsonStrings["ver"]=ver;
            jsonStrings["bg"]=background;
            var jsons=JSON.stringify(jsonStrings);
            $.ajax({
                cache : true,
                type : "POST",
                contentType: "application/json; charset=utf-8",
                url : "/register/replaceSwift",
                data : jsons,
                dataType: "json",
                async : false,
                error : function(request) {
                    parent.layer.alert("Connection error");
                },
                success : function(data){
                    if("ok"==data){
                        alert("操作成功！")
                    }
                    alert(data);
                }
            });
        }else{
            alert("cansel");
            return;
        }
    });

    $("#background").on("click",function () {

        setInterval(function(){
            replaceBackGroundImg();
        },2000);
    });

    $("#showlogin").on("click",function () {
        $("#topdiv").css("display","none");
        $("#bundletopdiv").css("display","none");
        $("#pwdtopdiv").css("display","none");
        $("#logintopdiv").css("display","block");
    });

    $("#showregister").on("click",function () {
        $("#topdiv").css("display","block");
        $("#bundletopdiv").css("display","none");
        $("#pwdtopdiv").css("display","none");
        $("#logintopdiv").css("display","none");
    });

    $("#showbundle").on("click",function () {
        $("#topdiv").css("display","none");
        $("#bundletopdiv").css("display","block");
        $("#pwdtopdiv").css("display","none");
        $("#logintopdiv").css("display","none");
    });

    $("#showpwd").on("click",function () {
        $("#topdiv").css("display","none");
        $("#bundletopdiv").css("display","none");
        $("#pwdtopdiv").css("display","block");
        $("#logintopdiv").css("display","none");
    });


});

function replaceBackGroundImg() {
    if(backgroundindex==backgroundimgs.length){
        backgroundindex=0;
    }
    var imgname=backgroundimgs[backgroundindex];
    $("#previewContainer").css("background-image","url("+prev+imgname+")");
    backgroundindex++;
}
function init() {
    $.ajax({
        cache : true,
        type : "GET",
        url : "/register/getSelectDataList",
        async : false,
        error : function(request) {
            parent.layer.alert("Connection error");
        },
        success : function(data){
            var jsondata=eval("("+data+")")
            var user = jsondata.user;
            for(var i in user){
                var dirname=user[i]+"/user.png";
                $("#usersel").append("<option value='"+dirname+"'>"+i+"</option>");

            }
            var pwd = jsondata.password;
            for(var i in pwd){
                var dirname=pwd[i]+"/password.png";
                $("#pwdsel").append("<option value='"+dirname+"'>"+i+"</option>");

            }
            var telsel = jsondata.mobile;
            for(var i in telsel){
                var dirname=telsel[i]+"/mobile.png";
                $("#telsel").append("<option value='"+dirname+"'>"+i+"</option>");

            }
            var vercodesel = jsondata.vercode;
            for(var i in vercodesel){
                var dirname=vercodesel[i]+"/vercode.png";
                $("#vercodesel").append("<option value='"+dirname+"'>"+i+"</option>");

            }

            var backgroundsel = jsondata.background;
            for(var i in backgroundsel){
                console.log(backgroundsel);
                var dirname=backgroundsel[i];
                $("#backgroundsel").append("<option value='"+dirname+"'>"+i+"</option>");

                backgroundimgs=dirname.split(",");
            }
        }
    });
}

function doTask(){
    setInterval(function(){
        replaceBackGroundImg();
    },1000);
}