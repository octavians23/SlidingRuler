import SwiftUI

struct CustomSlidingRulerStyle: SlidingRulerStyle {
  let cursorAlignment: VerticalAlignment = .top

  public init() {}
  
  func makeCellBody(configuration: SlidingRulerStyleConfiguation) -> some FractionableView {
    CustomCellBody(mark: configuration.mark,
                   bounds: configuration.bounds,
                   step: configuration.step,
                   cellWidth: cellWidth)
  }

  func makeCursorBody() -> some View {
    RoundedRectangle(cornerRadius: 3)
      .fill(Color(UIColor(red: 0.903, green: 0.975, blue: 0.077, alpha: 1)))
      .frame(width: 11, height: 24)
  }
}

struct CustomCellBody: FractionableView {
  var mark: CGFloat
  var bounds: ClosedRange<CGFloat>
  var step: CGFloat
  var cellWidth: CGFloat
  let height: CGFloat = mark % 5 == 0 ? 46 : 32

  var body: some View {
    VStack(alignment: .leading) {
      Rectangle()
        .fill(Color(UIColor(red: 0.579, green: 0.579, blue: 0.579, alpha: 1))
        .frame(width: 2, height: height)
      Spacer()
    }
  }
}
