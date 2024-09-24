import * as Data from '../models/data'
import * as Builders from '../models/Builders'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  @Builder
  tabBarBuilder(img: Resource, text: string, index: number) {
    Column({ space: 5 }) {
      Image(img)
        .width(30)
        .padding(3)
        .borderRadius(20)
        .backgroundColor(this.currentIndex === index ? Color.Orange : Color.White)
      Text(text)
        .fontSize(14)
    }
    .padding(5)
  }
  build() {
    //根组件
    Tabs() {
      //首页
      TabContent() {
        Builders.ShouYeBuilder()
      }
      .tabBar(this.tabBarBuilder($rawfile('ic_tab_0.svg'), '首页', 0))
      //车友圈
      TabContent() {
        Builders.CheYouQuanBuilder()
      }
      .tabBar(this.tabBarBuilder($rawfile('ic_tab_1.svg'), '车友圈', 1))
      //选车
      TabContent() {
        Builders.XuanCheBuilder()
      }
      .tabBar(this.tabBarBuilder($rawfile('ic_tab_2.svg'), '选车', 2))
      //二手车
      TabContent() {
        Builders.ErShouCheBuilder()
      }
      .tabBar(this.tabBarBuilder($rawfile('ic_tab_3.svg'), '二手车', 3))
      //服务
      TabContent() {
        Builders.FuWuBuilder()
      }
      .tabBar(this.tabBarBuilder($rawfile('ic_tab_4.svg'), '服务', 4))
    }
    .animationDuration(200)
    .onChange((index: number) => {
      this.currentIndex = index
    })
    .barPosition(BarPosition.End)
    .height('100%')
    .width('100%')
  }
}
