//
//  Director.swift
//  DesignPatterns
//
//  Created by Ibrahim Hosseini on 4/28/22.
//

import Foundation
import UIKit

class AlertMaker {
  func success() -> UIAlertController {
    AlertBuilder()
      .setTitle("Success")
      .setDescription("Successfully to Login")
      .setStyle(.actionSheet)
      .build()
  }

  func error() -> UIAlertController {
    AlertBuilder()
      .setTitle("Error")
      .setDescription("Error to Login")
      .setStyle(.alert)
      .build()
  }

  func alertWithCustomActions(_ actions: [UIAlertAction]) -> UIAlertController {
    let builder = AlertBuilder()
      .setTitle("Custom alert")
      .setDescription("Custom description")
      .setStyle(.actionSheet)
    actions.forEach { builder.setAction($0) }
    return builder.build()
  }

}
