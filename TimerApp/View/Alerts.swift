//
//  Alerts.swift
//  TimerApp
//
//  Created by Mohammed Alsayed on 06/11/1444 AH.
//

import SwiftUI

struct Alerts: View {
    
    @ObservedObject var vm = TimerVM()
    
    let columns = [
        GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        
        VStack{
            Button(action: {
                vm.addTimer(name: vm.newNameString , img: "")
            }) {
                NavigationLink(destination: NewTimer()){
                    Text("+")
                        .font(.system(size: 30))
                }
            }
            
            .foregroundColor(.black)
            .background(
                Rectangle()
                    .frame(width: 350)
                    .frame(height: 60)
                    .cornerRadius(25)
                    .foregroundColor(.gray.opacity(0.3))
            ) .padding()
            
            
        }
    }
}


struct CardInfo: View {
    var name: String
    var image: String
    
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 50) {
                
                Button(action: {
                    
                }) {
                    NavigationLink(destination: TimerBtn(countdownMinutes: 5)){
                        Text(image)
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                        
                    }
                }
                
                Button(action: {
                    
                }) {
                    NavigationLink(destination: TimerBtn(countdownMinutes: 5)){
                        Text(name)
                            .foregroundColor(.black)
                            .font(.system(size: 25))
                            .fontWeight(.light)
                    }
                }
                
                
            }
            Spacer()
        }
    }
}
struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
