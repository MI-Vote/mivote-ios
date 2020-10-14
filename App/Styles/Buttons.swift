import SwiftUI

// TODO: adjust based on designs
private let defaultCornerRadius: CGFloat = 6
private let defaultLabelPadding: EdgeInsets = .init(top: 10, leading: 24, bottom: 10, trailing: 24)

struct PrimaryButtonStyle: ButtonStyle {
  @Environment(\.isEnabled) var isEnabled: Bool

  let cornerRadius: CGFloat
  let padding: EdgeInsets

  init(cornerRadius: CGFloat = defaultCornerRadius, padding: EdgeInsets = defaultLabelPadding) {
    self.cornerRadius = cornerRadius
    self.padding = padding
  }

  func makeBody(configuration: Configuration) -> some View {
    configuration.label.asButton()
      .padding(padding)
      .frame(minWidth: 0, maxWidth: .infinity, alignment: .bottom)
      .background(
        RoundedRectangle(cornerRadius: cornerRadius)
          .fill(Color.appTint)
      )
      .grayscale(isEnabled ? 0 : 0.99)
      .opacity(configuration.isPressed ? 0.7 : 1)
  }
}

struct SecondaryButtonStyle: ButtonStyle {
  @Environment(\.isEnabled) var isEnabled: Bool

  let cornerRadius: CGFloat
  let padding: EdgeInsets

  init(cornerRadius: CGFloat = defaultCornerRadius, padding: EdgeInsets = defaultLabelPadding) {
    self.cornerRadius = cornerRadius
    self.padding = padding
  }

  func makeBody(configuration: Configuration) -> some View {
    configuration.label.asButton(Color.appLabelTinted)
      .padding(padding)
      .frame(minWidth: 0, maxWidth: .infinity, alignment: .bottom)
      .background(
        RoundedRectangle(cornerRadius: cornerRadius)
          .strokeBorder(Color.appTint, lineWidth: 2.0, antialiased: true)
      )
      .grayscale(isEnabled ? 0 : 0.99)
      .opacity(configuration.isPressed ? 0.7 : 1)
  }
}


struct Button_Previews: PreviewProvider {
  static var previews: some View {
    Button(action: {}) {
      Text("Button")
    }
    .buttonStyle(PrimaryButtonStyle())
    .padding()
    .previewLayout(.sizeThatFits)

    Button(action: {}) {
      Text("Button")
    }
    .buttonStyle(SecondaryButtonStyle())
    .padding()
    .previewLayout(.sizeThatFits)

  }
}
