//
//  QRViewController.m
//  QRmaker
//
//  Created by Victor Martinez on 13/11/13.
//  Copyright (c) 2013 Victor Martinez. All rights reserved.
//

#import "QRViewController.h"

@interface QRViewController ()


@end



@implementation QRViewController

@synthesize webView;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)generateQRCode:(UIButton *)sender {
    
    // Hacemos la llamada al api de Google para crear el QRCode
    
  NSString *url=[NSString stringWithFormat:@"http://chart.apis.google.com/chart?cht=qr&chs=200x200&chl= %@",self.textoADesplegar.text];
    
    url=[url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    //Create a URL object.
    NSURL *Curl=[NSURL URLWithString:url];
    //URL Request Object
    NSURLRequest *request = [NSURLRequest requestWithURL:Curl];
    //Load the request in the UIWebView.
    [webView loadRequest:request];
    
    
}

- (IBAction)dismissKeyboard:(UIButton *)sender {
    
    [self.view endEditing:YES];
}


//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
//{
//    return YES;
//}
//
//// Escondemos el teclado?
//
//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    [textField resignFirstResponder];
//    return YES;
//}
@end
