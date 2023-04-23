//
//  ListView.swift
//  SucculentApp
//
//  Created by Alek Michelson on 4/23/23.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject private var model: Model
    
    var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    var succulents: [Succulent] {
        Succulent.allSucculents()
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            let succulentImageWidth = geometry.size.width/2.5
            
            List {
                LazyVGrid(columns: gridItemLayout, spacing: 4) {
                    ForEach(succulents) { succulent in
                        succulent.image
                            .resizable()
                            .frame(width: succulentImageWidth, height: succulentImageWidth)
                            .cornerRadius(8)
                            .padding()
                    }
                }
            }
            .navigationTitle(Text("Succulents"))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
