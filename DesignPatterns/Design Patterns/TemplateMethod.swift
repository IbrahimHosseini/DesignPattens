//
//  TemplateMethod.swift
//  DesignPatterns
//
//  Created by Ibrahim Hosseini on 4/8/22.
//

import Foundation

typealias File     = String
typealias RawData  = String
typealias `Data`   = String
typealias Analysis = String

/// Blueprint of the functions that will require custom implementations
///
protocol DataMiner {
  func openFile(path: String) -> File
  func extractData(file: File) -> RawData
  func parseData(data: RawData) -> `Data`
  func closeFile(file: File)
}

extension DataMiner {
  /// TEMPLATE METHOD: series of functions defining the algorithm
  func mine(path: String) {
    let file = openFile(path: path)
    let rawData = extractData(file: file)
    let data = parseData(data: rawData)
    let analysis = analyzeData(analysis: data)
    sendReport(analysis: analysis)
    closeFile(file: file)
  }

  // MARK: Default implementations

  func analyzeData(analysis: `Data`) -> Analysis {
    print("ℹ️ analyze data")
    return "analysis"
  }
  func sendReport(analysis: Analysis) {
    print("ℹ️ send report")
  }
}

// PDFDataMiner conforms to the DataMiner protocol

class PDFDataMiner: DataMiner {
  init() {
    // Call the template method
    mine(path: "PDFFilePath")
  }
  func openFile(path: String) -> File {
    print("📃️ open PDF File")
    return "PDF file opened"
  }
  func extractData(file: File) -> RawData {
    print("📃️ extract PDF data")
    return "PDF raw data extracted"
  }
  func parseData(data: RawData) -> `Data` {
    print("📃️ parse PDF data")
    return "PDF data parsed"
  }
  func closeFile(file: File) {
    print("📃️ close PDF File")
  }
}
