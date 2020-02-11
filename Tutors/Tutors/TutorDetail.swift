//
//  TutorDetail.swift
//  Tutors
//
//  Created by Илья on 10.02.2020.
//  Copyright © 2020 Ilya. All rights reserved.
//

import SwiftUI

struct TutorDetail: View {
    var name: String
    var headline: String
    var bio: String
    var body: some View {
        VStack {
            Image(name)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.orange, lineWidth: 4)
            )
            .shadow(radius: 10)
            Text(name)
                .font(.title)
            Text(headline)
                .font(.subheadline)
            
            Divider()
            
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.center)
            .lineLimit(50)
        }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

struct TutorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetail(name: "Simon Ng", headline: "Founder of AppCoda", bio: "iOS Developer and Blogger")
    }
}
