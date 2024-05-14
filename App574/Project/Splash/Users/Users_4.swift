//
//  Users_4.swift
//  App574
//
//  Created by Вячеслав on 5/14/24.
//

import SwiftUI

struct Users_4: View {
    
    @AppStorage("status") var status: Bool = false

    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("users_4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text("Enable Notifications")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Don't miss anything")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding(.bottom)
                
                HStack {
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Text("Skip")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .regular))
                            .frame(width: 130)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color.gray.opacity(0.3)))
                    })
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Text("Enable Notifications")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .regular))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                    })
                }
                .padding()
                .padding(.horizontal)
            }
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

#Preview {
    Users_4()
}
