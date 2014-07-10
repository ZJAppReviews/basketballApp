//
//  addTeamViewController.h
//  Story
//
//  Created by Roman Serga on 7/8/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import "ViewController.h"
#import "MainModel.h"

@class addTeamViewController;

@protocol AddTeamViewControllerDelegate <NSObject>

-(void)addTeamViewControllerDidCancel:(addTeamViewController*)controller;
-(void)addTeamViewControllerDidSave:(addTeamViewController *)controller;

@end

@interface addTeamViewController : ViewController <UITextFieldDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic, weak) id <AddTeamViewControllerDelegate> delegate;

@property (nonatomic, weak) IBOutlet UITextField *teamName;
@property (nonatomic, weak) IBOutlet UITextField *teamRating;
@property (nonatomic, weak) IBOutlet UIButton *teamLogo;

@property (nonatomic, weak) MainModel *model;

-(IBAction)cancel:(id)sender;
-(IBAction)save:(id)sender;
-(IBAction)pickAnImage:(id)sender;

-(void)liftUp;
-(void)goDown;

@end
