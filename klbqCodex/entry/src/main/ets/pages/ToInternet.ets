import webview from '@ohos.web.webview'
@Entry
@Component
struct toInternet{

  myController:WebviewController = new webview.WebviewController()
  build(){
    Row(){
      Column(){
        Web({
          src:'https://klbq.qq.com/cp/HappyOpenBetaTest/indexpc.html',
          controller:this.myController
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}