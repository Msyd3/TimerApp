//
//  TimerBtn.swift
//  TimerApp
//
//  Created by Mohammed Alsayed on 06/11/1444 AH.
//

import SwiftUI

struct TimerBtn: View {
    
    @State var countdownMinutes: Int = 5
    @State var timeRemaining: TimeInterval = 0
    @State var timerIsActive = false
    @State var timer = Timer.publish (every: 1, on: .current, in: .common).autoconnect()
    
    @ObservedObject var vm = TimerVM()
    
    var body: some View {
        
        VStack(alignment: .center){
            
            HStack{
                Spacer()
                Button(action: {
                    
                }) {
                    NavigationLink(destination: TimerView()){
                        Image(systemName: "xmark")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            
                    }
                }
                .padding()
            }
            
            
            Text("New Plan")
                .font(.system(size: 25))
                 
                 Spacer()
            
            Text("\(Int(timeRemaining / 60)):\(Int(timeRemaining) % 60, specifier: "%02d")")
                .font(.system(size: 100))
                .padding()
                .background {
                    Circle()
                        .foregroundColor(.gray.opacity(0.2))
                        .frame(width: 350,height: 600)
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 300,height: 500)
                }
            
            Spacer()
            
            Button(timerIsActive ? "Break" : "Start") {
                if timerIsActive {
                    stopTimer()
                    timerIsActive = false
                } else {
                    startTimer()
                    timerIsActive = true
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
    
    private func startTimer() {
        timeRemaining = TimeInterval(countdownMinutes * 60)
        timerIsActive = true
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            timeRemaining -= 1
            
            if timeRemaining == 0 {
                stopTimer()
                timerIsActive = false
            }
        }
    }
    
    private func stopTimer() {
        timerIsActive = false
        }
    }






struct TimerBtn_Previews: PreviewProvider {
    static var previews: some View {
        TimerBtn()
    }
}
