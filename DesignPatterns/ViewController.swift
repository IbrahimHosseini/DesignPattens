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
    callFacadeMethodPattern()

    /// Testing the "Template Method" Pattern
    callTemplateMethodPattern()

    /// Testing the "Factory Method" Pattern
    callFactoryMethodPattern()

  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    /// Testing the "Builder Method" Pattern
    callBuilderMethodPattern()
  }

  private func callFacadeMethodPattern() {
    _ = FacadeClass(10.5, width: 23.4)
  }

  private func callTemplateMethodPattern() {
    _ = PDFDataMiner()
  }

  private func callFactoryMethodPattern() {
    let eth = WalletFactory.create(.Ethereum)
    print("\nEthereum info is ->", eth.name, eth.symbol)
  }

  private func callBuilderMethodPattern() {
    let ok = UIAlertAction(title: "OK", style: .default)
    let cancel = UIAlertAction(title: "Cancel", style: .cancel)

    let alertMaker = AlertMaker()
    let alert = alertMaker.alertWithCustomActions([ok, cancel])
    present(alert, animated: true)
  }
}
