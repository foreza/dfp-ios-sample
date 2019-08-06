//
//  ViewController.m
//  dfp-ios-imab
//
//  Created by Jason C on 8/6/19.
//  Copyright © 2019 Jason C. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    [self configureAndLoadDFPBanner];
    [self addBannerViewToView:self.bannerView];



    
    
}
    
- (void) configureAndLoadDFPBanner {
    
        self.bannerView = [[DFPBannerView alloc]
                           initWithAdSize:kGADAdSizeBanner];
        self.bannerView.adUnitID = @"/6499/example/banner";
        self.bannerView.rootViewController = self;
        
        self.bannerView.delegate = self;
        [self.bannerView loadRequest:[DFPRequest request]];
        
        
    }
    
    
    // Example from DFP documentation
    - (void)addBannerViewToView:(UIView *)bannerView {
        bannerView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:bannerView];
        [self.view addConstraints:@[
                                    [NSLayoutConstraint constraintWithItem:bannerView
                                                                 attribute:NSLayoutAttributeBottom
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.bottomLayoutGuide
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1
                                                                  constant:0],
                                    [NSLayoutConstraint constraintWithItem:bannerView
                                                                 attribute:NSLayoutAttributeCenterX
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeCenterX
                                                                multiplier:1
                                                                  constant:0]
                                    ]];
    }
    
    
    
    
    
    
#pragma mark - GADBannerViewDelegate
    
    /// Tells the delegate an ad request loaded an ad.
- (void)adViewDidReceiveAd:(DFPBannerView *)adView {
    NSLog(@"adViewDidReceiveAd");
}
    
    /// Tells the delegate an ad request failed.
- (void)adView:(DFPBannerView *)adView
didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"adView:didFailToReceiveAdWithError: %@", [error localizedDescription]);
}
    
    /// Tells the delegate that a full-screen view will be presented in response
    /// to the user clicking on an ad.
- (void)adViewWillPresentScreen:(DFPBannerView *)adView {
    NSLog(@"adViewWillPresentScreen");
}
    
    /// Tells the delegate that the full-screen view will be dismissed.
- (void)adViewWillDismissScreen:(DFPBannerView *)adView {
    NSLog(@"adViewWillDismissScreen");
}
    
    /// Tells the delegate that the full-screen view has been dismissed.
- (void)adViewDidDismissScreen:(DFPBannerView *)adView {
    NSLog(@"adViewDidDismissScreen");
}
    
    /// Tells the delegate that a user click will open another app (such as
    /// the App Store), backgrounding the current app.
- (void)adViewWillLeaveApplication:(DFPBannerView *)adView {
    NSLog(@"adViewWillLeaveApplication");
}
    
    


@end
