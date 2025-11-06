
resource "aws_subnet" "example" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = var.availability_zone

  # --- Aplicación de Tags Iterativos ---
  tags = var.tags
}