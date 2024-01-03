//
//  ContentView.swift
//  IosCalculator
//
//  Created by Pedro  on 19/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var result = 0
    @State var operation = 0
    @State var previousOperation = 0
    func process(digit: Int){
        if operation > 0 {
            result = 0
        }
        result = (result * 10) + digit
    }
    
    
    var body: some View {
        VStack(alignment: .trailing, spacing:0 ) {
            Text("\(String(result).count)").foregroundColor(.red)
            Spacer()
            HStack{
                Text(String(result))
                    .padding()
                    .lineLimit(1)
                    .frame(maxWidth:.infinity)
                    .font(.system(size: CGFloat(80 / Int((Double(String(result).count + 10) / 8.0)))))
                    .foregroundColor(.white)
                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical:false)
                
            }
            HStack{
                Button("A/C"){
                    result = 0
                }
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
                    process(digit: 1)
                   
                }
                    .padding()
                    .frame(maxWidth: .infinity)
                   
                Button("2"){
                    process(digit: 2)
                }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("3"){}
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("+"){
                    operation = 1
                }
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
