//
//  DetailView.swift
//  ContactsNC1
//
//  Created by GaetanoMiranda on 18/11/22.
//

import SwiftUI
import CoreLocation
import CoreLocationUI

struct DetailView: View {
    let contatto: Contact
    var body: some View {
       
        
        VStack{
                ContactImageView(contatto: contatto).frame(maxWidth: .infinity, alignment: .center).accessibilityHidden(true)
                HStack(alignment: .center){
                    Text(contatto.name ?? "").font(.title)
                    Text(contatto.surname ?? "").font(.title)
                }//.frame(maxWidth: .infinity, alignment: .center)
                
                HStack{
                    Button{
                        let message = "sms:"
                        let messageNumberformatted = message + (contatto.phoneNumber ?? "")
                                        guard let url = URL(string: messageNumberformatted) else { return }
                                        UIApplication.shared.open(url)
                        
                    } label: {
                        VStack{
                            Image(systemName: "message.fill")
                            Text("message").font(.caption)
                        }
                        .frame(width: 80, height: 50)
                        
                    }.background(Color("ButtonColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .buttonStyle(BorderlessButtonStyle())
                    
                    Button{
                        let phone = "tel:"
                        let phoneNumberformatted = phone + (contatto.phoneNumber ?? "")
                                        guard let url = URL(string: phoneNumberformatted) else { return }
                                        UIApplication.shared.open(url)

                    } label: {
                        VStack{
                            Image(systemName: "phone.fill")
                            Text("phone").font(.caption)
                        }
                        .frame(width: 80, height: 50)
                        
                    }.background(Color("ButtonColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .buttonStyle(BorderlessButtonStyle())
                    
                    Button{
                        //
                    } label: {
                        VStack{
                            Image(systemName: "video.fill")
                            Text("video").font(.caption)
                        }
                        .frame(width: 80, height: 50)
                        
                    }.background(Color("ButtonColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .buttonStyle(BorderlessButtonStyle())
                    
                    Button{
                        //
                    } label: {
                        VStack{
                            Image(systemName: "envelope.fill")
                            Text("email").font(.caption)
                        }
                        .frame(width: 80, height: 50)
                        
                    }.background(Color("ButtonColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .buttonStyle(BorderlessButtonStyle())
                
                
            }
            Form{
                    
                
                Section {
                    Button {
                        let phone = "tel:"
                        let phoneNumberformatted = phone + (contatto.phoneNumber ?? "")
                                        guard let url = URL(string: phoneNumberformatted) else { return }
                                        UIApplication.shared.open(url)

                    } label: {
                        VStack(alignment: .leading){
                            Text("mobile").font(.caption).foregroundColor(.primary)
                            Text(contatto.phoneNumber ?? "")
                        }
                    }
                   
                    
                }
                Section{
                    Button{
                        let message = "sms:"
                        let messageNumberformatted = message + (contatto.phoneNumber ?? "")
                                        guard let url = URL(string: messageNumberformatted) else { return }
                                        UIApplication.shared.open(url)
                    }label: {
                        Text("Send message")
                    }
                    Button{
                        
                    }label: {
                        Text("Share contact")
                    }
                    Button{
                        
                    }label: {
                        Text("Add to favorites")
                    }
                }
                
                Section{
                    Button{
                        
                    }label: {
                        Text("Add to emergency contacts")
                    }
                    
                }
                
                Section{
                    Button{
                        
                    }label: {
                        Text("Share my location")
                    }
                    
                   
                    
                    
                }
                
            }
        }.background(Color("ContactViewBackground"))

            
      
            
            

    }
}
