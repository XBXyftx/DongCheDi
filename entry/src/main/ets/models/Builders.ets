import * as data from '../models/data'
@Builder
export function tabBarBuilder(img: Resource, text: string, index: number, currentIndex: number) {
  Column({ space: 5 }) {
    Image(img)
      .width(30)
      .padding(3)
      .borderRadius(20)
      .backgroundColor(currentIndex === index ? Color.Orange : Color.White)
    Text(text)
      .fontSize(14)
  }
  .padding(5)
}

@Component
export struct ShouYeBuilder {
  @State currentListIndex:number = 0
  build() {
    //首页
    Column() {
      Stack() {
        Scroll() {
          Column() {
            //置顶图片
            Image($rawfile('home_top.jpg'))
            //首页-频道数据（导航+半模态）
            Stack(){
              List({space:10}){
                ForEach(data.channelList,(item:string,i:number)=>{
                  ListItem(){
                    Text(item)
                      .fontWeight(this.currentListIndex===i?800:400)
                    if (this.currentListIndex === i) {
                      Divider()
                        .width(2)
                        .color(Color.Orange)
                    }
                  }
                  .onClick(()=>{
                    this.currentListIndex=i
                  })
                })
              }
              .scrollBar(BarState.Off)
              .width('100%')
              .listDirection(Axis.Horizontal)
            }
          }
          .width('100%')
        }
        .fullSize()
      }
      .fullSize()
    }
    .fullSize()
  }
}


@Builder
export function CheYouQuanBuilder() {
  //车友圈
  Column() {
  }
  .fullSize()
}

@Builder
export function XuanCheBuilder() {
  //选车
  Column() {
  }
  .fullSize()
}

@Builder
export function ErShouCheBuilder() {
  //二手车
  Column() {
  }
  .fullSize()
}

@Builder
export function FuWuBuilder() {
  //服务
  Column() {
  }
  .fullSize()
}

@Styles
function fullSize() {
  .width('100%')
  .height('100%')
}
