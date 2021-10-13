import SwiftUI

struct CheckRegistrationView: View {
  @State private var voter: VoterSearchInformation = VoterSearchInformation()
  
  func submitForm() {
    print("Submit form")
  }
    
  var body: some View {
    VStack(spacing: 36) {
      HStack {
        Text("Are You Registered?")
          .asHeader2()
        Spacer()
      }
      
      TextField(
        "First Name",
        text: self.$voter.firstName
      )
      .textFieldStyle(FormTextInput())
      
      TextField(
        "Last Name",
        text: self.$voter.firstName
      )
      .textFieldStyle(FormTextInput())
      
      HStack(spacing: 18) {
        TextField(
          "Birth Month",
          text: self.$voter.firstName
        )
        .textFieldStyle(FormTextInput())
   
        TextField(
          "Birth Year",
          text: self.$voter.firstName
        )
        .textFieldStyle(FormTextInput())
      }
      
      TextField(
        "Zip Code",
        text: self.$voter.firstName
      )
      .textFieldStyle(FormTextInput())
      
      Button(action: { self.submitForm() }) {
        Text("Check Registration")
      }
      .buttonStyle(PrimaryButtonStyle())
    }
    .padding(.horizontal, 30)
  }
}

struct CheckRegistrationView_Previews: PreviewProvider {
    static var previews: some View {
      CheckRegistrationView()
    }
}
