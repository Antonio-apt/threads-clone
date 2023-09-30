//
//  ProfileView.swift
//  threads-clone
//
//  Created by Antonio Garcia on 27/09/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 12) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Antonio Souza")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("antoniosouza")
                                .font(.subheadline)
                        }
                        Spacer()
                        CircularProfileImageView()
                    }
                    Text("My bio here")
                        .font(.footnote)
                    
                    Text("2 followers")
                        .font(.caption)
                        .foregroundStyle(Color(.gray))
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.white))
                        .frame(width: 352, height: 32)
                        .background(Color(.black))
                        .cornerRadius(8)
                }
                
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) {
                            filter in VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
