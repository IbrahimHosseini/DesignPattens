//
//  Products.swift
//  DesignPatterns
//
//  Created by Ibrahim Hosseini on 4/28/22.
//

import Foundation
import UIKit

//MARK: - Product
public struct Alert {
  let title: String//Title
  let description: String//Description
//  let action: [Actions]
//  let input: [Inputs]
}

enum Title: String {
  case success, error, warning
}

struct Description {
  let desc: String?
}

struct Actions {
//  let ok: UIButton?
//  let cancel: UIButton?
//  let customAction: UIButton?
}

struct Inputs {
//  let numberInput: UITextField?
//  let charInput: UITextField?
}
