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
            HStack{
                Text(result)
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
            }
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
                    .padding()
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
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                  
            }.foregroundColor(.white)
     
            HStack{
                Button("1"){}
                    .padding()
                    .frame(maxWidth: .infinity)
                   
                Button("2"){}
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("3"){}
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("+"){}
                    .padding()
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
            }.frame(maxHeight: 52)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(Color.black)
            .padding()
        
       
    }
}

#Preview {
    ContentView()
}
