//
//  Model.swift
//  uppgift-6
//
//  Created by Hendrik on 2023-11-07.
//

import Foundation
import CoreML

func predictModel(value: String) -> String {
    guard let systole = Double(value) else {
        return "Internal error: \(value)"
    }
    
    if let model = try? BloodPressurePredictor(configuration: MLModelConfiguration()) {
        guard let output = try? model.prediction(S: systole) else {
            fatalError("Prediction error")
        }
        return "Systole: \(systole) prediction of diastole: \(round(output.D))"
    }
    return "-1.0"
}
