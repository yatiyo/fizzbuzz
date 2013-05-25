-module(fizzbuzz).
-export([main/2]).

main (N, Max) when Max - N > 0 -> sub(N), main(N + 1, Max);
main (N, _) when true -> sub(N).

sub (N) ->
  if
    N rem 15 == 0 -> io:format("fizzbuzz~n");
    N rem 3 == 0  -> io:format("fizz~n");
    N rem 5 == 0  -> io:format("buzz~n");
    true          -> io:format("~p~n", [N])
  end.