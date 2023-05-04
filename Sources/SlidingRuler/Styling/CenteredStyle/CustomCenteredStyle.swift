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
  let mark: Int
  let bounds: ClosedRange<Double>
  let step: Double
  let cellWidth: CGFloat

  var body: some View {
    VStack(alignment: .leading) {
      let height: CGFloat = mark % 5 == 0 ? 46 : 32
      Rectangle()
        .fill(Color(UIColor(red: 0.579, green: 0.579, blue: 0.579, alpha: 1))
        .frame(width: 2, height: height)
      Spacer()
    }
  }
}
