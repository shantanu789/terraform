##String Data-type declaration
variable "sample" {
    default = "Hello Sample"
}

output "OUT_SAMPLE" {
    value = var.sample
}

//Combined output sample output print

output "COMBINED_OUT_SAMPLE" {
    value = "${var.sample}, Welcome."
}

##Integer Data-type declaration , we can use Float data-type also
variable "interger_sample" {
   default = 1001.101
}

output "OUT_INTEGER" {
    value = var.interger_sample
}

##Boolean Data-type : true or false

variable "bool_sample" {
    type = bool
    default = true
}

output "OUT_BOOL" {
    value = var.bool_sample
}