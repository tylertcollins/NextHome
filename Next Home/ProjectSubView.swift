//
//  ProjectSubView.swift
//  Next Home
//
//  Created by Tyler Collins on 1/22/18.
//  Copyright © 2018 Tyler Collins. All rights reserved.
//

import UIKit

@IBDesignable class ProjectSubView: UIView {
    
    var contentView : UIView?
    @IBInspectable var nibName : String?
    
    @IBInspectable var viewCornerRadius : CGFloat = 0
    
    @IBOutlet weak var projectNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var budgetLabel: UILabel!
    @IBOutlet weak var projectImage: UIImageView!
    @IBOutlet weak var favoriteButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        xibSetup()
        styleView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        xibSetup()
        contentView?.prepareForInterfaceBuilder()
        styleView()
    }
    
    func xibSetup() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        contentView = view
    }
    
    func loadViewFromNib() -> UIView? {
        guard let nibName = nibName else { return nil }
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(
            withOwner: self,
            options: nil).first as? UIView
    }
    
    func styleView() {
        layer.cornerRadius = viewCornerRadius
    }
    
    
    @IBAction func favoriteButtonPressed(_ sender: Any) {
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
