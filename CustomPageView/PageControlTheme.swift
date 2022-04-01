//
//  PageControlTheme.swift
//  CustomPageView
//
//  Created by Alexander Sobolev on 01.04.2022.
//

import SwiftUI

public struct PageControlTheme {
  public var backgroundColor: Color
  public var dotActiveColor: Color
  public var dotInactiveColor: Color
  public var dotSize: CGFloat
  public var spacing: CGFloat
  public var padding: CGFloat
  public var xOffset: CGFloat
  public var yOffset: CGFloat
  public var opacity: Double
  public var alignment: Alignment?
  
  public init(
    backgroundColor: Color,
    dotActiveColor: Color,
    dotInactiveColor: Color,
    dotSize: CGFloat,
    spacing: CGFloat,
    padding: CGFloat,
    xOffset: CGFloat,
    yOffset: CGFloat,
    opacity: Double = 1.0,
    alignment: Alignment? = nil
  ) {
    self.backgroundColor = backgroundColor
    self.dotActiveColor = dotActiveColor
    self.dotInactiveColor = dotInactiveColor
    self.dotSize = dotSize
    self.spacing = spacing
    self.padding = padding
    self.xOffset = xOffset
    self.yOffset = yOffset
    self.opacity = opacity
    self.alignment = alignment
  }
  
  public static var invisible: PageControlTheme {
    return PageControlTheme(
      backgroundColor: .clear,
      dotActiveColor: .clear,
      dotInactiveColor: .clear,
      dotSize: .zero,
      spacing: .zero,
      padding: .zero,
      xOffset: .zero,
      yOffset: .zero,
      opacity: .zero,
      alignment: nil
    )
  }
  
  public static var `default`: PageControlTheme {
    return PageControlTheme(
      backgroundColor: .black,
      dotActiveColor: .white,
      dotInactiveColor: Color(white: 1.0, opacity: 0.2),
      dotSize: 7.0,
      spacing: 9.0,
      padding: 4.0,
      xOffset: 12.0,
      yOffset: -12.0,
      opacity: 1.0,
      alignment: nil
    )
  }
}
