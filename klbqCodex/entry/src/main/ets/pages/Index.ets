import router from '@ohos.router'
@Entry
@Component
struct Index {
  build() {
      Column() {
        Blank()
        .height(520)

        Row(){
          Image($r('app.media.menu'))
            .width('50%')
            .onClick(() => {
              console.info(`Succeeded in clicking the 'Next' button.`)
              router.pushUrl({ url: 'pages/Menu' }).then(() => {
                console.info('Succeeded in jumping to the second page.')
              }).catch((err) => {
                console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
              })
            })

        }
        .padding({bottom:50})

        Row(){
          Image($r('app.media.about'))
            .width('50%')
            .onClick(() => {
              console.info(`Succeeded in clicking the 'Next' button.`)
              router.pushUrl({ url: 'pages/About' }).then(() => {
                console.info('Succeeded in jumping to the second page.')
              }).catch((err) => {
                console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
              })
            })
        }

        Blank()
          .height('100%')
      }
      .width('100%')
      .backgroundImage($r('app.media.background1'))
      .backgroundImageSize(1*1)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}