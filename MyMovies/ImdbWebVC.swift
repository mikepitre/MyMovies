//
//  imdbWebVC.swift
//  MyMovies
//
//  Created by Mike Pitre on 11/4/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit
import WebKit

class ImdbWebVC: UIViewController {
    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        let urlStr = movie.imdb
        let url = NSURL(string: urlStr!)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)
    }

}
