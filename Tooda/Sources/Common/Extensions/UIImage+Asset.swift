//
//  UIImage+Asset.swift
//  Tooda
//
//  Created by jinsu on 2021/05/23.
//  Copyright © 2021 DTS. All rights reserved.
//

import UIKit

enum AppImage: String {
  // Home
  case backBarButton = "back"
  case searchBarButton = "search"
  case settingBarButton = "setting"
  case noteBlue = "note-blue"
  case noteGray = "note-gray"
  case noteGreen = "note-green"
  case noteOrange = "note-orange"
  case notePurple = "note-purple"
  case noteRed = "note-red"
  case noteSkyblue = "note-skyblue"
  case noteYellow = "note-yellow"
  case angry = "angry"
  case chicken = "chicken"
  case omg = "omg"
  case pencil = "pencil"
  case sad = "sad"
  case thinking = "thinking"

  case login = "login"
  case iconDownGray = "icon_down_gray"
}

extension UIImage {
  
  convenience init?(type: AppImage) {
    self.init(named: type.rawValue)
  }
}
