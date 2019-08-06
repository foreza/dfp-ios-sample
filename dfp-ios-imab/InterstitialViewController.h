//
//  InterstitialViewController.h
//  dfp-ios-imab
//
//  Created by Jason C on 8/6/19.
//  Copyright © 2019 Jason C. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMobileAds;


NS_ASSUME_NONNULL_BEGIN

@interface InterstitialViewController : UIViewController <GADInterstitialDelegate>

    @property(nonatomic, strong) DFPInterstitial *interstitial;

    
@end

NS_ASSUME_NONNULL_END
