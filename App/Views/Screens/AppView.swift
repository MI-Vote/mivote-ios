import SwiftUI

struct AppView: View {
  @State private var exampleInput: String = ""
    
  var body: some View {
    VStack {
      CheckRegistrationView()
    }
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
