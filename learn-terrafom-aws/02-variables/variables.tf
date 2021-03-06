##String Data-type declaration
variable "sample" {
    default = "Hello Sample"
}

output "OUT_SAMPLE" {
    value = var.sample
}

//Combined output sample output print

output "OUT_COMBINED_SAMPLE" {
    value = "${var.sample}, Welcome."
}

##Integer Data-type declaration , we can use Float data-type also
variable "integer_sample" {
   default = 1001.101
}

output "OUT_INTEGER" {
    value = var.integer_sample
}

##Boolean Data-type : true or false

variable "bool_sample" {
    type = bool
    default = true
}

output "OUT_BOOL" {
    value = var.bool_sample
}

## Map variable type

variable "sample_map" {
    type = map(string)
    description = "Map variable sample"
    default = {
        string1 = "Shan",
        number = 7890,
        boolean = true
    }
}

output "OUT_SAMPLE_MAP" {
    value = var.sample_map["string1"]
    #value1 = var.sample_map["number"]
    #value2 = var.sample_map["boolean"]
}

##List variable type

variable "sample_list" {
    default = [ "Hello", 2000, false, "World" ]
}

output "OUT_SAMPLE_LIST" {
    value = var.sample_list[0]
    #value1 = var.sample_list[1]
    #value2 = var.sample_list[3]
}

output "COMBINED_LIST_MAP" {
    value = "${var.sample_list[0]} ${var.sample_list[3]}. My Name is ${var.sample_map["string1"]} and favourite number is ${var.sample_map["number"]}"
}

variable "new_file_variable" {}

output "new_file_variable" {
    value = var.new_file_variable
}