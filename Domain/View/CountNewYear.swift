//
//  CountNewYear.swift
//  FireworksNewYearSwifitUI
//
//  Created by User on 29/12/23.
//

import SwiftUI
import EffectsLibrary

struct CountNewYear: View {
    @State private var countdownString: String = ""

    var body: some View {
        ZStack {
            Image("fundonewyear") // Substitua "backgroundImage" pelo nome real da sua imagem
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)

            VStack {
                FireworksView()
                Spacer()

                Text(countdownString)
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .foregroundColor(.white)

                Spacer()
                FireworksView()
            }
            .onAppear {
                updateCountdown()
            }
            .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()) { _ in
                updateCountdown()
            }
        }
    }

    func updateCountdown() {
        let currentDate = Date()
        let targetDate = Calendar.current.date(from: DateComponents(year: 2024, month: 1, day: 1))!

        let components = Calendar.current.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: targetDate)

        guard let days = components.day, let hours = components.hour, let minutes = components.minute, let seconds = components.second else {
            return
        }

        countdownString = String(format: "Faltam\n %d dias\n %02d Horas\n %02d Minutos\n %02d Segundos\n Para o Ano Novo", days, hours, minutes, seconds)
    }
}

#Preview {
    CountNewYear()
}
