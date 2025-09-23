//
//  TextView.swift
//  SwiftUI intro
//
//  Created by Dallin J Cottam on 9/23/25.
//

import SwiftUI

struct TextView: View {
    var body: some View {
            Text("Hello, world")
            .font(.custom("Zapfino", size: 34))
            .foregroundStyle(.red)
    }
}

#Preview {
    TextView()
}
