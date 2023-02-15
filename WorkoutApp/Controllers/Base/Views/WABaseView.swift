//
//  WABaseView.swift
//  WorkoutApp
//
//  Created by Ivan Pastukhov on 07.02.2023.
//

import UIKit

class WABaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        constraintViews()
        configureAppearance()
    }
}

@objc extension WABaseView {
    
    func setupViews() {}
    func constraintViews() {}
    
    func configureAppearance() {
        backgroundColor = .white
    }
}
