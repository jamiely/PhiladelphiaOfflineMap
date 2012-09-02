//
//  ViewController.h
//  PhiladelphiaOfflineMap
//
//  Created by Jamie Ly on 01/09/2012.
//  Copyright (c) 2012 Jamie Ly. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RMMapView;

@interface MapViewController : UIViewController {
    IBOutlet RMMapView *mapView;
}

@property (nonatomic, strong) IBOutlet RMMapView *mapView;

@end
