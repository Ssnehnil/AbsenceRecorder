//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Ssnehnil Ghosh on 08/02/2022.
//

import SwiftUI

struct AbsenceItem: View {
    let forename: String
    @State var isPresent: Bool
    
    var body: some View {
        HStack {
            Text("\(forename)")
            Spacer()
            if isPresent {
                Button("✔︎", action: { toggleAbsent() })
            } else {
                Button("❌", action: { toggleAbsent() })
            }
        }
    }
    
    func toggleAbsent() {
        isPresent.toggle()
    }
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(forename: "Ssnehnil", isPresent: true)
    }
}
