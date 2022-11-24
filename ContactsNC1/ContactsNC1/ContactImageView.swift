//
//  ContactImageView.swift
//  ContactsNC1
//
//  Created by GaetanoMiranda on 18/11/22.
//

import SwiftUI

struct ContactImageView: View {
    let contatto: Contact
    var body: some View {
      
        
                
                HStack (spacing: 2){
                    Text(contatto.name?.prefix(1) ?? "").font(.system(.title, design: .rounded, weight: .semibold)).foregroundColor(.white)
                    Text(contatto.surname?.prefix(1) ?? "").font(.system(.title, design: .rounded, weight: .semibold)).foregroundColor(.white)
                }.padding()
            .background(.gray)
            .clipShape(Circle())
                
        
    }
}

//
//    .padding()
//    .background(.gray)
//    .clipShape(Circle())
//
//ZStack{
//    Circle().foregroundColor(.gray).frame(width: 60, height: 60)
//    HStack (spacing: 2){
//        Text(contatto.name?.prefix(1) ?? "").font(.system(.body, design: .rounded, weight: .bold)).foregroundColor(.white)
//        Text(contatto.surname?.prefix(1) ?? "").font(.system(.body, design: .rounded, weight: .bold)).foregroundColor(.white)
//    }
//
//
//}

