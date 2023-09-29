//
//  ExploreView.swift
//  threads-clone
//
//  Created by Antonio Garcia on 27/09/23.
//

import SwiftUI

struct ExploreView: View {
    @State private var search = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 10, id:\.self) {
                        user in VStack {
                            HStack {
                                    
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
                            
                            Divider()
                        }
                        .padding(.vertical, 4)
                        
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $search, prompt: "Search") {
                
            }
        }
    }
}

#Preview {
    ExploreView()
}
