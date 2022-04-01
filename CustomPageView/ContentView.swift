//
//  ContentView.swift
//  CustomPageView
//
//  Created by Alexander Sobolev on 01.04.2022.
//

import SwiftUI


struct ContentView: View {
  @State var selectedPage = 2
  
  var body: some View {
    // Horizontal
    HPageView(selectedPage: $selectedPage) {
      CustomView(pageIndex: 0)
      CustomView(pageIndex: 1)
      CustomView(pageIndex: 2)
    }
    
    // ForEach Horizontal
    //        HPageView(selectedPage: $selectedPage, data: 0..<6) { i in
    //            CustomView(pageIndex: i)
    //        }
    
    // Vertical
    //        VPageView(selectedPage: $selectedPage) {
    //            CustomView(pageIndex: 0)
    //            CustomView(pageIndex: 1)
    //            CustomView(pageIndex: 2)
    //        }
    
    // ForEach Vertical
    //        VPageView(selectedPage: $selectedPage, data: 0..<6) { i in
    //            CustomView(pageIndex: i)
    //        }
  }
}

extension Int: Identifiable {
  public var id: Int {
    return self
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
