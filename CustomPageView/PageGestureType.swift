//
//  PageGestureType.swift
//  CustomPageView
//
//  Created by Alexander Sobolev on 01.04.2022.
//

import SwiftUI

public enum PageGestureType {
  case standard, simultaneous, highPriority
}

extension View {
  func gesture<G>(_ gesture: G, type: PageGestureType, including mask: GestureMask = .all) -> some View where G: Gesture {
    Group {
      if type == .simultaneous {
        self.simultaneousGesture(gesture, including: mask)
      } else if type == .highPriority {
        self.highPriorityGesture(gesture, including: mask)
      } else {
        self.gesture(gesture, including: mask)
      }
    }
  }
}
