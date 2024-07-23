import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Second page';

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
            Text('Go Back')
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
            console.info('Back Event')
            router.pushUrl({url: 'pages/Index'}).then(() => {
              console.info('Back Event Success!!!')
            }).catch((err:BusinessError) => {
              console.error(`fail jump to Index. code is ${err.code}, message is ${err.message}`)
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