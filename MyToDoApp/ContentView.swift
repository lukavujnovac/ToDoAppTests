//
//  ContentView.swift
//  MyToDoApp
//
//  Created by Luka Vujnovac on 01.10.2021..
//

import SwiftUI

struct ContentView: View {
    
    @State private var taskName: String = ""
    @State private var tasks = [String]()
    
    var body: some View {
        VStack{
            HStack {
                TextField("Enter Task", text: $taskName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibilityIdentifier("taskNameTextField")
                
                Button("Add") {
                    self.tasks.append(self.taskName)
                }.padding(10)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    .accessibilityIdentifier("addTaskButton")
            }
            
            List(self.tasks, id: \.self) {name in 
                Text("\(name)")
            }
            
            Spacer()
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
