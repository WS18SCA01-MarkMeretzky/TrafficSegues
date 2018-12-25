//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Mark Meretzky on 12/25/18.
//  Copyright © 2018 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        print("unwindToRed(unwindSegue:)");
        if let identifier: String = unwindSegue.identifier {
            print("unwindSegue.identifier = \(identifier)");
        }
        if let title: String = unwindSegue.source.title {
            print("unwindSegue.source.title = \(title)");
        }
        if let title: String = unwindSegue.source.navigationItem.title {
            print("unwindSegue.source.navigationItem.title = \(title)");
        }
        if let title: String = unwindSegue.destination.title {
            print("unwindSegue.destination.title = \(title)");
        }
        if let title: String = unwindSegue.destination.navigationItem.title {
            print("unwindSegue.destination.navigationItem.title = \(title)");
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare(for:sender)");
        if let identifier: String = segue.identifier {
            print("segue.identifier = \(identifier)");
        }
        if let title: String = segue.source.title {
            print("segue.source.title = \(title)");
        }
        if let title: String = segue.source.navigationItem.title {
            print("segue.source.navigationItem.title = \(title)")
        }
        if let title: String = segue.destination.title {
            print("segue.destination.title = \(title)");
        }
        if let title: String = segue.destination.navigationItem.title {
            print("segue.destination.navigationItem.title = \(title)");
        }
        
        if let b: UIButton = sender as? UIButton {
            if let label: UILabel = b.titleLabel {
                if let text: String = label.text {
                    print("sender = \(text)");
                }
            }
        }
        
        segue.destination.navigationItem.title = textField.text;
    }


}

