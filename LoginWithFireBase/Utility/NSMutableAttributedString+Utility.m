//
//  NSMutableAttributedString+Utility.m
//  VES
//
//  Created by 학철 on 2017. 10. 29..
//  Copyright © 2017년 학철. All rights reserved.
//

#import "NSMutableAttributedString+Utility.h"

@implementation NSMutableAttributedString (Utility)
- (void)setUnderlineWithColor:(UIColor *)color{
    [self addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, self.length)];
    [self addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(0, self.length)];
    [self addAttribute:NSUnderlineColorAttributeName value:color range:NSMakeRange(0, self.length)];
    
//    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
//    paragraphStyle.lineSpacing = 10;
//    [self addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, self.length)];
}
@end
