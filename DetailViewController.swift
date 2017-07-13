//
//  DetailViewController.swift
//  Project1
//
//  Created by Hoang Nguyen on 7/12/17.
//  Copyright © 2017 Hoang Nguyen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    var pics = ViewController()
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail")as? DetailViewController {
        
        vc.selectedImage = pics.pictures[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        
        if let imageToLoad = selectedImage
        {
            imageView.image = UIImage(named: imageToLoad)
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    



}
