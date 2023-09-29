//
//  UserCell.swift
//  threads-clone
//
//  Created by Antonio Garcia on 29/09/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            VStack(alignment: .leading) {
                Text("Antoniosouza")
                    .fontWeight(.semibold)
                Text("Antonio Souza")
            }
                .font(.footnote)
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
