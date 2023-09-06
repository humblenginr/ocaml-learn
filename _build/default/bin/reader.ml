let rec read_and_acuumulate accum =
  let line = In_channel.input_line In_channel.stdin in
  match line with
  | None -> accum
  | Some v -> read_and_acuumulate (accum +. Float.of_string v)
