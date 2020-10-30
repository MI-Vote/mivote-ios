import SwiftUI

extension Color {
  // Use for app's main copy, headings, body, etc.
  static let appLabel = Color(UIColor.label)
  // Use for app's supplemental text, captions, subtitles, footnotes, etc.
  static let appLabelSecondary = Color(UIColor.secondaryLabel)
  // Use for branded text
  static let appLabelTinted = Color("tintText")


  // Use for button backgrounds, icons, graphics, etc.
  static let appTint = Color("tintPrimary")
  // Use when you want some branding flair, but not eye-catchingly so
  static let appTintSecondary = Color("tintSecondary")


  // Use as background of main content regions: Cell, ProfileView, etc.
  static let appBackground = Color("backgroundPrimary")
  // Use as background for secondary content: TagView, supplemental info, etc.
  static let appBackgroundSecondary = Color("backgroundSecondary")
  // Use as background for entire screens
  static let appBackgroundTertiary = Color("backgroundTertiary")


  // Use for text that should always be light, regardless of color scheme (e.g. placed over an image / tint)
  static let appLightText = Color(UIColor.white)
  // Use for text that should always be dark
  static let appDarkText = Color(UIColor.darkText)
  
  // Use for input background
  static let appInputColor = Color("inputColor")
}
