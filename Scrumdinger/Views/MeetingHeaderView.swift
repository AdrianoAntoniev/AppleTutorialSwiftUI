//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Adriano Rodrigues Vieira on 10/07/23.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int
    let theme: Theme
    private var totalSeconds: Int { secondsElapsed + secondsRemaining }
    private var progress: Double { totalSeconds > 0 ? (Double(secondsElapsed) / Double(totalSeconds)) : 1 }
    private var minutesRemaining: Int { secondsRemaining / 60 }

    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
                .progressViewStyle(ScrumProgressViewStyle(theme: theme))
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds elapsed")
                        .font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds remaining")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.bottomhalf.fill")
                        .labelStyle(.trailingIcon)
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
        .padding([.top, .horizontal])
    }    
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView(secondsElapsed: 30, secondsRemaining: 120, theme: .periwinkle)
    }
}
