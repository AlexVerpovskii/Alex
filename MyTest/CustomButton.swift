//
//  CustomButton.swift
//  MyTest
//
//  Created by Александр Верповский on 07.02.2024.
//

import UIKit

final class CustomButton: UIButton {
    // MARK: - Type alias
       
       override init(frame: CGRect){
           super.init(frame: frame)
           self.layer.cornerRadius = 15
           self.backgroundColor = .white
           self.setTitleColor(.black, for: .normal)
           self.setTitleColor(.clear, for: .highlighted)
       }

       required init?(coder: NSCoder) {
           super.init(coder: coder)
       }
}
