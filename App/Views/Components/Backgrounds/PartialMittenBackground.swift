import SwiftUI

struct PartialMittenBackground<Content: View>: View {
  let viewBuilder: () -> Content
  
  var body: some View {
    VStack {
      Image("partial-mitten")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .edgesIgnoringSafeArea(.all)
      Spacer()
    }
    .overlay(viewBuilder(), alignment: .top)
  }
}

struct PartialMittenBackground_Previews: PreviewProvider {
  static var previews: some View {
    PartialMittenBackground {
      Text("Partial Mitten Background")
    }
  }
}
