/**
 *为了测试jwplay播放器的js
 */
var f='10041.flv';
jwplayer('myplayer').setup({
    file:f ,
    width: '640',
    height: '480',
    image:"10041_img.jpg",//视频预览图片
    //controlbar: "over",//控制条位置
    controlbar: "none",
    screencolor :"#fff"//播放器颜色
});
