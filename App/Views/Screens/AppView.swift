import SwiftUI

struct AppView: View {
  var body: some View {
    PartialMittenBackground {
      Text("Hello, world!")
        .padding()
    }
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
