//
//  ContentView.swift
//  Lecture-1
//
//  Created by Furkan Gözübüyük on 13.01.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
                }
        .foregroundColor(.green)
        .padding()
    }
    
    
    struct CardView: View{
        var isFaceUp:Bool = false
        
        var body: some View {
            ZStack(content: {
                if isFaceUp{
                    RoundedRectangle(cornerRadius:12)
                        .foregroundColor(.white)
                    RoundedRectangle(cornerRadius:12)
                        .strokeBorder(lineWidth: 2)
                    Text("🚘").font(.largeTitle)
                }else{
                    RoundedRectangle(cornerRadius:12)
                }
                
                
                //RoundedRectangle(cornerRadius: 30)
                //.stroke(lineWidth: 3)
                //RoundedRectangle(cornerRadius:12)
                    //.foregroundColor(.white)
                //RoundedRectangle(cornerRadius:12)
                    //strokeBorder(lineWidth: 2)
                //Text("🚘").font(.largeTitle)
            })
            
            
            
            
            
            
        }
        //ZStack(content: {
            //RoundedRectangle(cornerRadius: 30)
            //.stroke(lineWidth: 3)
            //RoundedRectangle(cornerRadius:12)
                //.foregroundColor(.white)
            //RoundedRectangle(cornerRadius:12)

                //.strokeBorder(lineWidth: 2)
            
            //Text("🚘").font(.largeTitle)
            
        //})
        
        //.foregroundColor(.green)
        //.padding()

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    private func addItem() {
        withAnimation {
        
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
