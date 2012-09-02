//
//  MapViewController.m
//  PhiladelphiaOfflineMap
//
//  Created by Jamie Ly on 01/09/2012.
//  Copyright (c) 2012 Jamie Ly. All rights reserved.
//

#import "MapViewController.h"
#import "RMMapView.h"
#import "RMMBTilesTileSource.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    mapView.contents.minZoom = 13.f;
    mapView.contents.maxZoom = 15.f;
    mapView.contents.zoom = 14.5;

    NSURL *tileSetURL = [[NSBundle mainBundle]
        URLForResource:@"Philadelphia"
        withExtension:@"mbtiles"];
    mapView.contents.tileSource = [[RMMBTilesTileSource alloc] initWithTileSetURL: tileSetURL];

    [mapView.contents moveToLatLong: CLLocationCoordinate2DMake(39.949721,-75.150261)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
