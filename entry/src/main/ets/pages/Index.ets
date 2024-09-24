import * as Data from '../models/data'
import * as Builders from '../models/Builders'
@Entry
@Component
struct Index {
@State currentIndex:number=0
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
    .onChange((index: number) => {
      this.currentIndex = index
    })
    .barPosition(BarPosition.End)
    .height('100%')
    .width('100%')
  }
}








