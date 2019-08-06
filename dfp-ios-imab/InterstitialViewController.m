//
//  InterstitialViewController.m
//  dfp-ios-imab
//
//  Created by Jason C on 8/6/19.
//  Copyright © 2019 Jason C. All rights reserved.
//

#import "InterstitialViewController.h"

@interface InterstitialViewController ()

@end

@implementation InterstitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    
}


- (IBAction)preloadInterstitial:(id)sender {
    
    self.interstitial = [[DFPInterstitial alloc]
                         initWithAdUnitID:@"/6499/example/interstitial"];
    
    DFPRequest *request = [DFPRequest request];
    
        self.interstitial.delegate = self;
    
    [self.interstitial loadRequest:request];


    
}
    
    
- (IBAction)showInterstitial:(id)sender {
    
    if (self.interstitial !=  nil && self.interstitial.isReady) {
        [self.interstitial presentFromRootViewController:self];
    } else {
        NSLog(@"Ad wasn't ready");
    }
    
}
    
    
    
#pragma mark - GADInterstitialDelegate
    
    /// Tells the delegate an ad request succeeded.
- (void)interstitialDidReceiveAd:(DFPInterstitial *)ad {
    NSLog(@"interstitialDidReceiveAd");
}
    
    /// Tells the delegate an ad request failed.
- (void)interstitial:(DFPInterstitial *)ad
didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"interstitial:didFailToReceiveAdWithError: %@", [error localizedDescription]);
}
    
    /// Tells the delegate that an interstitial will be presented.
- (void)interstitialWillPresentScreen:(DFPInterstitial *)ad {
    NSLog(@"interstitialWillPresentScreen");
}
    
    /// Tells the delegate the interstitial is to be animated off the screen.
- (void)interstitialWillDismissScreen:(DFPInterstitial *)ad {
    NSLog(@"interstitialWillDismissScreen");
}
    
    /// Tells the delegate the interstitial had been animated off the screen.
- (void)interstitialDidDismissScreen:(DFPInterstitial *)ad {
    NSLog(@"interstitialDidDismissScreen");
}
    
    /// Tells the delegate that a user click will open another app
    /// (such as the App Store), backgrounding the current app.
- (void)interstitialWillLeaveApplication:(DFPInterstitial *)ad {
    NSLog(@"interstitialWillLeaveApplication");
}
    
@end
