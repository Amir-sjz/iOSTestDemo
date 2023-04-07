//
//  LandmarkList.swift
//  Landmarks
//
//  Created by chengz on 2023/4/7.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmak in
                    NavigationLink {
                        LandmarkDetail(landmark: landmak)
                    } label: {
                        LandmarkRow(landmark: landmak)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}





struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
    }
}
