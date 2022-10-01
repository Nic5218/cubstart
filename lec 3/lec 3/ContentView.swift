//
//  ContentView.swift
//  lec 3
//
//  Created by Qian Ni on 9/29/22.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            VStack{
//                HStack{
//                    Text("Tony")
//                    Text("Jordan")
//                }
//                .padding()
//                Text("Bye")
//            }
//            Text("Hello, world!")
//        }
//        .padding() // setting default space around element for Vstack
//    }
//}



struct ContentView: View {
    @State var num = 0
    var body: some View {
        VStack{
            Image("oski") // add image
            
            Text(String(num))
                .font(.system(size: 50))
            
            HStack(spacing: 30){
                Button("increment") {
                    num += 1
                }
                
                Button("decrement") {
                    decrementNum()
                }
            }
        }
        
    }
    
    // don't want negative num
    func decrementNum() {
        if (num == 0) {
            return
        } else {
            num -= 1
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
        
    }
}
