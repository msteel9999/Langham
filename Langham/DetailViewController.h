//
//  DetailViewController.h
//  Langham
//
//  Created by martin steel on 08/02/2014.
//  Copyright (c) 2014 martin steel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Helpers.h"

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIWebView *detailWebView;
@property (weak, nonatomic) IBOutlet UIWebView *iphoneDetailWebView;
- (IBAction)facebookTouchUpInside:(id)sender;
- (IBAction)twitterTouchUpInside:(id)sender;
- (IBAction)googlePlusTouchUpInside:(id)sender;
@end
