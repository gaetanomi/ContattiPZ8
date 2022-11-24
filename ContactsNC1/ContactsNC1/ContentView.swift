//
//  ContentView.swift
//  ContactsNC1
//
//  Created by GaetanoMiranda on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.surname),
        SortDescriptor(\.name)
    ]) var contatti:FetchedResults<Contact>
    @State private var showingAddScreen = false
    @State private var query = ""
    
    
    
    var body: some View {
        
        NavigationStack{
            
            List {
                ForEach(contatti) { contatto in
                    NavigationLink {
                        DetailView(contatto: contatto)
                    } label: {
                        HStack {
                            Text(contatto.name ?? "Unknown Title")
                            Text(contatto.surname ?? "Unknown Title").fontWeight(.bold)
                        }
                    }
                }.onDelete(perform: deleteContact)
            }.listStyle(.inset)
 .toolbar {
               
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingAddScreen.toggle()
                    } label: {
                            Label("Options", systemImage: "plus")
                    } .accessibilityLabel("Add a new contact")
                }

            }
            .sheet(isPresented: $showingAddScreen){
                AddContact()
            }
            .navigationTitle("Contacts (PZ8)")
            
        }
    }
    
    
    func deleteContact(at offsets: IndexSet) {
        for offset in offsets {
            let contatto = contatti[offset]
            moc.delete(contatto)
        }
        
        try? moc.save()
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
