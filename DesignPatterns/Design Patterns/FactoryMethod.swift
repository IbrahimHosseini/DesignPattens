//
//  FactoryMethod.swift
//  DesignPatterns
//
//  Created by Ibrahim Hosseini on 4/16/22.
//

import Foundation

///
/// Intent (https://refactoring.guru/design-patterns/factory-method)
/// Factory Method is a creational design pattern that provides an interface for creating objects in a superclass,
/// but allows subclasses to alter the type of objects that will be created.
///

// Protocol

protocol WalletInfo {
  var name: Wallet { get }
  var symbol: String { get }

  func balance() -> Double
  func gasPrice( _ completion: @escaping (Float) -> Void)
  func send(with data: Data, completion: @escaping (String) -> Void)
}

// Implement Class final class

final class Ethereum: WalletInfo {
  var name: Wallet = .Ethereum

  var symbol: String = "ETH"

  func balance() -> Double {
    // get balance from web3swift API
    return 0.0023
  }

  func gasPrice(_ completion: @escaping (Float) -> Void) {
    // get gas price from web3swift APIs
    completion(39)
  }

  func send(with data: Data, completion: @escaping (String) -> Void) {
    // get gas price from web3swift APIs
    // do some stuff code here to send an ETH

    // get txHash token form send transaction
    completion("0x2446f1fd773fbb9f080e674b60c6a033c7ed7427b8b9413cf28a2a4a6da9b56c")
  }
}

final class Binance: WalletInfo {
  var name: Wallet = .Binance

  var symbol: String = "BNB"

  func balance() -> Double {
    // get balance from web3swift API
    return 21.345
  }

  func gasPrice(_ completion: @escaping (Float) -> Void) {
    // get gas price from web3swift APIs
    completion(0.001)
  }

  func send(with data: Data, completion: @escaping (String) -> Void) {
    // get gas price from web3swift APIs
    // do some stuff code here to send an BNB

    // get txHash token form send transaction
    completion("0x2446f1fd773fbb9f080e674b60c6a033c7ed7427b8b9413cf28a2a4a6da9b56c")
  }
}

// Wallets

enum Wallet: String {
  case Ethereum, Binance
}


// WalletFactory

/// create wallet factory
enum WalletFactory {
  static func create(_ wallet: Wallet) -> WalletInfo {
    switch wallet {
    case .Ethereum:
      return Ethereum()
    case .Binance:
      return Binance()
    }
  }
}

