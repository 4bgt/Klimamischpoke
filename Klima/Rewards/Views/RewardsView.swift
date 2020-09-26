//
//  RewardsView.swift
//  Klima
//
//  Created by Marc Lennard Vlaminck on 26.09.20.
//

import SwiftUI

struct RewardsView: View {
    var body: some View {
        NavigationView {
            Group {
                ScrollView {
                        VStack {
                            HStack{
                                Text("Silke Haller")
                                    .bold()
                                Spacer()
                            }
                            .padding()
                            
                            HStack {
                                Spacer()
                                ProgressBar(co2Progress: .constant(0.85), pointProgress: .constant(0.75))
                                Spacer()
                            }
                            HStack {
                                Text("Noch 1 Woche")
                                    .foregroundColor(.orange)
                                Divider()
                                Text("51 kg CO² eingespart")
                                    .foregroundColor(.green)
                            }
                            Text("234 Klimapunkte")
                        }
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding()
                    
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 10) {
                                Spacer()
                                Text("KOSTENFREI")
                                    .font(.system(size: 12))
                                Text("1x Kaffee")
                                    .font(.system(size: 20))
                                
                                HStack {
                                    Text("30 Punkte")
                                        .padding(10)
                                }
                                .foregroundColor(.gray)
                                .background(Color.white)
                                .cornerRadius(10)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            ZStack {
                                Rectangle()
                                    .background(Color.white)
                                Image(systemName: "bag.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 40)
                                    .foregroundColor(.accentColor)
                            }
                            .clipShape(Circle())
                            .frame(width: 80)
                            Spacer()
 
                            
                        }
                        .background(Rectangle().fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.orange]), startPoint: .leading, endPoint: .trailing)))
                        .cornerRadius(10)
                        .padding()
                        
                    }
                    
                    
                }
                .navigationTitle("Belohnungen")
            }
        }
    }
}

struct RewardsView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsView()
            .environment(\.colorScheme, .dark)
    }
}
