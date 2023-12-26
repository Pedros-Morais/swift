//
//  ContentView.swift
//  IosCalculator
//
//  Created by Pedro  on 19/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var result = "0"
    var body: some View {
        VStack(alignment: .trailing, spacing:0 ) {
            Text("\(result.count)").foregroundColor(.red)
            Spacer()
            HStack{
                Text(result)
                    .padding()
                    .lineLimit(1)
                    .frame(maxWidth:.infinity)
                    .font(.system(size: CGFloat(80 / Int((Double(result.count + 10) / 10.0)))))
                    .foregroundColor(.white)
                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical:false)
                
            }
            HStack{
                Button("A/C"){}
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("+/-"){}
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("%"){}
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("/"){}
                    .padding(.vertical, 40)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                  
            }.foregroundColor(.white)
            HStack{
                Button("7"){}
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("8"){}
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("9"){}
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("X"){}
                    .padding(.vertical, 40)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                  
            }.foregroundColor(.white)
            HStack{
                Button("4"){}
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("5"){}
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("6"){}
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("-"){}
                    .padding(.vertical, 40)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                  
            }.foregroundColor(.white)
     
            HStack{
                Button("1"){
                    result += "1"
                }
                    .padding()
                    .frame(maxWidth: .infinity)
                   
                Button("2"){
                    result += "2"
                }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("3"){}
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("+"){}
                    .padding(.vertical, 40)

                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                  
            }.foregroundColor(.white)
            GeometryReader { geometry in
                HStack{
                    Button("0"){}
                        .padding()
                        .frame(minWidth: geometry.size.width / 2)
                    Button(","){}
                        .padding()
                        .frame(maxWidth: .infinity)
                    Button("="){}
                        .padding(.vertical, 40)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(.orange)
                }.foregroundColor(.white)
            }.frame(maxHeight: 92)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.black)
            
        
       
    }
}

#Preview {
    ContentView()
}
