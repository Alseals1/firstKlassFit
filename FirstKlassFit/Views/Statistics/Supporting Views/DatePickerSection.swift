import SwiftUI

struct DatePickerSection: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Button(action: {
                       
                    }, label: {
                        ZStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                        }
                        .padding(10)
                        .background(Color.baseTabBackground)
                        .clipShape(Circle())
                    })
                    Spacer()
                    Text("January")
                    Spacer()
                    Button(action: {
                       
                    }, label: {
                        ZStack {
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                        }
                        .padding(10)
                        .background(Color.baseTabBackground)
                        .clipShape(Circle())
                    })
                }
                .padding(.bottom, 29)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(1...31, id: \.self) { day in
                            VStack {
                                Text("M")
                                Text("19")
                            }
                            .padding()
                            .background(Color.baseTabBackground)
                            .clipShape(Capsule())
                        }
                    }
                }
            }
            .padding(.horizontal, 24)
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    .frame(height: 203)
    }
}

struct DatePickerSection_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerSection()
    }
}
