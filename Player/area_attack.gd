extends ShapeCast3D

func deal_damage(damage: float, crit_chance: float) -> void:
  for i in get_collision_count():
    var collider = get_collider(i)
    var is_critical = randf() <= crit_chance
    if collider is Player or collider is Enemy:
      collider.health_component.take_damage(damage, is_critical)
