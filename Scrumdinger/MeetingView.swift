//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Corey Peoples on 4/22/22.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        
        VStack {
            
            // MARK: Header
            ProgressView(value: 5, total: 15)
            HStack{
                VStack (alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                
                Spacer()
                
                VStack (alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            
            // MARK: Timer circle
            Circle()
                .strokeBorder(lineWidth: 24)
            
            // MARK: Footer
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button (action: {}) {
                    Image(systemName: "forward.fill")
                }
                
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
