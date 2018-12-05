//
//  SwitchTableViewCell.swift
//  Alarm
//
//  Created by luke parker on 12/3/18.
//  Copyright © 2018 luke parker. All rights reserved.
//

import UIKit


protocol SwitchTableViewCellDelegate: class {
    
    func switchCellSwitchValueChanged(cell: SwitchTableViewCell)
    
    }


class SwitchTableViewCell: UITableViewCell {
    
    

    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var alarmSwitch: UISwitch!
    weak var delegate: SwitchTableViewCellDelegate?
    
    var alarm: Alarm?{
        didSet{
            updateViews()
        }
    }
        
    
    
    
    func updateViews() {
        if let alarm = alarm {
            timeLabel.text = alarm.fireTimeAsString
            nameLabel.text = alarm.name
            alarmSwitch.isOn = alarm.enabled
        }
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        
        delegate?.switchCellSwitchValueChanged(cell: self)
    }
    

}


