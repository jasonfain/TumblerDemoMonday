//
//  tabBarViewController.swift
//  TumblerDemo
//
//  Created by Jason Fain on 10/7/15.
//  Copyright © 2015 Jason Fain. All rights reserved.
//

import UIKit

class tabBarViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    
    // BUTTON 1 
    @IBAction func onHomeButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
            
        }
        
        if previousButton != nil {
            previousButton.selected = false
        }
        button.selected = true
        addChildViewController(homeViewController)
        contentView.addSubview(homeViewController.view)
        homeViewController.view.frame = contentView.bounds
        homeViewController.didMoveToParentViewController(self)
        previousButton = button
        currentViewController = homeViewController
        
    }
    
    
    
    // BUTTON 2
    @IBAction func onSearchButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
            
        }
        
        if previousButton != nil {
            previousButton.selected = false
        }
        button.selected = true
        addChildViewController(searchViewController)
        contentView.addSubview(searchViewController.view)
        searchViewController.view.frame = contentView.bounds
        searchViewController.didMoveToParentViewController(self)
        previousButton = button
        currentViewController = searchViewController
    }
    
    // BUTTON 3
    @IBAction func onComposeButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
            
        }
        
        if previousButton != nil {
            previousButton.selected = false
        }
        button.selected = true
        addChildViewController(composeViewController)
        contentView.addSubview(composeViewController.view)
        composeViewController.view.frame = contentView.bounds
        composeViewController.didMoveToParentViewController(self)
        previousButton = button
        currentViewController = composeViewController
        
    }
    
    
    // BUTTON 4
    @IBAction func onAccountButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
            
        }
        if previousButton != nil {
            previousButton.selected = false
            
        }
        
        button.selected = true
        addChildViewController(accountViewController)
        contentView.addSubview(accountViewController.view)
        accountViewController.view.frame = contentView.bounds
        accountViewController.didMoveToParentViewController(self)
        previousButton = button
        currentViewController = accountViewController
        
    }
    
    // BUTTON 5
    
    @IBAction func onTrendingButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
            
        }
        
        if previousButton != nil {
            previousButton.selected = false
        }
        button.selected = true
        addChildViewController(trendingViewController)
        contentView.addSubview(trendingViewController.view)
        trendingViewController.view.frame = contentView.bounds
        trendingViewController.didMoveToParentViewController(self)
        previousButton = button
        currentViewController = trendingViewController
        
        contentView.addSubview(trendingViewController.view)
        
    }
    
    
    var homeViewController : UIViewController!
    var searchViewController : UIViewController!
    var currentViewController : UIViewController!
    var composeViewController : UIViewController!
    var accountViewController : UIViewController!
    var trendingViewController : UIViewController!
    var previousButton: UIButton!
    
    
    
    
    // BUTTON END
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var storyboard = UIStoryboard (name: "Main", bundle: nil)
        
        homeViewController =  storyboard.instantiateViewControllerWithIdentifier("homeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchViewController")
        composeViewController =  storyboard.instantiateViewControllerWithIdentifier("composeViewController")
        accountViewController =  storyboard.instantiateViewControllerWithIdentifier("accountViewController")
        trendingViewController =  storyboard.instantiateViewControllerWithIdentifier("trendingViewController")
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
