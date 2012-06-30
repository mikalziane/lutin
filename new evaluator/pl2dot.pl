
pl2dot(File):- 
	tell(File),
	writeln('digraph {'),
	nodes2dot,
	edges2dot,
	writeln('}'),
	told.

nodes2dot:-
	forall(	node(Node, Kind, Path),
			writelnNode(Node, Kind, Path)).
			
writelnNode(Node, Kind, Path) :-
	write(Node),
	write(' [ label = '),
	path2name(Path,Name),
	write('"'),
	write(Name),
	write('"'),
	write(', shape = '),
	kind2shape(Kind, Shape),
	write(Shape),
	writeln(' ];').

path2name(Atom,Atom):- atomic(Atom).
path2name([T|Q],Name):- atomic_list_concat([T|Q],'.',Name).

kind2shape(class,rectangle).
kind2shape(method,diamond).
kind2shape(attribute,ellipse).
kind2shape(package,rectangle).
kind2shape(interface,rectangle).

edges2dot:-
	forall(  edge(_, Kind, Source, Target),
			 writelnEdge(Kind, Source, Target)).
			 
writelnEdge(Kind, Source, Target) :-
	write(Source),
	write(' -> '),
	write(Target),
	write(' [ style = '),
	kind2style(Kind, Style),
	write(Style),
	write(', color = '),
	violation2color(Source, Target, Color),
	write(Color),
	writeln(' ];').

violation2color(_,_,black).

kind2style(isa, dotted).
kind2style(contains, dashed).
kind2style(uses, bold).