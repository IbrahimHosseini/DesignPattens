//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Ibrahim Hosseini on 3/30/22.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    /// Testing the "Facade" Pattern
    _ = FacadeClass(10.5, width: 23.4)

    /// Testing the "Template Method" Pattern
    _ = PDFDataMiner()

  }
}
