--module(tut17).

-export([start_ping/1, start_pong/0,  ping/2, pong/0]).

ping(Temp, Pong_Node) ->
    {pong, Pong_Node} ! {ping, Temp, self()},
    receive
         {pong, Temp} ->
            io:format("Received: ~w~n", [Temp])
    end.

pong() ->
    receive
        {ping, Temp, Ping_PID} ->
            io:format("Received request~n", []),
            Ping_PID ! {pong, (Temp - 32) * 5 / 9},
            pong()
    end.

start_pong() ->
    register(pong, spawn(tut17, pong, [])).

start_ping(Pong_Node) ->
    spawn(tut17, ping, [20, Pong_Node]).
