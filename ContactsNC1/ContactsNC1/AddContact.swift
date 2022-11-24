//
//  AddContact.swift
//  ContactsNC1
//
//  Created by GaetanoMiranda on 17/11/22.
//

import SwiftUI



struct AddContact: View {
    
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var phoneNumber: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Name", text: $name)
                    TextField("Surname", text: $surname)
                }
                Section {
                    TextField("Phone number", text: $phoneNumber).keyboardType(.numberPad)
                }
            }
            .navigationBarItems(trailing:
                                Button (action: {
             let newContact = Contact(context: moc)
                newContact.id = UUID()
                newContact.name = name
                newContact.surname = surname
                newContact.phoneNumber = phoneNumber
                
                try? moc.save()
                dismiss()
                
                                }) {
                                    Text("Done")
                                }
                            )
            .navigationBarItems(leading:
                                Button (action: {
             
                                }) {
                                    Text("Cancel")
                                }
                            )
        }.navigationTitle("New contact")
        
    }
}

struct AddContact_Previews: PreviewProvider {
    static var previews: some View {
        AddContact()
    }
}
