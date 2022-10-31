
function dateFormattery(date){
//Object对象转为日期格式yyyy-MM-dd&nbs hh:mm:dd
    var date=new Date(date);
    var strDate = date.getFullYear()+"-";
    var month=date.getMonth()+1;
    var day=date.getDate();
    var hours=date.getHours();
    var minutes=date.getMinutes();
    var seconds=date.getSeconds();
    //格式化日期,月日时分秒保持两位
    strDate=strDate+(month>8?month:"0"+month)+"-"
        +(day>9?day:"0"+day)+"&nbsp"
        +(hours>9?hours:"0"+hours)+":"
        +(minutes>9?minutes:"0"+minutes)+":"
        +(seconds>9?seconds:"0"+seconds);
    return strDate ;
}

function dateFormatter2(date){
//Object对象转为日期格式yyyy-MM-dd
    var date=new Date(date);
    var strDate = date.getFullYear()+"-";
    var month=date.getMonth()+1;
    var day=date.getDate();
    //格式化日期,月日时分秒保持两位
    strDate=strDate+(month>8?month:"0"+month)+"-"
        +(day>9?day:"0"+day)
    return strDate ;
}
