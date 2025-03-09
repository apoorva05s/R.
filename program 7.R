# Step 1: Create the initial Data Frame
items <- data.frame(
  itemCode = c(1001, 1002, 1003, 1004, 1005),
  itemCategory = c("Electronics", "Desktop Supplies", "Office Supplies", "USB", "CD Drive"),
  itemPrice = c(700, 300, 350, 400, 800)
)

# Display the original Data Frame
print("Original Data Frame:")
print(items)

# a) Subset items with price >= 350
subset_price <- subset(items, itemPrice >= 350)
print("Items with price >= 350:")
print(subset_price)

# b) Subset items where category is "Office Supplies" or "Desktop Supplies"
subset_category <- subset(items, itemCategory %in% c("Office Supplies", "Desktop Supplies"))
print("Items in categories 'Office Supplies' or 'Desktop Supplies':")
print(subset_category)

# c) Create another Data Frame and merge the two
item_details <- data.frame(
  itemCode = c(1001, 1002, 1003, 1004, 1005),
  itemQtyonHand = c(50, 20, 40, 60, 10),
  itemReorderLvl = c(10, 5, 15, 10, 5)
)

# Merge the two Data Frames by "itemCode"
merged_data <- merge(items, item_details, by = "itemCode")

# Display the merged Data Frame
print("Merged Data Frame:")
print(merged_data)
