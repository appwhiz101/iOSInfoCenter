//
//  ExampleViewController.m
//  Example
//
//  Created by Charlie Fish on 5/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ExampleViewController.h"
#import "iOSInfoCenter.h"
@implementation ExampleViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    iOSInfoCenter *avc = [[iOSInfoCenter alloc] init];

    UIAlertView *av =[[UIAlertView alloc] initWithTitle:@"Settings" message:[NSString stringWithFormat:@"%@\n%@",[avc bundleid],[avc buildnumber]] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [av show];
    [av release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
