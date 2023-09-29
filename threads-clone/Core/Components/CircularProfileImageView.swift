//
//  CircularProfileImageView.swift
//  threads-clone
//
//  Created by Antonio Garcia on 29/09/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("myself")
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircularProfileImageView()
}
