//
//  VendingItemBtn.h
//  VendingMachine
//
//  Created by 박종찬 on 2017. 2. 5..
//  Copyright © 2017년 Jongchan Park. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ButtonWithPrice;

@interface VendingItemBtn : UIView

@property (readwrite) ButtonWithPrice   *itemImage;
@property (readwrite) UILabel           *itemTitle;

@end
