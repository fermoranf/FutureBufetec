//
//  HomePage.swift
//  Bufetec
//
//  Created by Luis Gzz on 24/09/24.
//
import SwiftUI

struct HomePageView: View {
    // Definimos el layout de la cuadrícula
    let columns = [
        GridItem(.flexible(), spacing: 20), // Primera columna
        GridItem(.flexible(), spacing: 20)  // Segunda columna
    ]
   
    var body: some View {
        NavigationView {
            VStack {
                // Sección de botones organizados en una cuadrícula 2x3
                
                Spacer()
                LazyVGrid(columns: columns, spacing: 20) {
                    NavigationLink(destination: AgendarCitaView()) {
                        HomeButton(title: "Agendar Cita", iconName: "calendar.badge.plus", color: Color(hex: "#4A90E2"))
                    }
                    
                    NavigationLink(destination: ConsultarAbogadosView()) {
                        HomeButton(title: "Consultar Abogados", iconName: "person.3.fill", color: Color(hex: "#4A90E2"))
                    }
                    
                    NavigationLink(destination: NovedadesLegalesView()) {
                        HomeButton(title: "Novedades Legales", iconName: "newspaper.fill", color: Color(hex: "#4A90E2"))
                    }
                    
                    NavigationLink(destination: ConsultarCasosView()) {
                        HomeButton(title: "Consultar Casos", iconName: "doc.text.fill", color: Color(hex: "#4A90E2"))
                    }
                    
                    NavigationLink(destination: PreguntasFrecuentesView()) {
                        HomeButton(title: "Preguntas Frecuentes", iconName: "questionmark.circle.fill", color: Color(hex: "#4A90E2"))
                    }
                    
                    NavigationLink(destination: ContactarView()) {
                        HomeButton(title: "Contactar", iconName: "phone.fill", color: Color(hex: "#4A90E2"))
                    }
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 40)
                
                Spacer()
            }
            .background(Color(hex: "#F0F4FF")) // Fondo claro con azul suave
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitleDisplayMode(.large) // Estilo del título
            .navigationBarItems(trailing:
                Button(action: {
                    // Acción para el botón del lado derecho (si se necesita)
                }) {
                    Image(systemName: "person.crop.circle")
                        .foregroundColor(Color(hex: "#003366")) // Color azul oscuro para el ícono
                }
            )
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Bufetec")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "#003366")) // Color azul oscuro para el título
                }
            }
        }
    }
}

// Botón con ícono y texto
struct HomeButton: View {
    var title: String
    var iconName: String
    var color: Color

    var body: some View {
        VStack {
            Image(systemName: iconName) // Icono de SF Symbols
                .font(.largeTitle)
                .foregroundColor(.white) // Icono blanco para visibilidad
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white) // Texto blanco para contraste
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 100) // Tamaño del botón cuadrado
        .padding()
        .background(color) // Color del botón
        .cornerRadius(12)
        .shadow(color: Color(hex: "#003366").opacity(0.3), radius: 5, x: 0, y: 5) // Sombra para profundidad
    }
}

// Ejemplos de vistas de destino
struct AgendarCitaView: View {
    var body: some View {
        Text("Pantalla Agendar Cita")
            .foregroundColor(.black) // Texto visible
    }
}

struct ConsultarAbogadosView: View {
    var body: some View {
        Text("Pantalla Consultar Abogados")
            .foregroundColor(.black)
    }
}

struct NovedadesLegalesView: View {
    var body: some View {
        Text("Pantalla Novedades Legales")
            .foregroundColor(.black)
    }
}

struct ConsultarCasosView: View {
    var body: some View {
        Text("Pantalla Consultar Casos")
            .foregroundColor(.black)
    }
}

struct PreguntasFrecuentesView: View {
    var body: some View {
        Text("Pantalla Preguntas Frecuentes")
            .foregroundColor(.black)
    }
}

// Nueva pantalla de contacto
struct ContactarView: View {
    var body: some View {
        Text("Pantalla de Contacto")
            .foregroundColor(.black)
    }
}

// Vista previa
struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
