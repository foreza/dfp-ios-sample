//
//  ViewController.h
//  dfp-ios-imab
//
//  Created by Jason C on 8/6/19.
//  Copyright © 2019 Jason C. All rights reserved.
//

#import <UIKit/UIKit.h>

@import GoogleMobileAds;


@interface ViewController : UIViewController <GADBannerViewDelegate>


    
@property(nonatomic, strong) DFPBannerView *bannerView;

    
- (void)encodeWithCoder:(nonnull NSCoder *)aCoder;
    
- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection;
    
- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container;
    
- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize;
    
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container;
    
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator;
    
- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator;
    
- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator;
    
- (void)setNeedsFocusUpdate;
    
- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context;
    
- (void)updateFocusIfNeeded;
    
    @end

