# SelfSizingTableViewCell

###SelfSizingTableViewCell Learning from Apple Demo   

###mark
适用于所有方式创建的cell(UITableViewCell直接创建、IB、Masonry)。

```
    self.tableView.estimatedRowHeight = 100;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
```

注意：
* cell.contentView.subviews 约束必须设置满（达到可以确定tableView.rowHeight的地步即可）
* 适用于iOS 8.0+
