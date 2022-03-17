//
//  UserView.swift
//  Sdd2
//
//  Created by Admin on 13.02.2022.
//
import Foundation
import SwiftUI

struct UserView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
    @State var login = ""
    @State var password = ""
    @State var againpass = ""
    @State var gmail = ""
    @State var thislogin = ""
    let thispassword = ""
    let thismail = ""
    let mails = ["@AOL.", "@gmail.", "@outlook.", "@mail."]
    let stans = ["ru", "com", "eng", "ua", "eu"]
    var body: some View {
        NavigationView{
            VStack{
                TextField("Login", text: $login)
                TextField("Password", text: $password)
                TextField("Again Password", text: $againpass)
                TextField("Mail", text: $gmail)
                
                Button("Register"){
                    if  login.count>=5{
                        if password.count>=6{
                            if againpass==password{
                                if gmail.count>=5{
                                    var thislogin = login
                                    var thispassword = password
                                    var thismail = gmail
                                    
                                    do{
                                        let user = User(context: moc)
                                        user.id = UUID()
                                        user.name = thislogin
                                        user.lastname = thismail
                                        user.role = thispassword
                                        try moc.save()
                                        
                                    }catch{
                                        print(error)
                                    }
                                }
                                NavigationLink(destination: SignIn(), label: {
                                    Text("Log in")
                                }).zIndex(3000).foregroundColor(.green).background(.black).padding().position(x: 200, y: 30)
                            }
                        }
                    }
                    
                    else{
                       return
                    }
                    
                    
                    
                }
                NavigationLink(destination: SignIn(), label: {
                    Text("Log in")
                }).zIndex(3000).foregroundColor(.blue).background(.white).position(x: 210, y: 0)
            }
        }
            .navigationTitle("Register")
        
        }
        
        
    }
//}
struct SignIn: View{
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
    @State var login = ""
    @State var password = ""
    var body: some View {
        NavigationView{
        VStack{
            TextField("Login", text: $login)
            TextField("Password", text: $password)
            Button("Sign in"){
                for uses in users{
                    if uses.name == login && uses.role == password{
                        ContentView()
                    }
                    else{
                        print("Okk")
                    }
                }
            }
        }
        }
        .navigationTitle("Sign In")
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
