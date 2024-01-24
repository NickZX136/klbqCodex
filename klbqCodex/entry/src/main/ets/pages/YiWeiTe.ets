import router from '@ohos.router'
@Entry
@Component
struct yiWeiTe{

  @State handlePopup: boolean = false

  private characterName:string = '伊薇特'
  private characterAddress:Resource = $r('app.media.yiWeiTe')
  private characterIntro:string = '      内向弱气，寡言少语的少女伊薇待，是从属于欧泊的研究员。' +
  '她冰雪一般的外表下，是颗关爱友人的火热内心。在小能”菲”的帮助下，她所创造的冰霜能让敌人寸步难行'


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