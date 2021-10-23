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