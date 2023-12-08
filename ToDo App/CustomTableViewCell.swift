//
//  CustomTableViewCell.swift
//  ToDo App
//
//  Created by Dmitriy Mkrtumyan on 02.08.23.
//

import UIKit

final class CustomTableViewCell: UITableViewCell {
    
    private let label = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUi()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUi()
    }
    
    func setupCell(with text: String) {
        label.text = text
        label.textColor = .black
    }
    
    private func configureUi() {
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .italicSystemFont(ofSize: 17)
        NSLayoutConstraint.activate([
            contentView.centerYAnchor.constraint(equalTo: label.centerYAnchor),
            contentView.leadingAnchor.constraint(equalTo: label.leadingAnchor, constant: -20),
            contentView.trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: 20),
            contentView.bottomAnchor.constraint(equalTo: label.bottomAnchor)
        ])
    }
}
