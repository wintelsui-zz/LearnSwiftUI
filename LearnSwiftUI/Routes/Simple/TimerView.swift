//
//  TimerView.swift
//  LearnSwiftUI
//
//  Created by smalltalk on 15/5/2020.
//  Copyright © 2020 wintelsui. All rights reserved.
//

import SwiftUI
import Combine

//class TimePublisher {
//    let timer = Timer.publish(every: 1, on: .main, in: .common)
//
//    var cancelable: AnyCancellable?
//    init() {
//        self.cancelable = timer.connect() as? AnyCancellable
//    }
//    deinit {
//        self.cancelable?.cancel()
//    }
//}

struct TimerView: View {
    
    enum WeekDays: Int {
        case sunday = 1
        case monday = 2
        case tuesday = 3
        case wednesday = 4
        case thursday = 5
        case friday = 6
        case saturday = 7
        
        func chineseName() -> String {
            switch self {
                case .sunday:
                    return "周日"
                case .monday:
                    return "周一"
                case .tuesday:
                    return "周二"
                case .wednesday:
                    return "周三"
                case .thursday:
                    return "周四"
                case .friday:
                    return "周五"
                case .saturday:
                    return "周六"
            }
        }
    }
    
    @State var timer = Timer.publish(every: 1, on: .main, in: .common)
    @State var cancelable: AnyCancellable?
    
    var timeFontSize: CGFloat = 90.0
    
    @State private var timeHour = ""
    @State private var timeMinute = ""
    @State private var timeSecond = ""
    @State private var timeColonFlicker = false
    @State private var timeColon = false
    
    @State private var timeWeek = ""
    @State private var timeDate = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("\(self.timeDate) \(self.timeWeek)")
                        .font(Font.system(size: self.timeFontSize / 4.0))
                        .foregroundColor(Color.white)
                }
                HStack {
                    Text("\(self.timeHour)")
                        .font(Font.system(size: self.timeFontSize))
                        .foregroundColor(Color.white)
                    Text("\(timeColon ? ":" : " ")")
                        .font(Font.system(size: self.timeFontSize))
                        .foregroundColor(Color.white)
                    Text("\(self.timeMinute)")
                        .font(Font.system(size: self.timeFontSize))
                        .foregroundColor(Color.white)
                    Text("\(timeColon ? ":" : " ")")
                        .font(Font.system(size: self.timeFontSize))
                        .foregroundColor(Color.white)
                    Text("\(self.timeSecond)")
                        .font(Font.system(size: self.timeFontSize))
                        .foregroundColor(Color.white)
                }
            }
        }.onReceive(timer) { input in
            let calendar = Calendar.current
            let dateComponent = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second, .weekday], from: Date())
            
            let year = dateComponent.year ?? 0
            let month = dateComponent.month ?? 0
            let day = dateComponent.day ?? 0
            
            let weekday = dateComponent.weekday ?? 0
            
            let hour = dateComponent.hour ?? 0
            let minute = dateComponent.minute ?? 0
            let second = dateComponent.second ?? 0
            
            self.timeHour = String(format: "%02d", hour)
            self.timeMinute = String(format: "%02d", minute)
            self.timeSecond = String(format: "%02d", second)
            
            
            self.timeWeek = WeekDays(rawValue: weekday)?.chineseName() ?? ""
            
            self.timeDate = String(format: "%04d 年 %02d 月 %02d 日", year, month, day)
            
            if self.timeColonFlicker {
                self.timeColon = (second % 2 ==  0)
            }else {
                self.timeColon = true
            }
        }
        .onAppear {
            self.timer = Timer.publish(every: 1, on: .main, in: .common)
            self.cancelable = self.timer.connect() as? AnyCancellable
            #if !targetEnvironment(macCatalyst)
            UIApplication.shared.isIdleTimerDisabled = true
            #endif
        }
        .onDisappear {
            self.cancelable?.cancel()
        }
            
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
