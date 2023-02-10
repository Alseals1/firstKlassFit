import SwiftUI

struct ContentView: View {
    private var person = Bundle.main.decode(DemoData.self, from: "demoData.json")
    
    var body: some View {
    
        VStack {
            ForEach(person.users, id: \.id) { user in
                
                HStack {
                    VStack {
                        AsyncImage(url: URL(string: user.image)) { img in
                            img
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(50)
                        } placeholder: {
                            ProgressView()
                        }

                    }
                    
                    VStack {
                        Text(user.firstname)
                        Text(user.lastname)
                    }
                }
                
            }
        }
       
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
