//
//  History.swift
//  Scrumdinger
//
//  Created by Adriano Rodrigues Vieira on 16/09/23.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    var transcript: String?

    init(id: UUID = .init(), date: Date = .init(), attendees: [DailyScrum.Attendee], transcript: String? = nil) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.transcript = transcript
    }
}
