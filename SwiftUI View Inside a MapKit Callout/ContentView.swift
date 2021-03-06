//
//  ContentView.swift
//  SwiftUI View Inside a MapKit Callout
//
//  Created by Ahmed El-Khuffash on 2020-05-31.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		NavigationView {
			MapView()
				//.edgesIgnoringSafeArea(.all)
			
			.navigationBarTitle("SwiftUI Callouts")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
