
@Builder
export function tabBarBuilder(img:Resource,text:string,index:number,currentIndex:number){
  Column({space:5}){
    Image(img)
      .width(30)
      .padding(3)
      .borderRadius(20)
      .backgroundColor(currentIndex===index?Color.Orange:Color.White)
    Text(text)
      .fontSize(14)
  }
  .padding(5)
}
@Builder
export function ShouYeBuilder(currentIndex:number) {
  //首页
  TabContent() {
  }
  .tabBar(tabBarBuilder($rawfile('ic_tab_0.svg'), '首页',0,currentIndex))
}


@Builder
export function CheYouQuanBuilder(currentIndex:number) {
  //车友圈
  TabContent() {
  }
  .tabBar(tabBarBuilder($rawfile('ic_tab_1.svg'), '车友圈',1,currentIndex))
}
@Builder
export function XuanCheBuilder(currentIndex:number) {
  //选车
  TabContent() {
  }
  .tabBar(tabBarBuilder($rawfile('ic_tab_2.svg'), '选车',2,currentIndex))
}

@Builder
export function ErShouCheBuilder(currentIndex:number) {
  //二手车
  TabContent() {
  }
  .tabBar(tabBarBuilder($rawfile('ic_tab_3.svg'), '二手车',3,currentIndex))
}
@Builder
export function FuWuBuilder(currentIndex:number) {
  //服务
  TabContent() {
  }
  .tabBar(tabBarBuilder($rawfile('ic_tab_4.svg'), '服务',4,currentIndex))
}
