/**
 * Created by tarena on 18-11-21.
 */
function getXhr(){
    if(window.XMLHttpRequest){
    var xhr = new XMLHttpRequest();
}else{
    return new ActiveXObject("Microsoft.XMLHTTP");
}
}