//
//  PaulsDivider.swift
//  MoonShot
//
//  Created by Eric Johnson on 3/5/23.
//

import SwiftUI

struct PaulsDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct PaulsDivider_Previews: PreviewProvider {
    static var previews: some View {
        PaulsDivider()
    }
}
