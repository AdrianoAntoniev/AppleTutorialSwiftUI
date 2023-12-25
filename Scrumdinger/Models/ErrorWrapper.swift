//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Adriano Rodrigues Vieira on 16/09/23.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String

    init(id: UUID = .init(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }

}
