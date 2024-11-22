//
//  ContentView.swift
//  HotProspects
//
//  Created by Juan Carlos Robledo Morales on 20/11/24.
//

import SwiftUI
import UserNotifications


struct ContentView: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error {
                        print(error.localizedDescription)
                    }
                }
            }

            Button("Schedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Feed the cat"
                content.subtitle = "It looks hungry"
                content.sound = UNNotificationSound.default

                // Mostrar esta notificación dentro de cinco segundos
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                // Escoge un identificador aleatorio
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                // Añade nuestra solicitud de notificación
                UNUserNotificationCenter.current().add(request)
            }
        }

    }
}

#Preview {
    ContentView()
}
