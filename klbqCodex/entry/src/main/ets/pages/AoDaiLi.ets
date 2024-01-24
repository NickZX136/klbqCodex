import router from '@ohos.router'
@Entry
@Component
struct aoDaiLi{

  @State handlePopup: boolean = false

  private characterName:string = '奥黛丽'
  private characterAddress:Resource = $r('app.media.aoDaiLi')
  private characterIntro:string = '      高傲的奥黛丽，是格罗夫家族的大小姐。她手握乌尔比诺的大权，信奉火力即正义。' +
  '虽说性格看似有些不好相处，但若是有一位能够走入她的心扉，获得她的信任的友人，她也必将接纳与理解他的一切'

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