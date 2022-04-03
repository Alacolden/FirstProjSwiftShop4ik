//
//  ContentView.swift
//  Sdd2
//
//  Created by Admin on 20.01.2022.
//

import SwiftUI
struct ContentView: View{
    var body: some View{
        
        Home()
    }
}
struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
struct Home: View {
    
    @State var index = "ALL"
    
    var body: some View{
        ZStack{
            Color.black.opacity(0.06).edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    
                    Button(action: {
                        
                    }){
                        Image(systemName: "line.horizontal.3.decrease.circle")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }){
                        Image(systemName: "cart")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                    }
                
                }
                .padding(.vertical)
                
                HStack{
                    VStack(alignment: .leading, spacing: 10){
                        
                        Text("Welcome!")
                        
                        Text("Discovery")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    
                    
                }
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 25){
                        ForEach(menu,id: \.self){ i in
                            Button(action: {
                                self.index = i
                            }) {
                            Text(i)
                                .foregroundColor(self.index == i ?
                                    Color("Color1") : Color.black.opacity(0.6))
                                .fontWeight(.bold)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                    
                Spacer()
            }
        }
    }
}
var menu = ["ALL", "CLASSIC", "GRAND","FORMAL","ORIGINAL","TREND"]
//public struct ContentView: View {
//    @State public var posObyvX:CGFloat = 1000
//    @State var posX:CGFloat = 1000
//    @State var posXRR:CGFloat = 295
//    @State var posY:CGFloat = 430
//    @State var posx300:CGFloat = 1000
//    @State var posx370 = 370
//    @State var posx230 = 230
//    @State var obyv = "Niker"
//
//
//    func Pok(){
//        if isClick == false{
//            Size()
//            posObyvX = 300
//            posX = 360
//            posx300 = 300
//            posx230 = 230
//            posx370 = 370
//            posButton = 370
//            posx300Size = 300
//            posx370Size = 370
//            posx230Size = 230
//            isClick = true
//
//
//        }
//        else if isClick == true{
//            Size()
//            posObyvX = 1000
//            posX = 1000
//            posx300 = 3000
//            posx230 = 2300
//            posx300Size = 300
//            posx370Size = 370
//            posx230Size = 230
//            posButton = 1000
//            posx370 = 3700
//            isClick = false
//
//        }
//    }
//    func Right(){
//        type += 1
//
//        if  type == 6{
//            type = 1
//        }
//        if  type == 1{
//            obyv = "Niker"
//        }
//        else if  type == 2{
//            obyv = "Niker1"
//        }
//        else if  type == 3{
//            obyv = "Niker2"
//        }
//        else if  type == 4{
//            obyv = "Niker4"
//        }
//        else if  type == 5{
//            obyv = "Niker5"
//        }
//    }
//
//    public var body: some View {
//
//        var colo = Gradient(colors: [.indigo, .white])
//        var grad = LinearGradient(gradient: colo, startPoint: .top, endPoint: .bottom)
//        var coloTwo = Gradient(colors: [.gray, .white])
//        var gradTwo = LinearGradient(gradient: coloTwo, startPoint: .top, endPoint: .bottom)
//
//        NavigationView{
//            //UserView()
//
//            ZStack{
//
//
//                Image("Niker").frame(width: 00, height: 200).background(.black).foregroundColor(.black)
//                LogoFon()
//
//
//                Button(action: Pok, label:
//                        {
//                    Image("Buy").resizable().frame(width: 100, height: 60)
//
//                }).position(x: 200, y: 650)
//
//
//
//                Button(action:Right, label: {
//
//                    Image("Strelo4ka").resizable().frame(width: 50, height: 50)
//
//                }).position(x: 30, y: 400)
//                Image(obyv).resizable().frame(width: 199, height: 199).position(x: 200, y: 370)
//
//
//
//
//                RoundedRectangle(cornerRadius: 20).fill(gradTwo).frame(width: 400, height: 1200).position(x: posX,y: posY).animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.1))
//
//
//                Button(action: Pok, label: {
//                    Text("<- Back")
//                }).position(x: posX, y: -100).animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.1))
//                RoundedRectangle(cornerRadius: 10).fill(Color.black).frame(width: 100, height: 70).position(x:posx300,y: 110).opacity(0.4).animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.1))
//                Image(obyv).resizable().frame(width: 70, height: 70).position(x: posObyvX, y: 100).animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.1))
//                //  Buttons()
//                Size()
//
//            }
//        }
//    }
//}
// struct LogoFon: View{
//
//
//    var body: some View{
//        var color5 = Gradient(colors: [.indigo, .white])
//        var grad = LinearGradient(gradient: color5, startPoint: .top, endPoint: .bottom)
//        var coloTwoo = Gradient(colors: [.gray, .white])
//        var gradTwo = LinearGradient(gradient: coloTwoo, startPoint: .top, endPoint: .bottom)
//      //  RoundedRectangle(cornerRadius: 10).fill(grad).frame(width: 500, height: 500).position(x:210,y: 90).opacity(0.4)
//        RoundedRectangle(cornerRadius: 10).fill(Color.black).frame(width: 300, height: 200).position(x:200,y: 400).opacity(0.4)
//        Image("Logo").resizable().frame(width: 180, height: 180).position(x: 100, y: 0)
//
//        Image("LogoTwo").resizable().frame(width: 180, height: 180).position(x: 300, y: 0)
//    }
//
//}
//
//public  struct Size: View{
//
//    @State var size = 0
//    func Size37(){
//        size = 37
//    }
//    func Size38(){
//        size = 38
//    }
//    func Size39(){
//        size = 39
//    }
//    func Size40(){
//        size = 40
//    }
//    func Size41(){
//        size = 41
//    }
//    func Size42(){
//        size = 42
//    }
//    func Size43(){
//        size = 43
//    }
//    func Size44(){
//        size = 44
//    }
//    func Size45(){
//        size = 45
//
//    }
////    func Sizes(){
////        if isClick == false{
////            posx300Size = 300
////            posx230Size = 230
////            posx370Size = 370
////            isClick = true
////        }
////        else if isClick == true{
////            posx300Size = 3000
////            posx230Size = 2300
////            posx370Size = 3700
////            isClick = false
////        }
////    }
//
//    public var body: some View{
//
//        ZStack{
//            Button(action: {Size37()}, label: {
//                Text("<37>")
//            }).position(x: posx230Size, y: 200)
//            Button(action: {Size38()}, label: {Text("<38>")}).position(x: posx300Size, y: 200)
//            Button(action: {Size39()}, label: {Text("<39>")}).position(x: posx370Size, y: 200)
//            Button(action: {Size40()}, label: {Text("<40>")}).position(x: posx230Size, y: 240)
//            Button(action: {Size41()}, label: {Text("<41>")}).position(x: posx300Size, y: 240)
//            Button(action: {Size42()}, label: {Text("<42>")}).position(x: posx370Size, y: 240)
//            Button(action: {Size43()}, label: {Text("<43>")}).position(x: posx230Size, y: 280)
//            Button(action: {Size44()}, label: {Text("<44>")}).position(x: posx300Size, y: 280)
//            Button(action: {Size45()}, label: {Text("<45>")}).position(x: posx370Size, y: 280)
////            Button(action: {Sizes()}, label: {Image("Buy").resizable().frame(width: 100, height: 60)}).frame(width: 60, height: 60).position(x: posButton, y: 280)
//        }
//
//    }
//}
//
//
//
//

//


//    @State var l = Text("Будущее число")
//    @State var isClick = false
//    @State var isSwich = false
//    @State var selection = 0
//    @State var selection = 0
//    @State var count = 0
//    @State var co = 0
//    @State var darkMode = false
//    @State var isWiFi = false
//    @State var isBluetooth = false
//    @State var isAirMode = false
//
//    @State var isHappy = false
//    @State var isSad = false
//    @State var isDeadInside = false
//
//    @State var name: String
//    @State var r: String
//    @State var g: String
//    @State var b: String
//
//    var names: Array<String> = ["Русский","Казаkский","English"]
//    var time: Array<String> = ["Выкл","5 min","10 min","15 min","20 min"]
//    var body: some View {
//
//    }
//        NavigationView{
//            Form{
//                Section(header: Text("Toggles")){
//                    ToggleCustom(textToggle: "Wi-Fi",boolToggle: isWiFi)
//                    ToggleCustom(textToggle: "Bluetooth",boolToggle: isBluetooth)
//                    ToggleCustom(textToggle: "AirMode",boolToggle: isAirMode)
//                }
//                //Picker(selection: $count, label:
//                //  Text("Язык"), content:{
//                //      ForEach(0..<names.count){
//                //          Text(self.names[$0])
//                //           }
//                //      })
//                //                    Picker(selection: $co, label:
//                //                            Text("Таймер"), content:{
//                //                        ForEach(0..<time.count){
//                //                            Text(self.time[$0])
//                //                        }
//                //                    })
//                Section(header: Text("Settings")){
//
//
//                    Toggle(isOn: $isWiFi, label: {
//                        Text("Wi-fi").foregroundColor(isWiFi ? Color.yellow : Color.gray)
//                    })
//                    Toggle(isOn: $isBluetooth, label: {
//                        Text("Bluetooth").foregroundColor(isBluetooth ? Color.yellow : Color.gray)
//                    })
//                    Toggle(isOn: $isAirMode, label: {
//                        Text("AirMode").foregroundColor(isAirMode ? Color.yellow : Color.gray)
//                    })
//                }
//                Section(header: Text("Mood")){
//                    Toggle(isOn: $isHappy, label: {
//                        Text("Happy").foregroundColor(isHappy ? Color.green : Color.gray)
//                    })
//
//                    Toggle(isOn: $isSad, label: {
//                        Text("Sad").foregroundColor(isSad ? Color.red : Color.gray)
//                    })
//
//                    Toggle(isOn: $isDeadInside, label: {
//                        Text("Dead Inside").foregroundColor(isDeadInside ? Color.black : Color.gray)
//                    })
//                }
//                Section(header: Text("Toggle")){
//
//
//                    HStack{
//                        Text("Model")
//                        Spacer()
//                        Text("iPhone 13 mini")
//                    }
//
//                }
//
//                Section(header: Text("da")){
//                    TextField("Name", text:$name)
//                    Double("R", text:$r)
//                    TextField("G", text:$g)
//                    TextField("B", text:$b)
//
//                    NavigationLink("Rectangle", destination: Menu(name: "da", color: .red, R: Double(r), G: Double(g), B: Double(b)))
//                }
//            }}.navigationTitle(Text("Settigs"))
//
//}
//}

//struct Menu: View{
//    var name: String
//    var color: Color
//    var R: Double
//    var G: Double
//    var B: Double
//    var body: some View{
//        ZStack{
//            RoundedRectangle(cornerRadius: 10).fill(Color(.sRGB, red: R, green: G, blue: B)).frame(width: 300, height: 300)
//            Text(name)
//        }
//    }
//}

//struct ToggleCustom: View{
//    var textToggle: String
//    @State var boolToggle: Bool = false
//    var body: some View{
//        Toggle(isOn: $boolToggle, label: {
//            Text(textToggle).foregroundColor(boolToggle ? Color.yellow : Color.gray)
//        })
//
//
//    }
//}

//  var body: some View {
//
//            ZStack{
//                RoundedRectangle(cornerRadius: 20).fill(Color.gray).frame(width: 400, height: 200)
//
//
//
//                VStack{
//            l.padding()
//
//            Button {
//                setLable()
//            } label: {
//                Text("Нажми на меня что бы сгенерировать число!!")
//            }
//            Toggle(isOn: $isClick, label: {
//                Text("Setting")
//            }).padding()
//                    Toggle(isOn: $isSwich, label:{
//                        Text("Switch")
//
//
//                    }).offset(y:50)
//
//                }
//
//
//
//        }
//}
