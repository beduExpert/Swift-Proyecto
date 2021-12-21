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
    
    @IBOutlet weak var icono: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var artista: UILabel!
    @IBOutlet weak var botonPlay: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
