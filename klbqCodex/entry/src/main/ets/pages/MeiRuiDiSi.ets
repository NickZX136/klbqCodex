import router from '@ohos.router'
@Entry
@Component
struct meiRuiDiSi {

  @State handlePopup: boolean = false

  private characterName:string = '梅瑞狄斯'
  private characterAddress:Resource = $r('app.media.meiRuiDiSi')
  private characterIntro:string = '      剪刀手的幕后领袖和创立者之一，尚在组织中的三贤之一。' +
  '理性主义，以理解宇宙为最终目的，无时不刻不在思考。' +
  '并非沉默寡言之人，但也很难以普通人的方式和她交流。'


  build() {
    Column() {

      Blank()
        .height(13)
      Row(){
        Button('返回')
          .fontSize(25)
          .borderRadius(20)
          .height(25)
          .backgroundColor('#000000')
          .margin({left:20, right:20})
          .onClick(() => {
            router.back()
          })
      }


      Row(){
        Text(this.characterName)
          .fontSize(25)
          .fontColor('#ffffff')
          .textAlign(TextAlign.Start)
      }
      .justifyContent(FlexAlign.Start)

      .width('100%')
      .margin({bottom:20})
      .justifyContent(FlexAlign.Center)
      .padding({top:40, bottom:24})



      List({space:8}){
        ListItem(){
          Column(){
            Row(){
              Image(this.characterAddress)
            }
            .padding({bottom:10})

            Row(){
              Text('简介')
                .fontSize(25)
                .letterSpacing(20)
                .fontColor('#FFFFFF')
            }
            .padding({bottom:10})

            Row(){
              Text(this.characterIntro)
                .fontSize(18)
                .letterSpacing(2)
                .fontColor('#FFFFFF')

            }
          }
        }
      }
      .width('76%')
      .height('78%')
      .margin({left:50, right:30, bottom:50})
      .layoutWeight(1)
    }
    .backgroundImage($r('app.media.background4'))
    .backgroundImageSize(1*1)
  }
}