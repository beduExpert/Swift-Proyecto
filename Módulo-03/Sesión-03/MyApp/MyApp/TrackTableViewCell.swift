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
    
    var icono: UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFit
        imgView.image = UIImage(named: "nota")
        imgView.backgroundColor = .white
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    var titulo: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.text = "título de la canción"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    var artista: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .lightGray
        lbl.text = "artista"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    var botonPlay: PlayButton = {
        let btn = PlayButton()
        btn.icon = UIImage(named: "play")
        btn.secondIcon = UIImage(named: "pause")
        btn.performTwoStateSelection()
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 25
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(icono)
        NSLayoutConstraint.activate([
            icono.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            icono.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            icono.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            icono.widthAnchor.constraint(equalTo: icono.heightAnchor)
        ])
        addSubview(botonPlay)
        NSLayoutConstraint.activate([
            botonPlay.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            botonPlay.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            botonPlay.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            botonPlay.widthAnchor.constraint(equalTo: botonPlay.heightAnchor)
        ])
        addSubview(titulo)
        NSLayoutConstraint.activate([
            titulo.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            titulo.heightAnchor.constraint(equalToConstant: 35),
            titulo.leadingAnchor.constraint(equalTo: icono.trailingAnchor, constant: 5),
            titulo.trailingAnchor.constraint(equalTo: botonPlay.leadingAnchor, constant: -5)
        ])
        addSubview(artista)
        NSLayoutConstraint.activate([
            artista.heightAnchor.constraint(equalToConstant: 35),
            artista.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            artista.leadingAnchor.constraint(equalTo: icono.trailingAnchor, constant: 5),
            artista.trailingAnchor.constraint(equalTo: botonPlay.leadingAnchor, constant: -5)
        ])
        contentView.isUserInteractionEnabled = false
        botonPlay.addTarget(self, action: #selector(self.botonPlayTouch(_ :)), for:.touchUpInside)
    }
    
    @objc func botonPlayTouch(_ sender:UIButton!) {
        botonPlay.performTwoStateSelection()
        if parent != nil {
            parent?.buttonTouchedOnCell(aCell: self)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
