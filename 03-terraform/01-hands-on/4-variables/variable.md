# What is the use of variables?
 - variables can be kept in a separate file.
 - variable files are used to keep your secrets [AWS credentials]
 - Through this you can avoid updating AWS credentials in Git repo.
 - Variables are also widely used to store the elements which keep changing
 - Using variables makes the script reusable.

# Commonly used variable types in Terraform
- String
- Number
- List
- Map
- Set
  * Set is also more similar to list.
  * It helps to keep the list in order.
  * Also remove duplicates in list 
  * Example :  A list that has [5, 1, 1, 2] becomes [1, 2, 5] in set.

# Variable types

## String
variable "my-first-string" {
    default = "hello terraform" 
    }

## Integer
variable "myinteger" {
    default = 100
}

## Lists with Integers
variable "mylist" { 
    default = [1,2,3] 
}

## Lists with Strings
variable "mylist_1" { 
    default = ["hello", "world"]
}

## Map = dict
variable "mymap" {
    default = {
        company_name = "Amazon"
        profile = "Devops Engineer"
        Experience = 15
    }
}
