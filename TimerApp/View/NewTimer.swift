//
//  NewTimer.swift
//  TimerApp
//
//  Created by Mohammed Alsayed on 07/11/1444 AH.
//

import SwiftUI

struct NewTimer: View {
    
    @State private var countdownMinutes: Int = 5
    @State var newName: String = ""
    @ObservedObject var vm = TimerVM()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0){
            
            Spacer()
            
            Text("Create a new plan")
                .font(.system(size: 35))
            Text("What do you want to foucs on")
                .foregroundColor(.gray)
                .font(.headline).fontWeight(.light)
            
            TextField("New Plan", text: $newName)
                .font(.system(size: 15))
                .padding()
                .background(
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .cornerRadius(25)
                        .foregroundColor(.gray.opacity(0.1))
                )
            
            TextField("", value: $countdownMinutes, formatter: NumberFormatter())
                .padding(.leading,175)
                .font(.system(size: 20))
                .keyboardType(.numberPad)
                .background(
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .cornerRadius(25)
                        .foregroundColor(.gray.opacity(0.1))
                )
            Spacer()
            
            Button(action: {
                
                    vm.addTimer(name: newName, img: "Image1")
                
            }) {
                NavigationLink(destination: TimerBtn()){
                    Text("Continue")
                        .font(.system(size: 18))
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(25)

        }.padding()
            .navigationBarBackButtonHidden()
    }
}

struct NewTimer_Previews: PreviewProvider {
    static var previews: some View {
        NewTimer()
    }
}








