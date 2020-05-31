//
//  MapView.swift
//  tdotwiz
//
//  Created by Ahmed El-Khuffash on 2020-05-26.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import Foundation
import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
	
	/**
	Sample data for map annotations.
	*/
	let sampleData = [
		MKPointAnnotation(__coordinate: CLLocationCoordinate2D(latitude: 43.585563, longitude: -79.540732), title: "Marie Curtis Park East Beach", subtitle: "Image Test"),
		MKPointAnnotation(__coordinate: CLLocationCoordinate2D(latitude: 43.637432, longitude: -79.455954), title: "Sunnyside Beach", subtitle: "Scroll Test"),
		MKPointAnnotation(__coordinate: CLLocationCoordinate2D(latitude: 43.619325, longitude: -79.393254), title: "Hanlan\'s Point Beach", subtitle: "Button Test"),
		MKPointAnnotation(__coordinate: CLLocationCoordinate2D(latitude: 43.66381, longitude: -79.305057), title: "Woodbine Beaches", subtitle: "Right Callout Test"),
		MKPointAnnotation(__coordinate: CLLocationCoordinate2D(latitude: 43.71363, longitude: -79.225948), title: "", subtitle: "")

	]
	
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        let mapView = MKMapView()
		//center the map in toronto
        // set coordinates (lat lon)
        let coords = CLLocationCoordinate2D(latitude: 43.7288, longitude: -79.3562)
        // set span (radius of points)
		let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        // set region
        let region = MKCoordinateRegion(center: coords, span: span)
		mapView.setRegion(region, animated: false)
		
		mapView.delegate = context.coordinator
        return mapView
    }

    func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
		
		//add anottations here
		for sample in sampleData {
			view.addAnnotation(sample)
		}
    }
	
	func makeCoordinator() -> Coordinator {
		Coordinator(self)
	}
	

	
	class Coordinator: NSObject, MKMapViewDelegate {
		var parent: MapView

		init(_ parent: MapView) {
			self.parent = parent
		}
		
		func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
			//print(mapView.centerCoordinate)
		}
		
		func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
			
			let identifier = "beach"
			
			// attempt to find a cell we can recycle
			var view = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
			
			
			if(view == nil) {
				// we didn't find one; make a new one
				view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
				view?.subtitleVisibility = .visible
				view?.displayPriority = .required
				view?.canShowCallout = true
				view?.titleVisibility = .hidden
				
				let annotation = view?.annotation
				let callout: MapCalloutView
				
				switch annotation?.subtitle {
				case "Image Test":
					let customView = TestImage(imageName: "marvin")
					callout = MapCalloutView(rootView: AnyView(customView))
				case "Scroll Test":
					let customView = TestScrollView()
					callout = MapCalloutView(rootView: AnyView(customView))
				case "Button Test":
					let customView = TestButtonView()
					callout = MapCalloutView(rootView: AnyView(customView))
				case "Right Callout Test":
					let customView = TestImage(imageName: "kitten")
					view?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
					callout = MapCalloutView(rootView: AnyView(customView))
				default:
					let customView = Text("The view when passing no title")
					callout = MapCalloutView(rootView: AnyView(customView))
				}
				
				view?.detailCalloutAccessoryView = callout
				
			} else {
				// we have a view to reuse, so give it the new annotation
				view?.annotation = annotation
			}
			
			return view
		}
		
		func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
			
			print("Call out control tapped")
			
		}
	}

}


