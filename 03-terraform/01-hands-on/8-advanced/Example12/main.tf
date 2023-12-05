# Create new users :
resource "aws_iam_user" "db_users" {
    count = length(var.users)
    name  = element(var.users, count.index)
    #name =  var.users[count.index]
}

# Create new group :
resource "aws_iam_group" "db_group" {
    name = var.group
}

# Add users to group :
resource "aws_iam_user_group_membership" "lb_add" {
    count  = length(var.users)
    user   = element(var.users, count.index)
    groups = [aws_iam_group.db_group.name]
}
 