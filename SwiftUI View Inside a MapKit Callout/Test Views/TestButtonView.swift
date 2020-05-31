//
//  TestButtonView.swift
//  SwiftUI View Inside a MapKit Callout
//
//  Created by Ahmed El-Khuffash on 2020-05-31.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import SwiftUI

struct TestButtonView: View {
    var body: some View {
		
		VStack {
			NavigationLink(destination: TestScrollView() ) {
				Text("NavigationLinks within the SwiftUI View don't work")
			}
			Text("Not surprising, since technically this view isn't inside a Navigation View?")
			
			
			Button(action: {
				UIApplication.shared.open(URL(string: "https://twitter.com/khuffie")!)
			}) {
				Text("Regular Button's seem to work")
				.padding()
			}

		}
    }
}

struct TestButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TestButtonView()
    }
}
