//
//  ContentView.swift
//  QR Scanner
//
//  Created by Bhuwan Singh on 01/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var scannedCode: String?
    
    var body: some View {
        VStack {
            if let scannedCode = scannedCode {
                Text("Scanned Code: \(scannedCode)")
                    .padding()
            } else {
                Text("Scan a QR Code")
                    .padding()
            }
            
            CameraView(didFindCode: { code in
                self.scannedCode = code
            })
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
