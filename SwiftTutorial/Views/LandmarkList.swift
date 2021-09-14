//
//  LandmarkList.swift
//  SwiftTutorial
//
//  Created by A on 9/9/21.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [LandMark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
