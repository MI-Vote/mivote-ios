import SwiftUI

extension Font {

  // TODO: Adjust the sizes here to match designs
  static func appHeading1Font() -> Font {
    return Font.system(size: 32, weight: .regular)
  }

  static func appHeading2Font() -> Font {
    return Font.system(size: 26, weight: .regular)
  }

  static func appBodyFont() -> Font {
    return Font.system(size: 18, weight: .regular)
  }

  static func appCaptionFont() -> Font {
    return Font.system(size: 16, weight: .regular)
  }

  static func appButtonFont() -> Font {
    return Font.system(size: 22, weight: .bold)
  }
}


extension View {
  func asHeader1() -> some View {
    return self.foregroundColor(.appLabel)
      .font(.appHeading1Font())
  }

  func asHeader2() -> some View {
    return self.foregroundColor(.appLabel)
      .font(.appHeading2Font())
  }

  func asBody() -> some View {
    return self.foregroundColor(.appLabel)
      .font(.appBodyFont())
  }

  func asCaption() -> some View {
    return self.foregroundColor(.appLabelSecondary)
      .font(.appCaptionFont())
  }

  func asButton(_ color: Color = .appLightText) -> some View {
    return self.foregroundColor(color)
      .font(.appButtonFont())
  }
}
