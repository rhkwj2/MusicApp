//
//  MusicTableViewCell.swift
//  MusicApp
//
//  Created by Kim Yeon Jeong on 2019/12/18.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit
class MusicTableViewCell: UITableViewCell {
    var imageViewBackground : UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = false
        return view
    }()
    
    var mainImageView : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "album")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    
    var mainLabel : UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Wake me up"
        label.textColor = UIColor.black
        return label
    }()
    
    var textView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textColor = UIColor.lightGray
        textView.font = UIFont.systemFont(ofSize: 12)
        textView.text = "so wake me up when it's all over"
        textView.isEditable = false
        textView.isUserInteractionEnabled = false
        return textView
    }()
    
    var moreBtn : UIButton = {
        var button = UIButton()
        button.setImage(#imageLiteral(resourceName: "more"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentMode = .scaleAspectFit
        
        return button
    }()
    
    var spacingConstant : CGFloat = 10
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.imageViewBackground.addSubview(mainImageView)
        self.addSubview(imageViewBackground)
        self.addSubview(mainLabel)
        self.addSubview(textView)
        self.addSubview(moreBtn)
    }
    override func layoutSubviews() {
        
        mainImageView.layer.cornerRadius = 5
        
        mainImageView.leftAnchor.constraint(equalTo: imageViewBackground.leftAnchor).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: imageViewBackground.rightAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: imageViewBackground.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: imageViewBackground.bottomAnchor).isActive = true
        
        
        imageViewBackground.leftAnchor.constraint(equalTo: self.contentView.safeAreaLayoutGuide.leftAnchor, constant: CGFloat(spacingConstant)).isActive = true
        imageViewBackground.topAnchor.constraint(equalTo: self.contentView.safeAreaLayoutGuide.topAnchor).isActive = true
        imageViewBackground.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        imageViewBackground.widthAnchor.constraint(equalTo: self.imageViewBackground.heightAnchor).isActive = true
       // imageViewBackground.backgroundColor = .red
        
        mainLabel.leftAnchor.constraint(equalTo: imageViewBackground.rightAnchor,constant: CGFloat(spacingConstant)).isActive = true
        mainLabel.topAnchor.constraint(equalTo: imageViewBackground.topAnchor).isActive = true
        mainLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
        textView.leftAnchor.constraint(equalTo: imageViewBackground.rightAnchor, constant: CGFloat(spacingConstant)).isActive = true
        textView.bottomAnchor.constraint(equalTo: imageViewBackground.bottomAnchor).isActive = true
        textView.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 5).isActive = true
        textView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: CGFloat(-spacingConstant)).isActive = true
        
        moreBtn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: CGFloat(-spacingConstant)).isActive = true
//        moreBtn.topAnchor.constraint(equalTo: self.contentView.safeAreaLayoutGuide.topAnchor).isActive = true
        moreBtn.centerYAnchor.constraint(equalTo: mainLabel.centerYAnchor).isActive = true
     }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
