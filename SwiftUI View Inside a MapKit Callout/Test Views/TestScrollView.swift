//
//  TestScrollView.swift
//  SwiftUI View Inside a MapKit Callout
//
//  Created by Ahmed El-Khuffash on 2020-05-31.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import SwiftUI

struct TestScrollView: View {
    var body: some View {
		ScrollView {
			Text(" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin imperdiet tempor pellentesque. Nam tempus nunc vitae odio rhoncus euismod. Aenean sit amet nisi in nunc ornare consectetur. Quisque et fringilla dolor. Aenean quis diam commodo, varius massa id, suscipit ante. Duis sed eros a lorem mollis pretium. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ")
			
			Text(" Curabitur non urna ex. Aliquam porta, nisi eget accumsan aliquam, elit dui suscipit neque, rhoncus varius urna quam eu nisl. Vestibulum lobortis molestie arcu, id scelerisque magna viverra et. Sed et euismod velit, nec ornare felis. Phasellus libero sem, aliquam sed dolor eu, placerat ornare sem. Etiam turpis erat, blandit ut pulvinar vitae, varius fringilla purus. Cras ut gravida neque. Etiam sit amet condimentum elit. Morbi varius eros in luctus facilisis. Vivamus et nunc non orci gravida bibendum. Proin sit amet congue augue. Vivamus iaculis consequat dignissim. Phasellus non pharetra leo. Proin vel dui eu elit gravida rhoncus quis eu ante. Suspendisse vestibulum, ipsum et mollis vestibulum, velit velit placerat tortor, et posuere augue lorem ut magna. ")
			
			Text(" Praesent ultrices ex vel eros venenatis, dapibus euismod diam pellentesque. Sed accumsan eros tellus, vel efficitur nulla sodales nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin imperdiet augue tellus, sed ornare diam auctor ac. Suspendisse sit amet ullamcorper risus. Nullam et lorem arcu. Phasellus mi mi, tempus ac tempor vitae, volutpat quis mi. Proin scelerisque neque dolor, sit amet vulputate nisi bibendum porttitor. Etiam aliquam dignissim feugiat. Maecenas nec nisi in eros malesuada pretium eu tempor quam. Etiam est diam, scelerisque vitae libero nec, volutpat interdum justo. Nunc placerat, metus non tristique tristique, ante erat semper enim, quis vulputate est velit malesuada sem. Nullam nec mauris vitae dui pharetra semper vitae nec quam. ")
		}
		.frame(maxHeight: 100)
    }
}

struct TestScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TestScrollView()
    }
}
