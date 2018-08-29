let rec read_and_accumulate accum =
  let line = ln_channel.input_line ln_channel.stdin in
  match line with
  | None -> accum
  | Some x -> read_and_accumulate(accum +. Float.of_string x)

let ()=
  printf "Total: %F\n" (read_and_accumulate 0.)
