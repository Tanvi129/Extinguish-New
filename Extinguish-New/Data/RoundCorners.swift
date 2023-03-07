//
//  RoundCorners.swift
//  Extinguish-New
//
//  Created by Thrishalini on 07/03/23.
//

import Foundation

import UIKit

extension UIView {
    @discardableResult
    func corners( _radius:CGFloat ) -> UIView {
        self.layer.cornerRadius = _radius
        clipsToBounds = true
        self.layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    func shadow(radius:CFloat ,color: UIColor,offset: CGSize ,opacity : Float) -> UIView {
        self.layer.shadowRadius = CGFloat(radius)
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = opacity
        
        return self
    }
}

