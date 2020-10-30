import SwiftUI

struct FullMittenBackground<Content: View>: View {
  let viewBuilder: () -> Content
  
  var body: some View {
    VStack {
      Image("full-mitten")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .edgesIgnoringSafeArea(.all)
      Spacer()
    }
    .overlay(viewBuilder(), alignment: .top)
  }
}

struct FullMittenBackground_Previews: PreviewProvider {
  static var previews: some View {
    FullMittenBackground {
      Text("Full Mitten Background")
    }
  }
}
