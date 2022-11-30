//
//  Builder.swift
//  DesignPatterns
//
//  Created by Ibrahim Hosseini on 4/28/22.
//

import Foundation
import UIKit

//MARK: - Builder
class AlertBuilder {
  public private(set) var title: String = ""
  public private(set) var description: String = ""
  public private(set) var style: UIAlertController.Style = .alert
  public private(set) var actions: [UIAlertAction] = []

  @discardableResult
  func setTitle(_ title: String) -> AlertBuilder {
    self.title = title
    return self
  }

  @discardableResult
  func setDescription(_ description: String) -> AlertBuilder {
    self.description = description
    return self
  }

  @discardableResult
  func setStyle(_ style: UIAlertController.Style) -> AlertBuilder {
    self.style = style
    return self
  }

  @discardableResult
  func setAction(_ action: UIAlertAction) -> AlertBuilder {
    self.actions.append(action)
    return self
  }

  func build() -> UIAlertController {
    let alert = UIAlertController(title: title,
                                  message: description,
                                  preferredStyle: style)

    actions.forEach { alert.addAction($0) }

    return alert
  }

}
