//
//  CaseDetailView.swift
//  Bufetec
//
//  Created by Jorge on 17/09/24.
//

import SwiftUI

struct CaseDetailView: View {

    var legalCase: LegalCase

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            // CaseID and Status
            HStack {
                // Square around CaseID
                VStack {
                    Text("CaseID: ")
                        .font(.title)
                        .bold()
                    
                    Text((legalCase.caseID))
                        .font(.title2)
                        .bold()
                }
                .padding()
                // .background(Color.blue)
                .cornerRadius(8)
                .shadow(color: .gray, radius: 4, x: 4, y: 4)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black, lineWidth: 2)
                )
                
                Spacer()
                
                // Square around Status
                VStack {
                    Text("Status: ")
                        .font(.title)
                        .bold()
                    
                    Text((legalCase.status))
                        .font(.title2)
                        .bold()
                } // End of status display
                .padding()
                .background(statusColor(for: legalCase.status))
                .cornerRadius(8)
                .shadow(color: .gray, radius: 4, x: 4, y: 4)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black, lineWidth: 2)
                )
            } // End of CaseID and Status
            
            .padding()

            // Lawyer
            Text("Abogado: \(legalCase.lawyer)")
                .font(.headline)
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .shadow(color: .gray, radius: 4, x: 4, y: 4)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding(.leading)

            // Affected person
            Text("Persona afectada: \(legalCase.affectedPerson)")
                .font(.subheadline)
                .padding(.leading)

            // Case Details
            Text("Datos en general sobre el caso específico:")
                .font(.subheadline)
                .bold()
                .padding(.leading)
            
            Text(legalCase.caseDetails)
                .font(.body)
                .padding(.leading)

            // Next Meeting
            Text("Siguiente junta:")
                .font(.subheadline)
                .bold()
                .padding(.leading)

            Text("\(legalCase.nextMeetingDate) \(legalCase.nextMeetingTime)")
                .font(.body)
                .padding(.leading)
            
            Spacer()
        }
        .navigationTitle("Detalles del Caso")
        .padding()
    }

    
    // Function that defines the colors for status
    func statusColor(for status: String) -> Color {
        switch status.lowercased() {
        case "open":
            return Color.green
        case "in progress":
            return Color.yellow
        case "closed":
            return Color.red
        default:
            return Color.gray
        }
    }
}

#Preview {
    CaseDetailView(legalCase: LegalCase.defaultValue)
}
