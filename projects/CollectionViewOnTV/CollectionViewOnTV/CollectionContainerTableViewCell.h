//
//  CollectionContainerTableViewCell.h
//  CollectionViewOnTV
//
//  Created by 박종찬 on 2017. 3. 23..
//  Copyright © 2017년 Jongchan Park. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionContainerTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
