//
//  MapViewController.m
//  location_fellows
//
//  Created by drwizzard on 2/2/15.
//  Copyright (c) 2015 nacnud. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>

@interface MapViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)firstLocation:(UIButton *)sender;
- (IBAction)secondLocation:(UIButton *)sender;
- (IBAction)thirdLocation:(UIButton *)sender;


@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)firstLocation:(UIButton *)sender {
    NSLog(@"booya");
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    CLLocationCoordinate2D location;
    location.latitude = 11.248576;
    location.longitude = -85.627757;
    span.latitudeDelta = 0.05;
    span.longitudeDelta = 0.05;
    region.center = location;
    region.span = span;
    
    
    [_mapView setRegion:region animated:YES];
}

- (IBAction)secondLocation:(UIButton *)sender {
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    CLLocationCoordinate2D location;
    location.latitude = 40.384070;
    location.longitude = -106.068750;
    span.latitudeDelta = 0.105;
    span.longitudeDelta = 0.105;
    region.center = location;
    region.span = span;
    
    
    [_mapView setRegion:region animated:YES];
    
}

- (IBAction)thirdLocation:(UIButton *)sender {
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    CLLocationCoordinate2D location;
    location.latitude = 12.494390;
    location.longitude = 122.533185;
    span.latitudeDelta = 2.05;
    span.longitudeDelta = 2.05;
    region.center = location;
    region.span = span;
    
    
    [_mapView setRegion:region animated:YES];
}
@end


//11.248576, -85.627757
//40.384070, -106.068750
//12.494390, 122.533185

// testing if my git name is working?