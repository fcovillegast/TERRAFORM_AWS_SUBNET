resource "aws_subnet" "example" {
  for_each = var.subnets

  vpc_id            = var.vpc_id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  # --- Aplicación de Tags Iterativos ---
  tags = {
    # 1. Tag requerido (ej. Name)
    Name = "${var.name_prefix}-${each.key}"

    # 2. Tag basado en la configuración del mapa (each.value.type)
    Type = each.value.type

    # 3. Tag estático aplicado a todas
    Environment = "Dev"

    # 4. Tag de ejemplo para forzar el auto-asignado de IP (Solo para subredes públicas)
    # Se usa una sentencia condicional:
    Visibility = each.value.type == "public" ? "External" : "Internal"
  }
}