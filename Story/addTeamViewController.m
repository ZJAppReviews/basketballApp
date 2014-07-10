//
//  addTeamViewController.m
//  Story
//
//  Created by Roman Serga on 7/8/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import "addTeamViewController.h"
#import "TeamsTableViewController.h"

@interface addTeamViewController ()
{
    BOOL isValid;
}
@end

@implementation addTeamViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(liftUp) name:@"UIKeyboardDidShowNotification" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(goDown) name:@"UIKeyboardWillHideNotification" object:nil];
    isValid = NO;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)cancel:(id)sender
{
    [self.delegate addTeamViewControllerDidCancel:self];
}

-(IBAction)save:(id)sender;
{
    TeamModel *newTeam = [[TeamModel alloc]init];
    [newTeam addObserver:self forKeyPath:@"rating" options:NSKeyValueObservingOptionNew context:NULL];
    [newTeam addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:NULL];
    newTeam.name = self.teamName.text;
    newTeam.rating = self.teamRating.text;
    newTeam.logo = [self.teamLogo imageForState:UIControlStateNormal];
    newTeam.players = [[NSMutableArray alloc]init];
    if (isValid)
    {
        [self.model.teams addObject:newTeam];
        [self.delegate addTeamViewControllerDidSave:self];

    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Wrong data format" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
        [alert show];
    }
}

-(IBAction)pickAnImage:(id)sender;
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.delegate = self;
    [self presentViewController:imagePicker animated:YES completion:nil];
}



-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSString *newValue =  [change objectForKey:NSKeyValueChangeNewKey];
    if ([keyPath isEqualToString:@"rating"])
    {
        if ([newValue rangeOfCharacterFromSet:[NSCharacterSet symbolCharacterSet]].location == NSNotFound && [newValue rangeOfCharacterFromSet:[NSCharacterSet letterCharacterSet]].location == NSNotFound && ![newValue isEqualToString:@""])
            isValid = YES;
    }
    if ([keyPath isEqualToString:@"name"])
    {
        if ([newValue isEqualToString:@""])
            isValid = NO;
    }
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self.teamLogo setImage:[info objectForKey:@"UIImagePickerControllerOriginalImage"] forState:UIControlStateNormal];
    [picker dismissViewControllerAnimated:YES completion:^{
    }];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:^{
    }];
}

-(void)liftUp
{
    self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y - 216, self.view.frame.size.width, self.view.frame.size.height);
}

-(void)goDown
{
    self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y + 216, self.view.frame.size.width, self.view.frame.size.height);
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
