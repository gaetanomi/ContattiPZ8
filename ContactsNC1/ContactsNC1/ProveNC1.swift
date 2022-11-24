//
//  ProveNC1.swift
//  ContactsNC1
//
//  Created by GaetanoMiranda on 18/11/22.
//

import SwiftUI
struct ProveNC1: View {
    let names = ["Holly", "Josh", "Rhonda", "Ted"]
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink(destination: Text(name)) {
                        Text(name)
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Contacts")
        }
    }

    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
}

struct ProveNC1_Previews: PreviewProvider {
    static var previews: some View {
        ProveNC1()
    }
}
