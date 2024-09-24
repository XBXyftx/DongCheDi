import * as Data from '../models/data'
import * as Builders from '../models/Builders'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0

  build() {
    //根组件
    Tabs() {
      //首页
      Builders.ShouYeBuilder(this.currentIndex)
      //车友圈
      Builders.CheYouQuanBuilder(this.currentIndex)
      //选车
      Builders.XuanCheBuilder(this.currentIndex)
      //二手车
      Builders.ErShouCheBuilder(this.currentIndex)
      //服务
      Builders.FuWuBuilder(this.currentIndex)
    }
    .animationDuration(200)
    .onChange((index: number) => {
      this.currentIndex = index
    })
    .barPosition(BarPosition.End)
    .height('100%')
    .width('100%')
  }

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

  @Builder
  ShouYeBuilder() {
    //首页
    TabContent() {
    }
    .tabBar(this.tabBarBuilder($rawfile('ic_tab_0.svg'), '首页', 0))
  }

  @Builder
  CheYouQuanBuilder() {
    //车友圈
    TabContent() {
    }
    .tabBar(this.tabBarBuilder($rawfile('ic_tab_1.svg'), '车友圈', 1))
  }

  @Builder
  XuanCheBuilder() {
    //选车
    TabContent() {
    }
    .tabBar(this.tabBarBuilder($rawfile('ic_tab_2.svg'), '选车', 2))
  }

  @Builder
  ErShouCheBuilder() {
    //二手车
    TabContent() {
    }
    .tabBar(this.tabBarBuilder($rawfile('ic_tab_3.svg'), '二手车', 3))
  }

  @Builder
  FuWuBuilder(currentIndex: number) {
    //服务
    TabContent() {
    }
    .tabBar(this.tabBarBuilder($rawfile('ic_tab_4.svg'), '服务', 4))
  }
}








