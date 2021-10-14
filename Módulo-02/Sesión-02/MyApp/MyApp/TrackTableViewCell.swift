//
//  TrackTableViewCell.swift
//  MyApp
//
//  Created by Jan Zelaznog on 13/10/21.
//

import UIKit

class TrackTableViewCell: UITableViewCell {
    var track:Track?
    var parent:ButtonOnCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
