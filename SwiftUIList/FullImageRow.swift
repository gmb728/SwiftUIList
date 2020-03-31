//
//  FullImageRow.swift
//  SwiftUIList
//
//  Created by Chang Sophia on 3/31/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

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
                    }
                }
            }


struct FullImageRow_Previews: PreviewProvider {
    static var previews: some View {
        FullImageRow(engine: engine)
    }
}
