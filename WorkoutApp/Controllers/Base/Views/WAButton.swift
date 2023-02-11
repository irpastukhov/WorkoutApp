//
//  WAButton.swift
//  WorkoutApp
//
//  Created by Ivan Pastukhov on 07.02.2023.
//

import UIKit

final class WAButton: UIButton {
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = R.Colors.active
        label.textAlignment = .center
        label.font = R.Fonts.helveticaRegular(with: 15)
        return label
    }()
    
    private let iconView: UIImageView = {
        let view = UIImageView()
        view.image = R.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        view.tintColor = R.Colors.active
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String) {
        label.text = title
    }
    
}

private extension WAButton {
    
    func setupViews() {
        
        setupView(label)
        setupView(iconView)
    }
    
    func constraintViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configureAppearance() {
        
        backgroundColor = R.Colors.secondary
        layer.cornerRadius = 14
        makeSystem(self)
        
    }
    
}
