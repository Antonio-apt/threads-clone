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
                            UserCell()
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
