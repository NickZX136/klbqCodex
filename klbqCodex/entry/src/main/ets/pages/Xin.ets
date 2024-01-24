import router from '@ohos.router'
@Entry
@Component
struct xin{

  @State handlePopup: boolean = false

  private characterName:string = '信'
  private characterAddress:Resource = $r('app.media.xin')
  private characterIntro:string = '      看似冷漠无情，却无比真诚直率的信，是欧泊的搜查一班班长。' +
  '曾遭理兄长背叛的他为了追逐背后的真相，不放过任何蛛丝马迹。随身携带的脉冲面达”守望之眼”，还有他坚定的意志，是他最强大的武器'


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