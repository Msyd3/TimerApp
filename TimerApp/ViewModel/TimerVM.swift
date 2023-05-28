//
//  TimerVM.swift
//  TimerApp
//
//  Created by Mohammed Alsayed on 06/11/1444 AH.
//

import Foundation
import SwiftUI

class TimerVM: ObservableObject {
    
    @Published var timers: [TimerModel] = []
    @State var newNameString: String = ""
    
    init() {
        
        timers = [
            TimerModel(id: 1, nameTimer: "work", image: "◉"),
            TimerModel(id: 2, nameTimer: "personal", image: "◉"),
            TimerModel(id: 3, nameTimer: "sleep", image: "◉"),
            TimerModel(id: 4, nameTimer: "reading", image: "◉")
        ]
    }
    
    
    func addTimer(name: String, img: String) {
        timers.append(TimerModel(id: timers.count + 1, nameTimer: name , image: img))
    }
    
}
