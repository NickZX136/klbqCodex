import router from '@ohos.router'
class Character{
  characterName: string
  characterAddress: string
  constructor(name: string, address: string) {
    this.characterName = name
    this.characterAddress = address
  }
}


@Entry
@Component
struct menu {
  private address: string = 'pages/XiangNaiMei'

  private names: Array<Character> = [
    new Character('香奈美', 'pages/XiangNaiMei'),
    new Character('梅瑞狄斯', 'pages/MeiRuiDiSi'),
    new Character('拉薇', 'pages/LaWei'),
    new Character('明', 'pages/Min'),
    new Character('令', 'pages/Ling'),
    new Character('米雪儿·李', 'pages/MiXueEr'),
    new Character('心夏', 'pages/XinXia'),
    new Character('信', 'pages/Xin'),
    new Character('伊薇特', 'pages/YiWeiTe'),
    new Character('玛德蕾娜', 'pages/MaDeLeiNa'),
    new Character('绯莎', 'pages/FeiSha'),
    new Character('星绘', 'pages/XingHui'),
    new Character('奥黛丽', 'pages/AoDaiLi'),
    new Character('白墨', 'pages/BaiMo')
  ]

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
        Text('目录')
          .fontSize(25)
          .fontColor('#ffffff')
          .padding({top:0})
      }
      .width('100%')
      .margin({bottom:20})
      .justifyContent(FlexAlign.Center)
      .padding({top:27, bottom:15})


      List({space:8}){
        ForEach(
          this.names,
          (character: Character) => {
            ListItem(){
              Column() {
                Row({ space: 10 }) {
                  Text(character.characterName)
                    .width('100%')
                    .height(50)
                    .fontSize(20)
                    .fontWeight(FontWeight.Bold)
                    .textAlign(TextAlign.Center)
                    .fontColor('#ffffff')
                    .onClick(() => {
                      console.info(`Succeeded in clicking the 'Next' button.`)
                      router.pushUrl({ url: character.characterAddress }).then(() => {
                        console.info('Succeeded in jumping to the second page.')
                      }).catch((err) => {
                        console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
                      })
                    })
                }
                .borderRadius(10)
                .height(50)
                .justifyContent(FlexAlign.Center)

                Divider()
                  .width('70%')
                  .color('#ffffff')
              }
            }
          }
        )
      }
      .margin({bottom:50})
      .layoutWeight(1)


    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundImage($r('app.media.background5'))
    .backgroundImageSize(1*1)
  }



}