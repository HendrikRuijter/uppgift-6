//
//  DiastoleView.swift
//  uppgift-6
//
//  Created by Hendrik on 2023-11-07.
//

import SwiftUI

struct DiastoleView: View {
    var systole_value = ""
    
    var body: some View {
        Text(predictModel(value: systole_value))
            .multilineTextAlignment(.center)
    }
}

struct DiastoleView_Previews: PreviewProvider {
    static var previews: some View {
        DiastoleView()
    }
}
