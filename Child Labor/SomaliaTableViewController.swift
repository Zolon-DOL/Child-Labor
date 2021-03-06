//
//  SomaliaTableViewController.swift
//  Child Labor
//
//  Created by Sanganal, Akshay on 8/28/17.
//  Copyright © 2017 U.S. Department of Labor. All rights reserved.
//

import UIKit

class SomaliaTableViewController: UITableViewController {
    
    var countryName = "Brazil"

    @IBOutlet weak var workingf: UILabel!
    @IBOutlet weak var workingp: UILabel!
    @IBOutlet weak var workings: UILabel!
    
    @IBOutlet weak var agrif: UILabel!
    @IBOutlet weak var agrip: UILabel!
    @IBOutlet weak var agris: UILabel!
    
    @IBOutlet weak var indf: UILabel!
    @IBOutlet weak var indp: UILabel!
    @IBOutlet weak var inds: UILabel!
    
    @IBOutlet weak var serf: UILabel!
    @IBOutlet weak var serp: UILabel!
    @IBOutlet weak var sers: UILabel!
    
    
    @IBOutlet weak var attf: UILabel!
    @IBOutlet weak var attp: UILabel!
    @IBOutlet weak var atts: UILabel!
    
    
    @IBOutlet weak var comf: UILabel!
    @IBOutlet weak var comp: UILabel!
    @IBOutlet weak var coms: UILabel!
    
    
    @IBOutlet weak var primf: UILabel!
    @IBOutlet weak var primp: UILabel!
    @IBOutlet weak var prims: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIScreenName, value: "Somalia Statistics Screen")
        tracker?.send(GAIDictionaryBuilder.createAppView().build() as! [AnyHashable: Any])
        
        
        let urlPath = Bundle.main.path(forResource: "countries_2016", ofType: "xml")
        var contents: NSString?
        do {
            contents = try NSString(contentsOfFile: urlPath!, encoding: String.Encoding.utf8.rawValue)
        } catch _ {
            contents = nil
        }
        let countriesXML = SWXMLHash.parse(contents! as String)
        
        for country in countriesXML["Countries"]["Country"].all {
            if country["Name"].element?.text == "Somalia"{

        
        workingf.text = "9.5% (N/A; ages 5-14)"
        workingf.textColor = UIColor.black;
                
        
        workingp.text = "13.2% (N/A; ages 10-14)"
        workingp.textColor = UIColor.black;
        
        workings.text = "13.2 % (Unknown; ages 5-14)"
        workings.textColor = UIColor.black;
        
        
        agrif.text = "N/A"
        agrif.textColor = UIColor.black;
        
        agrip.text = "N/A"
        agrip.textColor = UIColor.black;
        
        agris.text = "N/A"
        agris.textColor = UIColor.black;
        
        indf.text = "N/A"
        indf.textColor = UIColor.black;
        
        indp.text = "N/A"
        indp.textColor = UIColor.black;
        
        inds.text = "N/A"
        inds.textColor = UIColor.black;
        
        serf.text = "N/A"
        serf.textColor = UIColor.black;
        
        serp.text = "N/A"
        serp.textColor = UIColor.black;
        
        sers.text = "N/A"
        sers.textColor = UIColor.black;
        
        
        attf.text = "38.8% (Ages 5-14)"
        attf.textColor = UIColor.black;
        
        attp.text = "44.2% (Ages 5-14)"
        attp.textColor = UIColor.black;
        
        atts.text = "44.2% (Ages 5-14)"
        atts.textColor = UIColor.black;
        
        comf.text = "4.7% (Ages 7-14)"
        comf.textColor = UIColor.black;
        
        comp.text = "6.6% (Ages 7-14"
        comp.textColor = UIColor.black;
        
        coms.text = "N/A"
        coms.textColor = UIColor.black;
        
        primf.text = "Unavailable"
        primf.textColor = UIColor.black;
        
        primp.text = "Unavailable"
        primp.textColor = UIColor.black;
        
        prims.text = "Unavailable"
        prims.textColor = UIColor.black;
        if #available(iOS 13.0, *) {
            workingf.textColor = .label
            workingp.textColor = .label
            workings.textColor = .label
            agrif.textColor = .label
            agrip.textColor = .label
            agris.textColor = .label
            indf.textColor = .label
            indp.textColor = .label
            inds.textColor = .label
            serf.textColor = .label
            serp.textColor = .label
            sers.textColor = .label
            attf.textColor = .label
            attp.textColor = .label
            atts.textColor = .label
            comf.textColor = .label
            comp.textColor = .label
            coms.textColor = .label
            primf.textColor = .label
            primp.textColor = .label
            prims.textColor = .label
            
        } else {
            // Fallback on earlier versions
        }
            }
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7
    }


}
