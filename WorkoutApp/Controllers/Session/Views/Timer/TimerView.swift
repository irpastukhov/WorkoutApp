//
//  TimerView.swift
//  WorkoutApp
//
//  Created by Ivan Pastukhov on 14.02.2023.
//

import UIKit

final class TimerView: WABaseInfoView {
    
    private let progressView: ProgressView = {
        let view = ProgressView()
        view.drawProgress(with: 0.1)
        return view
    }()
    
}

extension TimerView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(progressView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
    
}
