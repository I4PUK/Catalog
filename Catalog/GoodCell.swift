//
//  GoodCell.swift
//  Catalog
//
//  Created by sergey on 22.11.2019.
//  Copyright © 2019 sergey. All rights reserved.
//

import UIKit

class GoodCell: UITableViewCell {
    
    static let Identifier = "Cell"
    
    var product : Product?{
        didSet {
            productImage.image = product?.productImage
            productNameLabel.text = product?.productName
            productDescriptionLabel.text = product?.productDesc
            productPrice.setTitle(String(describing: product?.productPrice), for: .normal)
        }
    }
    
    func configureWithChocolate(product: Product) {
        productNameLabel.text = product.productName
        productDescriptionLabel.text = product.productDesc
        productImage.image = product.productImage
        productPrice.setTitle(String(describing: product.productPrice), for: .normal)
    }
    
    private let productImage : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "placeholder"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.frame = CGRect(x: imgView.frame.origin.x, y: imgView.frame.origin.y, width: 40,height: 40);
        return imgView
    }()
    
    private var productNameLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 28)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    private let productDescriptionLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private var productPrice: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        //button.layer.borderColor = UIColor.red.cgColor
        return button
    }()
    
    var productQuantity : UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .left
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        addSubview(productImage)
        addSubview(productNameLabel)
        addSubview(productDescriptionLabel)
        //addSubview(productQuantity)
        addSubview(productPrice)

        productImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: -100).isActive = true
        productImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        productImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        //productImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        productNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        productNameLabel.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: -80).isActive = true
        
        productDescriptionLabel.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor).isActive = true
        productDescriptionLabel.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: -80).isActive = true
        
        productPrice.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: -80).isActive = true
        productPrice.topAnchor.constraint(equalTo: productDescriptionLabel.bottomAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
