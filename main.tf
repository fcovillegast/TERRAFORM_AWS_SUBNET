
resource "aws_subnet" "example" {
  name              = "${var.name_prefix}-${var.cidr_block}"
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = var.availability_zone

  # --- Aplicación de Tags Iterativos ---
  tags = var.tags
}