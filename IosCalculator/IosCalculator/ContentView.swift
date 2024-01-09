//
//  ContentView.swift
//  IosCalculator
//
//  Created by Pedro  on 19/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var previous = 0.0
    @State var result = 0.0
    @State var operation = 0.0
    @State var previousOperation = 0.0
    func process(digit: Int){
        if operation > 0 {
            result = 0
            previousOperation = operation
            operation = -1
        }
        result = (result * 10) + Double(digit)
    }
    func calculate(){
        if previousOperation == 1 {
            result = previous + result
            previousOperation = 0
        } else if previousOperation == 2 {
            result = previous - result
            previousOperation = 0
        }
        else if previousOperation == 3 {
            result = previous * result
            previousOperation = 0
        }
        else if previousOperation == 4 {
            result = previous / result
            previousOperation = 0
        }
        previous = result
    }
    func reset(){
        previous = 0
        previousOperation = 0
        result = 0
        operation = 0
        
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
                   reset()
                }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("+/-"){}
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("%"){}
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("/"){
                    calculate()
                    operation = 4
                }
                    .padding(.vertical, 40)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                  
            }.foregroundColor(.white)
            HStack{
                Button("7"){
                    process(digit: 7)
                }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("8"){
                    process(digit: 8)
                }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("9"){
                    process(digit: 9)
                }
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("X"){
                    calculate()
                    operation = 3
                }
                    .padding(.vertical, 40)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                  
            }.foregroundColor(.white)
            HStack{
                Button("4"){
                    process(digit: 4)
                }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("5"){
                    process(digit: 5)
                }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   
                Button("6"){
                    process(digit: 6)
                }
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("-"){
                    calculate()
                    operation = 2
                }
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
                   
                Button("3"){
                    process(digit: 3)
                }
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                Button("+"){
                    calculate()
                    operation = 1
                }
                    .padding(.vertical, 40)

                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                  
            }.foregroundColor(.white)
            GeometryReader { geometry in
                HStack{
                    Button("0"){
                        process(digit: 0)
                    }
                        .padding()
                        .frame(minWidth: geometry.size.width / 2)
                    Button(","){}
                        .padding()
                        .frame(maxWidth: .infinity)
                    Button("="){
                        calculate()
                        previousOperation = 999
                        operation = 999
                    }
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
