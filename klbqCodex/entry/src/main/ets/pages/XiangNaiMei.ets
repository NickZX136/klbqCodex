import router from '@ohos.router'
@Entry
@Component
struct xiangNaiMei {

  @State handlePopup: boolean = false

  private characterName:string = '香奈美'
  private characterAddress:Resource = $r('app.media.xiangNaiMei')
  private characterIntro:string = '      外表甜美可爱的偶像歌姬香奈美，' +
  '却有着不输剪刀手其他人的，坚强执着的性格。' +
  '她见到过太多的不幸，为了不让自己的粉丝以及身边的同伴受到伤害，' +
  '她全力以赴地，为了卡丘世界的未来而歌唱。'


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