@Entry
@Component
struct WidgetCard{
  /*
   * The title.
   */
  readonly TITLE: string = 'Hello World';

  /*
   * The action type.
   */
  readonly ACTION_TYPE: string = 'router';

  /*
   * The ability name.
   */
  readonly ABILITY_NAME: string = 'EntryAbility';

  /*
   * The message.
   */
  readonly MESSAGE: string = 'add detail';

  /*
   * The with percentage setting.
   */
  readonly FULL_WIDTH_PERCENT: string = '100%';

  /*
   * The height percentage setting.
   */
  readonly FULL_HEIGHT_PERCENT: string = '100%';



  build() {

    Row() {
      Column() {
        Blank()
          .layoutWeight(1)
        Text('随机角色')
          .fontSize(25)
          .padding({bottom:15})
      }
      .width(this.FULL_WIDTH_PERCENT)
      .backgroundImage($r('app.media.background6'))
      .backgroundImageSize(1*1)
    }
    .height(this.FULL_HEIGHT_PERCENT)
    .onClick(() => {
      console.info('Jump to EntryAbility fun');
      postCardAction(this, {
        'action': 'router',
        'abilityName': 'EntryAbility', // 只能跳转到当前应用下的UIAbility
        'params': {
          'targetPage': 'fun' // 在EntryAbility中处理这个信息
        }
      });
    })
  }
}