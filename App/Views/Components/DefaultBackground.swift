import SwiftUI

struct DefaultBackground<Content: View>: View {
  let viewBuilder: () -> Content
  
  var body: some View {
      Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
  }
}

struct DefaultBackground_Previews: PreviewProvider {
  static var previews: some View {
    DefaultBackground()
  }
}
