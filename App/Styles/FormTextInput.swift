import SwiftUI

struct FormTextInput: TextFieldStyle {
  func _body(configuration: TextField<_Label>) -> some View {
    VStack(spacing: 0) {
      configuration
        .padding(10)
        .background(Color.appInputColor)
        .cornerRadius(6, corners: [.topRight, .topLeft])
        .accentColor(Color.appTint)
      Rectangle()
        .frame(height: 3.0, alignment: .bottom)
        .foregroundColor(Color.appTint)
    }
  }
}
