//
//  ContentView.swift
//  ScrumDinger
//
//  Created by Trey Watford on 3/3/23.
//

import SwiftUI

struct MeetingView: View {
//    starting state of progress bar
    @State private var progress = 5.0
    
    var body: some View {
        VStack {
            ProgressView(value: progress, total: 15)
            HStack {
                VStack {
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                VStack{
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            Button("More") {
                progress += 1.0
            }
        }
        .padding()
        
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
