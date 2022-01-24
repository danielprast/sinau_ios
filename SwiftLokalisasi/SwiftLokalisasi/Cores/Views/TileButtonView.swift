//
//  TileButtonView.swift
//  SwiftLokalisasi
//
//  Created by Daniel Prastiwa on 24/01/22.
//

import UIKit

class TileButtonView: UIView {
    
    let containerView: UIView = {
        let containerView = UIView(frame: .zero)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .grey20
        containerView.clipsToBounds = true
        containerView.layer.cornerRadius = 10
        return containerView
    }()
    
    let tileLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Title"
        lbl.font = .systemFont(ofSize: 14, weight: .medium)
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    var onTap: (() -> Void)?
    
    func setTitle(_ title: String) {
        tileLabel.text = title
    }
    
    func performFlashAnimation() {
        UIView.animate(
            withDuration: 0.15,
            delay: 0.0,
            options: [.curveEaseInOut, .autoreverse],
            animations: { [weak self] in
                self?.containerView.backgroundColor = .grey40
            },
            completion: { [weak self] isComplete in
                if isComplete {
                    self?.containerView.backgroundColor = .grey20
                }
            }
        )
    }
    
    var tapAnimation: Bool = false
    
    @objc fileprivate func didTapTileView() {
        onTap?()
        if tapAnimation {
            performFlashAnimation()
        }
    }
    
    fileprivate func setupView() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapTileView))
        containerView.addGestureRecognizer(tapGesture)
        
        setupLeadingView()
        setupTitleView()
        setupTrailingView()
        
        addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
    
    func setupLeadingView() {
        
    }
    
    func setupTrailingView() {
        
    }
    
    func setupTitleView() {
        containerView.addSubview(tileLabel)
        NSLayoutConstraint.activate([
            tileLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            tileLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            tileLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
