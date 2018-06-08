//
//  TodoItemTableViewCell.swift
//  RealTodo
//
//  Created by Daniel Hjärtström on 2018-06-07.
//  Copyright © 2018 Daniel Hjärtström. All rights reserved.
//

import UIKit

class TodoItemTableViewCell: UITableViewCell {

    private lazy var titleLabel: UILabel = {
        let temp = UILabel()
        temp.font = UIFont(name: "Helvetica", size: 20.0)
        temp.textColor = UIColor.black
        temp.numberOfLines = 1
        temp.lineBreakMode = .byTruncatingTail
        addSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15.0).isActive = true
        temp.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
        temp.topAnchor.constraint(equalTo: topAnchor).isActive = true
        temp.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        return temp
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCellWith(_ item: TodoItem) {
        titleLabel.text = item.title
        accessoryType = item.completed ? .checkmark : .none
    }

}
