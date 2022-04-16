//
//  Facade.swift
//  DesignPatterns
//
//  Created by Ibrahim Hosseini on 4/8/22.
//

import Foundation


//MARK: - Protocol

protocol Shape {
  func draw(_ height: Double, width: Double)
}

//MARK: - Rectangle

class Rectangle: Shape {
  func draw(_ height: Double, width: Double) {
    print("Draw Rectangle -> H:\(height), W:\(width)")
  }
}

//MARK: - Circle

class Circle: Shape {
  func draw(_ height: Double, width: Double) {
    print("Draw Circle -> H:\(height), W:\(width)")
  }
}

//MARK: - Square

class Square: Shape {
  func draw(_ height: Double, width: Double) {
    print("Draw Square -> H:\(height), W:\(width)")
  }
}

//MARK: - Facade Class

class FacadeClass {

  private var height: Double
  private var width: Double

  init(_ height: Double, width: Double) {
    self.height = height
    self.width = width

    self.circle()
    self.rectangle()
    self.square()
  }

  private func square() {
    let square = Square()
    square.draw(self.height, width: self.width)
  }

  private func rectangle() {
    let rectangle = Rectangle()
    rectangle.draw(self.height, width: self.width)
  }

  private func circle() {
    let circle = Circle()
    circle.draw(self.height, width: self.width)
  }
}
