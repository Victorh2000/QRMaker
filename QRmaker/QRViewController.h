//
//  QRViewController.h
//  QRmaker
//
//  Created by Victor Martinez on 13/11/13.
//  Copyright (c) 2013 Victor Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QRViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextView *textoADesplegar;

- (IBAction)generateQRCode:(UIButton *)sender;

- (IBAction)dismissKeyboard:(UIButton *)sender;


@end
