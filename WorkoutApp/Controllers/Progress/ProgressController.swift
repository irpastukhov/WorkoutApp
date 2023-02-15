//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Ivan Pastukhov on 07.02.2023.
//

import UIKit

class ProgressController: WABaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Progress.navBarRight)
    }

}
