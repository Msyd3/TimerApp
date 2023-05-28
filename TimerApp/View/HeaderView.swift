//
//  HeaderView.swift
//  TimerApp
//
//  Created by Mohammed Alsayed on 06/11/1444 AH.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack {
            HStack{
                Image(systemName: "person.circle")
                    .font(.system(size: 45))
                    .foregroundColor(.gray)
                
                VStack(alignment: .leading){
                    Text("morning'")
                        .foregroundColor(.gray)
                    Text("M")
                        .font(.callout)
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "calendar")
                        .font(.system(size: 25))
                        .foregroundColor(.black.opacity(0.5))
                }

                
                
            }.padding()
        }
        
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
