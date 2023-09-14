//
//  TikTok.swift
//  SwiftUIWorkspace
//
//  Created by Janvi Arora on 14/09/23.
//

import SwiftUI

struct TikTok: View {
    
    @State private var isGlitch: Bool = false
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    private let text = "TikTok"
    private let offsetRange = -10...10
    private let symbol = """
              ⠀⠀⠀⠀⠀⠀⠀⠀⣶⣶⣶⡀⠀⠀
              ⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣷⣄⣀
              ⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿
              ⠀⠀⢀⣠⣴⣶⣶⠀⣿⣿⣿⠉⠉⠉
              ⠀⣴⣿⣿⣿⣿⣿⠀⣿⣿⣿⠀⠀⠀
              ⢸⣿⣿⡿⠉⠀⠈⠀⣿⣿⣿⠀⠀⠀
              ⢹⣿⣿⣷⡀⠀⠀⣰⣿⣿⣿⠀⠀⠀
              ⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀
              ⠀⠀⠙⠻⠿⠿⠿⠿⠋⠁⠀⠀⠀⠀
            """
    
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Text(symbol)
                    .font(.system(size: 20).bold())
                Text(text)
                    .font(.system(size: 80).bold())
            }
            .foregroundColor(.pink)
            .offset(x: isGlitch ? CGFloat(Int.random(in: offsetRange)) : 0, y: isGlitch ? CGFloat(Int.random(in: offsetRange)) : 0)
            
            VStack(spacing: 10){
                Text(symbol)
                    .font(.system(size: 20).bold())
                Text(text)
                    .font(.system(size: 80).bold())
            }
            .foregroundColor(.cyan)
            .offset(x: isGlitch ? CGFloat(Int.random(in: offsetRange)) : 0, y: isGlitch ? CGFloat(Int.random(in: offsetRange)) : 0)
            
            VStack(spacing: 10){
                Text(symbol)
                    .font(.system(size: 20).bold())
                Text(text)
                    .font(.system(size: 80).bold())
            }
            .preferredColorScheme(.dark)
            .onReceive(timer) { _ in
                DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 0...0.1)) {
                    self.isGlitch.toggle()
                }
            }
            .onDisappear {
                self.timer.upstream.connect().cancel()
            }
        }
    }
}

struct TikTok_Previews: PreviewProvider {
    static var previews: some View {
        TikTok()
    }
}
