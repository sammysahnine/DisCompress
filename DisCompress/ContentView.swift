//
//  ContentView.swift
//  DisCompress
//
//  Created by Sammy Sahnine on 21/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isDragging = false
    @State private var draggedItem: String?
    
    var body: some View {
        VStack(alignment: .center) {
            Text("DisCompress")
                .foregroundStyle(.foreground)
                .padding()
                .fontWidth(.expanded)
                .font(.system(size: 36))
            
            RoundedRectangle(cornerRadius: 30)
                .fill(isDragging ? Color.gray.opacity(0.5) : Color.gray.opacity(0.2))
                .frame(minWidth: 300, maxWidth: 300, minHeight: 300, maxHeight: 300)
                .padding(.trailing, 10)
                .padding(.leading, 10)
                .padding(.bottom, 30)
                .overlay(
                    Text(draggedItem ?? "Drop file here")
                        .foregroundStyle(.foreground)
                        .fontWeight(.bold)
                        .fontDesign(.monospaced)
                        
                )
                .onDrop(of: ["public.text"], isTargeted: $isDragging) { providers, location in
                    return handle(providers: providers)
                }
        }
    }
    
    private func handle(providers: [NSItemProvider]) -> Bool {
        return false
    }
}

struct DragAndDropBox_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
