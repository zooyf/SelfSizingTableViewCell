# SelfSizingTableViewCell

#### SelfSizingTableViewCell Learning from Apple Demo   

### 适用&使用
* 适用于所有方式创建的cell(UITableViewCell直接创建、IB、Masonry)。
* 适用于iOS 8.0+
* 使用
```
    self.tableView.estimatedRowHeight = 100;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
```

### 注意：
* cell.contentView.subviews 约束必须设置满（达到可以确定tableView.rowHeight的地步即可）
