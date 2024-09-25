//
//  NovedadesLegalesView.swift
//  Bufetec
//
//  Created by Luis Gzz on 25/09/24.
//

import SwiftUI

struct LegalNews: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let date: String
}

struct NovedadesLegales: View {
    // Datos de ejemplo
    @State private var legalNews: [LegalNews] = [
        LegalNews(title: "Nueva reforma laboral en México", description: "El gobierno aprobó una reforma para mejorar las condiciones laborales.", date: "25 de septiembre, 2024"),
        LegalNews(title: "Cambios en el sistema judicial", description: "El poder judicial introduce cambios significativos en los procedimientos penales.", date: "20 de septiembre, 2024"),
        LegalNews(title: "Regulaciones sobre fintech", description: "La CNBV regula aún más el uso de criptomonedas y empresas fintech.", date: "15 de septiembre, 2024"),
        LegalNews(title: "Modificaciones a la ley de propiedad intelectual", description: "Cambios recientes en la ley protegen a los creadores de contenido digital.", date: "10 de septiembre, 2024")
    ]
    
    var body: some View {
        NavigationView {
            List(legalNews) { news in
                VStack(alignment: .leading) {
                    Text(news.title)
                        .font(.headline)
                        .foregroundColor(Color.blue) // Título en azul
                    Text(news.description)
                        .font(.subheadline)
                        .foregroundColor(Color.gray) // Descripción en gris
                    Text(news.date)
                        .font(.footnote)
                        .foregroundColor(Color.secondary)
                }
                .padding(.vertical, 5)
                .background(Color.blue.opacity(0.1)) // Fondo ligeramente azul para cada noticia
                .cornerRadius(8)
            }
            .listStyle(PlainListStyle()) // Elimina el fondo de la lista predeterminado
            .navigationTitle("Novedades Legales en México")
            .background(Color.blue.opacity(0.05)) // Fondo azul pálido para toda la vista
            .navigationBarTitleDisplayMode(.inline) // Título centrado y compacto
            .toolbarBackground(Color.blue, for: .navigationBar) // Color de fondo del navigation bar
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.light, for: .navigationBar) // Hace que el texto en el navigation bar sea blanco
        }
    }
}

#Preview {
    NovedadesLegales()
}

