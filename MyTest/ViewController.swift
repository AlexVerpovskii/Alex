//
//  ViewController.swift
//  MyTest
//
//  Created by Александр Верповский on 06.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    private lazy var yesButton: CustomButton = {
        let yesButton = CustomButton()
        yesButton.setTitle("Да", for: .normal)
        yesButton.translatesAutoresizingMaskIntoConstraints = false
        yesButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        yesButton.addTarget(self, action: #selector(tapLogYesButton), for: .touchUpInside)
        return yesButton
    }()
    
    private lazy var noButton: CustomButton = {
        let noButton = CustomButton()
        noButton.setTitle("Нет", for: .normal)
        noButton.addTarget(self, action: #selector(tapLogNoButton), for: .touchUpInside)
        return noButton
    }()
    
    private lazy var stackViewButtons: UIStackView = {
        let stackButton = UIStackView()
        stackButton.axis = .horizontal
        stackButton.distribution = .fillEqually
        stackButton.spacing = 20
        stackButton.alignment = .fill
        return stackButton
    }()
    
    private lazy var stackViewLabel: UIStackView = {
        let stackViewLabel = UIStackView()
        stackViewLabel.axis = .horizontal
        stackViewLabel.contentMode = .scaleToFill
        return stackViewLabel
    }()
    
    private lazy var stackViewBase: UIStackView = {
        let stackViewBase = UIStackView()
        stackViewBase.axis = .vertical
        stackViewBase.distribution = .fill
        stackViewBase.spacing = 20
        stackViewBase.alignment = .fill
        return stackViewBase
    }()
    
    private lazy var questionNameLabel: UILabel = {
        let questionNameLabel = UILabel()
        questionNameLabel.text = "Вопрос:"
        questionNameLabel.textColor = .white
        questionNameLabel.font = questionNameLabel.font.withSize(20)
        questionNameLabel.textAlignment = .left
        questionNameLabel.setContentHuggingPriority(UILayoutPriority.defaultLow, for: .horizontal)
        return questionNameLabel
    }()
    
    private lazy var countLabel: UILabel = {
        let countLabel = UILabel()
        countLabel.text = "2/10"
        countLabel.textColor = .white
        countLabel.font = countLabel.font.withSize(20)
        countLabel.textAlignment = .right
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        countLabel.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .horizontal)
        return countLabel
    }()
    
    private lazy var questionLabel: UILabel = {
        let questionLabel = UILabel()
        questionLabel.text = "Рейтинг этого фильма меньше, чем 5?"
        questionLabel.textColor = .white
        questionLabel.font = questionLabel.font.withSize(23)
        questionLabel.textAlignment = .center
        questionLabel.numberOfLines = 2
        return questionLabel
    }()
    
    private lazy var previewImage: UIImageView = {
        let previewImage = UIImageView()
        previewImage.image = UIImage(named: "default") ?? UIImage()
        previewImage.translatesAutoresizingMaskIntoConstraints = false
        previewImage.heightAnchor.constraint(equalTo: previewImage.widthAnchor, multiplier: 3/2).isActive = true
        return previewImage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        self.view.addSubview(stackViewBase)
        stackViewBase.addArrangedSubview(stackViewLabel)
        stackViewBase.addArrangedSubview(previewImage)
        stackViewBase.addArrangedSubview(questionLabel)
        stackViewBase.addArrangedSubview(stackViewButtons)
        stackViewButtons.addArrangedSubview(yesButton)
        stackViewButtons.addArrangedSubview(noButton)
        stackViewLabel.addArrangedSubview(questionNameLabel)
        stackViewLabel.addArrangedSubview(countLabel)
        stackViewBase.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewBase.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackViewBase.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackViewBase.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            stackViewBase.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: -10)
        ])
    }
    
    @objc private func tapLogYesButton() {
        print("была нажата кнопка \"да\"")
    }
    
    @objc private func tapLogNoButton() {
        print("была нажата кнопка \"нет\"")
    }
}

