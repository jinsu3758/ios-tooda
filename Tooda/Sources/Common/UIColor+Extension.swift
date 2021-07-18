//
//  UIColor+Extension.swift
//  Tooda
//
//  Created by lyine on 2021/04/08.
//  Copyright © 2021 DTS. All rights reserved.
//

import UIKit

// MARK: Hex

extension UIColor {
  convenience init(hex: String) {
    var colorStr: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if colorStr.hasPrefix("#") && colorStr.count == 7 {
      colorStr.remove(at: colorStr.startIndex)
      if let rgb: Int = Int(colorStr, radix: 16) {
        self.init(
          red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
          green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
          blue: CGFloat(rgb & 0x0000FF) / 255.0,
          alpha: CGFloat(1.0)
        )
      } else {
        self.init(red: 0, green: 0, blue: 0, alpha: 1)
      }
    } else {
      self.init(red: 0, green: 0, blue: 0, alpha: 1)
    }
  }

  func toHexStr() -> String {
    var r: CGFloat = 0
    var g: CGFloat = 0
    var b: CGFloat = 0
    var a: CGFloat = 0

    getRed(&r, green: &g, blue: &b, alpha: &a)

    let rgb: Int = (Int)(r * 255) << 16 | (Int)(g * 255) << 8 | (Int)(b * 255) << 0

    return NSString(format: "#%06x", rgb) as String
  }
}

// MARK: RGB

extension UIColor {
  convenience init(r: Int, g: Int, b: Int, a: CGFloat = 1.0) {
    self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: a)
  }
}

// MARK: UIColor from Asset

enum AppColor: String {
  case mainGreem
  case gray1
  case gray2
  case gray3
  case gray4
  case subBlue
  case subRed
  case white
  case backgroundWithAlpha40
}

extension UIColor {
  convenience init?(type: AppColor) {
    self.init(named: type.rawValue)
  }
}
