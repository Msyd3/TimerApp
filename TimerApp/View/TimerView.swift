//
//  TimerView.swift
//  TimerApp
//
//  Created by Mohammed Alsayed on 06/11/1444 AH.
//

import SwiftUI

struct TimerView: View {
    
    @ObservedObject var vm = TimerVM()
    
    let columns = [
        GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationView{
            VStack{
                HeaderView()
                
                HStack{
                    Text("one. two.")
                        .font(.system(size: 35))
                        .foregroundColor(.gray)
                    Text("foucs!")
                        .font(.system(size: 40))
                }.padding(.trailing,84)
                
                ScrollView {
                    Alerts()
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(vm.timers , id: \.id){ tim in
                            HStack {
                                RoundedRectangle(cornerRadius: 35)
                                    .fill(Color.purple).opacity(0.1)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 200)
                                
                                    .overlay {
                                        HStack{
                                            CardInfo(name: tim.nameTimer, image: tim.image)
                                                .padding(.bottom)
                                        }.padding([.top,.leading])
                                    }
                            }
                            
                            
                        }
                        
                        
                        Spacer()
                    }.padding()
                }
                
            }
        }.navigationBarBackButtonHidden()
        
    }
}







struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
