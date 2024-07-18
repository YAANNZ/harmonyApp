import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Row() {
        Column() {
          Text(this.message)
            .id('HelloWorld')
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            .alignRules({
              // center: { anchor: '__container__', align: VerticalAlign.Center },
              // middle: { anchor: '__container__', align: HorizontalAlign.Center }
            })
          Button() {
            Text('Next')
              .fontSize(30)
              .fontWeight(FontWeight.Bold)
          }
          .type(ButtonType.Capsule)
          .margin({
            top: 20
          })
          .width('40%')
          .height('5%')
          //点击事件
          .onClick(() => {
            console.info('Next Event')
            router.pushUrl({url: 'page/second'}).then(() => {
              console.info(`click 'Next' Event Success!!!`)
            }).catch((err:BusinessError) => {
              console.error(`fail jump to next. code is ${err.code}, message is ${err.message}`)
            })
          })
        }
        .width('100%')
      }
      .height('100%')
    }
    .height('100%')
    .width('100%')
  }
}