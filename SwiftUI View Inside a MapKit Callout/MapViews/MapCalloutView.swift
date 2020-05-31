//
//  MapCalloutView.swift
//  tdotwiz
//
//  Created by Ahmed El-Khuffash on 2020-05-31.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

/**
A custom callout view to be be passed as an MKMarkerAnnotationView, where you can use a SwiftUI View as it's base.
*/
class MapCalloutView: UIView {
	
	//create the UIHostingController we need. For now just adding a generic UI
	let body:UIHostingController<AnyView> = UIHostingController(rootView: AnyView(Text("Hello")) )

	
	/**
	An initializer for the callout. You must pass it in your SwiftUI view as the rootView property, wrapped with AnyView. e.g.
	MapCalloutView(rootView: AnyView(YourCustomView))
	
	Obviously you can pass in any properties to your custom view.
	*/
	init(rootView: AnyView) {
		super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
		body.rootView = AnyView(rootView)
		setupView()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setupView()
	}
	
	/**
	Ensures the callout bubble resizes according to the size of the SwiftUI view that's passed in.
	*/
	private func setupView() {
		
		translatesAutoresizingMaskIntoConstraints = false
		
		//pass in your SwiftUI View as the rootView to the body UIHostingController
		//body.rootView = Text("Hello World * 2")
		body.view.translatesAutoresizingMaskIntoConstraints = false
		body.view.frame = bounds
		body.view.backgroundColor = nil
		//add the subview to the map callout
		addSubview(body.view)

		NSLayoutConstraint.activate([
			body.view.topAnchor.constraint(equalTo: topAnchor),
			body.view.bottomAnchor.constraint(equalTo: bottomAnchor),
			body.view.leftAnchor.constraint(equalTo: leftAnchor),
			body.view.rightAnchor.constraint(equalTo: rightAnchor)
		])
		
		sizeToFit()
		
	}
}
