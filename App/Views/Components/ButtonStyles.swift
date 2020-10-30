import SwiftUI

struct AppButton: ButtonStyle {
    let isFilled: Bool

    init(isFilled: Bool = true) {
        self.isFilled = isFilled
    }

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            configuration.label
            Spacer()
        }
        .background(Color.red)
        .cornerRadius(12)
    }
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            Text("Filled Button")
        }
    .buttonStyle(AppButton())
    }
}
