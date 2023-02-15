//
//  R.swift
//  WorkoutApp
//
//  Created by Ivan Pastukhov on 06.02.2023.
//

import UIKit

enum R {
    
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        
        static let background = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "#F0F3FF")
        
        static let titleGray = UIColor(hexString: "#545C77")
  
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview:
                    return "Overview"
                case .session:
                    return "Session"
                case .progress:
                    return "Progress"
                case .settings:
                    return "Settings"
                }
            }
        }
        
        enum NavBar {
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
        
        enum Overview {
            static let allWorkouts = "All Workouts"
        }
        
        enum Session {
            static let navBarStart = "Start   "
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Time"
            static let remainingTime = "Remaining Time"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
        }
    }
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(systemName: "house")
                case .session: return UIImage(systemName: "alarm")
                case .progress: return UIImage(systemName: "chart.bar")
                case .settings: return UIImage(systemName: "gearshape")
                }
            }
        }
        enum Common {
            static let downArrow = UIImage(systemName: "chevron.down")
            static let add: UIImage = {
                let config = UIImage.SymbolConfiguration(pointSize: 70, weight: .light, scale: .medium )
                let image = UIImage(systemName: "plus.circle.fill", withConfiguration: config)
                return image!
            }()
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
