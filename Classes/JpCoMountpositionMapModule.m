/**
 * Copyright 2010 MountPosition, Inc.
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "JpCoMountpositionMapModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation JpCoMountpositionMapModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"8c1d2f73-575a-43a8-b39f-e8e560cb38ae";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"jp.co.mountposition.map";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
}

#pragma Public APIs

@end
