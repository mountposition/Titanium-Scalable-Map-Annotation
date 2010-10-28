/**
 * Copyright 2010 MountPosition, Inc.
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "JpCoMountpositionMapMapView.h"
#import "TiMapImageAnnotationView.h"

#import "TiUtils.h"

@implementation JpCoMountpositionMapMapView


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
	MKAnnotationView *annoView = [super mapView:mapView viewForAnnotation:annotation];
  
  if (annoView != nil && [annoView isKindOfClass:[TiMapImageAnnotationView class]]) {
    TiMapAnnotationProxy *ann = (TiMapAnnotationProxy *) annotation;
    id scale = [ann valueForUndefinedKey:@"scale"];
    if (scale != nil) {
      CGFloat f = [TiUtils floatValue:scale];
      annoView.transform = CGAffineTransformMakeScale(f, f);
    }
  }
  return annoView;
}


// mapView:didAddAnnotationViews: is called after the annotation views have been added and positioned in the map.
// The delegate can implement this method to animate the adding of the annotations views.
// Use the current positions of the annotation views as the destinations of the animation.
- (void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray *)views {
    
}


@end
