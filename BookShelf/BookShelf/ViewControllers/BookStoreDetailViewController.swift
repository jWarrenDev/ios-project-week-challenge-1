//
//  BookStoreDetailViewController.swift
//  BookShelf
//
//  Created by Jerrick Warren on 10/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class BookStoreDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let bookRecord = bookRecord else { return }
        print(bookRecord.volumeInfo.title)
    
        
        imageLoader()
    }
    
    
    var bookRecord : Item? {
        didSet {
            if isViewLoaded {
                //UpdateViews
            }
        }
    }
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var reviewTextView: UITextView!
    
    @IBAction func saveBookButton(_ sender: Any){
        
    }
    
    var testPicture: ImageLinks?

    func imageLoader () {
        ImageLoader.fetchImage(from: URL(string: testPicture!.thumbnail))  { image in
            guard let image = image else { return }
            DispatchQueue.main.async {
                self.bookImage.image = image
            }
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}