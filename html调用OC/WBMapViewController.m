//
//  WBMapViewController.m
//  firstconcern
//
//  Created by 周焕强 on 16/6/14.
//  Copyright © 2016年 nbnip. All rights reserved.
//

#import "WBMapViewController.h"
#import <MapKit/MapKit.h>

@interface WBMapViewController ()

@end

@implementation WBMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"地图";
    
    MKMapView *mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    mapView.mapType = MKMapTypeStandard;
    //显示范围，数值越大，范围就越大
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(29.87, 121.55);
    MKCoordinateSpan span = MKCoordinateSpanMake(2, 2);
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
   
    //地图初始化时显示的区域
    [mapView setRegion:region animated:YES];
    [self.view addSubview:mapView];
}



@end
