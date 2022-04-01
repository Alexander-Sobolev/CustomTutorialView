//
//  CustomView.swift
//  CustomPageView
//
//  Created by Alexander Sobolev on 01.04.2022.
//

import SwiftUI

struct CustomView: View {
  let pageIndex: Int
  
  var body: some View {
    VStack {
      Image(systemName: "globe").resizable()
        .scaledToFit()
        .frame(width: 50, height: 50)
        .foregroundColor(.orange)
      Text("Hello world: \(pageIndex)")
        .font(.system(size: 24))
        .fontWeight(.bold)
    }
  }
}

extension View {
  func eraseToAnyView() -> AnyView {
    AnyView(self)
  }
}

