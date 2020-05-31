//
//  TestImage.swift
//  SwiftUI View Inside a MapKit Callout
//
//  Created by Ahmed El-Khuffash on 2020-05-31.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import SwiftUI

struct TestImage: View {
	
	var imageName: String
	
    var body: some View {
        Image(imageName)
		.resizable()
		.scaledToFit()
    }
}

struct TestImage_Previews: PreviewProvider {
    static var previews: some View {
		TestImage(imageName: "marvin")

    }
}
