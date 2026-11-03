
% Display all items using recursion.
display_items([]).
display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).

% Show the shopping menu.
menu :-
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE .'), nl.

% Start with five items.
start :-
    shopping([coffee, milk, chocolate, apple, juice]).

shopping(List) :-
    menu,
    read(Choice),
    action(Choice, List).

% Display items and show the menu again.
action(d, List) :-
    display_items(List),
    shopping(List).

% Add a new item and show the menu again.
action(a, List) :-
    write('enter the item you want to add :'), nl,
    read(Item),
    append(List, [Item], NewList),
    writeln('The item has been added.'),
    shopping(NewList).

% Exit the program.
action(e, _) :-
    writeln('Goodbye!').

% Show the menu again for an invalid choice.
action(_, List) :-
    writeln('Invalid choice.'),
    shopping(List).
