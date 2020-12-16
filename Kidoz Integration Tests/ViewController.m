//
//
//  ViewController.m
//  Kidoz Integration Tests
//
//  Created by Samuel The Magnificent on 12/14/20.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//  

#import "ViewController.h"

@interface ViewController ()
-(void)onInitSuccess;
-(void)onInitError:(NSString *)error;

-(void)interstitialDidInitialize;
-(void)interstitialLoadFailed;
-(void)interstitialIsReady;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//MARK: Init Base SDK
- (IBAction)initBase:(id)sender {
    NSLog(@"Trying to init the base SDK...");
#warning Trying to initialize KidozSDK without a real publisher id and security token won't work.
    [[KidozSDK instance]initializeWithPublisherID:@"<publisher id>" securityToken:@"<security token>" withDelegate:self];
}
-(void)onInitSuccess {
    NSLog(@"Was able to initialize the base SDK");
}
-(void)onInitError:(NSString *)error {
    NSLog(@"Failed to initialize the base SDK with error: %@", error.description);
}

//MARK: Init Interstitial
- (IBAction)initInterstitial:(id)sender {
    NSLog(@"Trying to init the interstitial ads");
    [[KidozSDK instance] initializeInterstitialWithDelegate:self];
}
-(void)interstitialDidInitialize {
    NSLog(@"Was able to initialize interstitial ads");
}

//MARK: Load Interstitial
- (IBAction)loadInterstitial:(id)sender {
    NSLog(@"Trying to load the interstitial ads");
    [[KidozSDK instance] loadInterstitial];
}
-(void)interstitialLoadFailed {
    NSLog(@"Failed to load interstitial ads");
}
-(void)interstitialIsReady {
    NSLog(@"Interstitial ads are loaded and ready!");
}

- (void)interstitialDidClose {
    
}


- (void)interstitialDidOpen {
    
}


- (void)interstitialDidPause {
    
}


- (void)interstitialDidReciveError:(NSString *)errorMessage {
    NSLog(@"Got error from interstitial: %@", errorMessage);
}


- (void)interstitialDidResume {
    
}


- (void)interstitialLeftApplication {
    
}


- (void)interstitialReturnedWithNoOffers {
    NSLog(@"No offers were offered");
}

@end
