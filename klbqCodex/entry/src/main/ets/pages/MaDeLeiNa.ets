import router from '@ohos.router'
@Entry
@Component
struct maDeLeiNa{

  @State handlePopup: boolean = false

  private characterName:string = '玛德蕾娜'
  private characterAddress:Resource = $r('app.media.maDeLeiNa')
  private characterIntro:string = '      开朗乐观，像是邻家妹妹一样可爱的玛德董娜是一位来自乌尔比诺的绘师，喜欢绘画鲜花还有他人的笑容。' +
  '她用手中的颇料枪自在地涂抹世界，即使在战斗中也总是欢声笑语。过去?那是什么? 不记得了哦~'


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