# swiftui-mapkit-callout
This is a simple class to add a SwiftUI View inside an MKAnnotationView.detailCalloutAccessoryView property.

Yes, you can technically set .canShowCallout to false and create your own completely custom callout, but you'd have to draw your own bubble, position it manually and who knows what can happen in the future. 

I wanted to avoid doing that, and wanted to avoid using UIKit.

## Usage

* Copy the `MapCalloutView` file located inside the `MapViews` folder into your project.
* Inside the `mapView:viewFor:annotation` method, create or reuse an `MKAnnotationView` as normal
* Set `.canShowCallout` to `true` on your `MKAnnotationView`
* Create your SwiftUI View as normal
* Pass your created view in the initializer for `MapCalloutView`, making sure it's type casted to `AnyView`
* Pass your instance of `MapCalloutView` to `detailCalloutAccessoryView`

## Example

```swift
view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
view?.canShowCallout = true

//create any SwiftUI View you like
let customView = Text("This is a SwiftUI Text View")

//create an instance of MapCalloutView
let callout = MapCalloutView(rootView: AnyView(customView))

//pass it to detailCalloutAccessoryView
view?.detailCalloutAccessoryView = callout
```

The sample project includes initializations of a few different kind of views.

## Tips & Tricks
* I'd recommend setting a `maxHeight` and `maxWidth` to the `.frame` of your SwiftUI View
* The left and right callout accessory views will work as expected
* If `title` is set on the `annotation`, it *will* be displayed above your SwiftUI View. I haven't figured out a way to hide this. If you have any thoughts, would love to hear them!
