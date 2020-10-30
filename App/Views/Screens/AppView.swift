import SwiftUI

struct AppView: View {
  @State private var exampleInput: String = ""
    
  var body: some View {
    VStack {
      Text("Hello, world!")
        .padding()
      
      TextField("Example Input",
        text: $exampleInput
      )
        .textFieldStyle(FormTextInput())
        .padding(10)
    }
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
