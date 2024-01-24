import router from '@ohos.router'
import web_webview from '@ohos.web.webview';

class photoWall{
  photoAddress: Resource

  constructor(photoAddress: Resource) {
    this.photoAddress = photoAddress
  }

}

@Entry
@Component
struct about {

  private photoAddress: Array<photoWall> = [
    new photoWall($r('app.media.photo1')),
    new photoWall($r('app.media.photo2')),
    new photoWall($r('app.media.photo3')),
    new photoWall($r('app.media.photo4')),
    new photoWall($r('app.media.photo5')),
    new photoWall($r('app.media.photo6')),
    new photoWall($r('app.media.photo7')),
    new photoWall($r('app.media.photo8')),
    new photoWall($r('app.media.photo9')),
    new photoWall($r('app.media.photo10')),
    new photoWall($r('app.media.photo11')),
    new photoWall($r('app.media.photo12')),
    new photoWall($r('app.media.photo13'))
  ]

  webviewController: web_webview.WebviewController = new web_webview.WebviewController();

 build() {
  Column() {
      Row(){
        Blank()
          .height(55)

        Button('首页')
          .fontSize(25)
          .borderRadius(20)
          .height(5)
          .backgroundColor('#000000')
          .margin({left:20, right:20})
          .onClick(() => {
            router.back()
          })
      }

      Row(){
        Text('关于')
          .fontSize(25)
          .fontColor('#ffffff')
          .padding({top:0})
      }
      .width('100%')
      .margin({bottom:20})
      .justifyContent(FlexAlign.Center)
      .padding({top:27, bottom:25})

      Row(){
        Image($r("app.media.myHeadPortrait"))
          .width('25%')

        Blank()
          .width(60)

        Column(){
          Text("PRODUCER")
            .fontColor('#ffffff')

          Text("Nick")
            .fontColor('#ffffff')
            .fontSize(40)
        }
      }
    .padding({bottom:30})

    Row(){
      Image($r('app.media.enterWeb'))
        .width('40%')
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Next' button.`)
          router.pushUrl({ url: 'pages/ToInternet' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err) => {
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })
    }

    Row(){
      Text('壁纸墙')
        .fontColor('#ffffff')
        .fontSize(25)
    }
    .padding({top:20,bottom:20})

      List({space:20}){
        ForEach(
          this.photoAddress,
          (photoWall: photoWall) => {
            ListItem(){
              Column() {
                Row() {
                  Image(photoWall.photoAddress)
                    .syncLoad(true)
                }
                .borderRadius(10)
              }
            }
          }
        )
      }
      .width('76%')
      .height('78%')
      .margin({left:10})
      .layoutWeight(1)

    Blank()
      .height(50)
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundImage($r('app.media.background5'))
    .backgroundImageSize(1*1)

  }
}