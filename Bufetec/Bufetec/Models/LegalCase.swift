//
//  Case.swift
//  Bufetec
//
//  Created by Jorge on 17/09/24.
//

import SwiftUI

class LegalCase: Identifiable {
    var id = UUID()
    var caseID: String
    var status: String
    var lawyer: String
    var affectedPerson: String
    var caseDetails: String
    var nextMeetingDate: String
    var nextMeetingTime: String
    
    // Initializer
    init(caseID: String, status: String, lawyer: String, affectedPerson: String, caseDetails: String, nextMeetingDate: String, nextMeetingTime: String) {
        self.caseID = caseID
        self.status = status
        self.lawyer = lawyer
        self.affectedPerson = affectedPerson
        self.caseDetails = caseDetails
        self.nextMeetingDate = nextMeetingDate
        self.nextMeetingTime = nextMeetingTime
    }
    
}

// Extension to provide default values
extension LegalCase {
    static var defaultValue: LegalCase = LegalCase(
        caseID: "Unknown",
        status: "open",
        lawyer: "Desconocido",
        affectedPerson: "No especificado",
        caseDetails: "Detalles no disponibles",
        nextMeetingDate: "Por definir",
        nextMeetingTime: "Por definir"
    )
}
