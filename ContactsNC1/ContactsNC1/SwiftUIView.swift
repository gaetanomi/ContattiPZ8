//
//  SwiftUIView.swift
//  ContactsNC1
//
//  Created by GaetanoMiranda on 17/11/22.
//

import SwiftUI

struct SwiftUIView: View {
    @FetchRequest(sortDescriptors: []) var contatti:FetchedResults<Contact>
    
    var body: some View {
        List(contatti){contact in
            HStack{
                Text(contact.name ?? "Unknown")
                Text(contact.surname ?? "Unknown").fontWeight(.bold)
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
