//
//  ContentView.swift
//  SwiftUIList
//
//  Created by Chang Sophia on 3/23/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

 struct ContentView: View {

 var engines = [ Engine(name: "Annie", image:"Annie"),
        Engine(name: "Arthur", image:"Arthur"),
        Engine(name: "Ashima", image:"Ashima"),
        Engine(name: "Bash", image:"Bash"),
        Engine(name: "Belle", image:"Belle"),
        Engine(name: "Ben", image:"Ben"),
        Engine(name: "Bertie", image:"Bertie"),
        Engine(name: "Bill", image:"Bill"),
        Engine(name: "Billy", image:"Billy"),
        Engine(name: "Butch", image:"Butch"),
        Engine(name: "Carlos", image:"Carlos"),
        Engine(name: "Charlie", image:"Charlie"),
        Engine(name: "Clarabel", image:"Clarabel"),
        Engine(name: "Colin", image:"Colin"),
        Engine(name: "Daisy", image:"Daisy"),
        Engine(name: "Dart", image:"Dart"),
        Engine(name: "Dash", image:"Dash"),
        Engine(name: "Den", image:"Den"),
        Engine(name: "Dennis", image:"Dennis"),
        Engine(name: "Diesel", image:"Diesel"),
        Engine(name: "Donald", image:"Donald"),
        Engine(name: "Douglas", image:"Douglas"),
        Engine(name: "Duck", image:"Duck"),
        Engine(name: "Duncan", image:"Duncan"),
        Engine(name: "Edward", image:"Edward"),
        Engine(name: "Elizabeth", image:"Elizabeth"),
        Engine(name: "Emily", image:"Emily"),
        Engine(name: "Etienne", image:"Etienne"),
        Engine(name: "Fergus", image:"Fergus"),
        Engine(name: "Frankie", image:"Frankie"),
        Engine(name: "Fredinand", image:"Fredinand"),
        Engine(name: "Gordon", image:"Gordon"),
        Engine(name: "Henry", image:"Henry"),
        Engine(name: "Iron Bert", image:"Iron Bert"),
        Engine(name: "Iron's arry", image:"Iron's arry"),
        Engine(name: "James", image:"James"),
        Engine(name: "Mike", image:"Mike"),
        Engine(name: "Percy", image:"Percy"),
        Engine(name: "Rex", image:"Rex"),
        Engine(name: "Ryan", image:"Ryan"),
        Engine(name: "Thomas", image:"Thomas"),
        Engine(name: "Toby", image:"Toby")
    
    ]

    var body: some View {
        List(engines.indices) { index in
                            
            if (0...41).contains(index) {
                FullImageRow(engine: self.engines[index])
            } else {
                BasicImageRow(engine: self.engines[index])
             }
                            
            }
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Engine: Identifiable {
    var id = UUID()  //.id, avoid duplicated
    var name: String
    var image: String
}
struct BasicImageRow: View {
    var engine: Engine
    
    var body: some View {
                   HStack {
                       Image(engine.image)
                       .resizable()
                       .frame(width: 40, height:40)
                       .cornerRadius(5)
                       Text(engine.name)
                    .font(.system(.title, design: .rounded))
                   }
               }
           }

struct FullImageRow: View {

  var engine: Engine
  
  var body: some View {
      ZStack {
        Image(engine.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height:200)
            .cornerRadius(10)
            .overlay(
                Rectangle()
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .opacity(0.2)
                          )
        Text(engine.name)
            .font(.system(.largeTitle, design: .rounded))
            .fontWeight(.black)
            .foregroundColor(.white)
            .offset(x:100, y:50)
            
                      }
                  }
              }
