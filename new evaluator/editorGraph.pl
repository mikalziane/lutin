
node(n0, package, docMgr).
node(n1, class,imageDoc).
node(n2, method,[imageDoc,imageDoc]).
node(n3, method,[imageDoc,getName]).
node(n4, attribute,[imageDoc,name]).

node(n5, class,imageMgr).
node(n6, method,[imageMgr,main]).
node(n7, method,[imageMgr,addImage]).
node(n8, method,[imageMgr,display]).
node(n9, method,[imageMgr,imageMgr]).
node(n10, attribute,[imageMgr,images]).

edge(e1, contains, n1, n2).
edge(e2, contains, n1, n3).
edge(e3, contains, n1, n4).

edge(e4, contains, n5, n6).
edge(e5, contains, n5, n7).
edge(e6, contains, n5, n8).
edge(e7, contains, n5, n9).
edge(e8, contains, n5, n10).

edge(e10, uses, n6, n5).
edge(e11, uses, n6, n9).
edge(e12, uses, n6, n8).

edge(e13, uses, n8, n1).
edge(e14, uses, n8, n3).

edge(e20, uses, n9, n1).

edge(e15, uses, n10, n1).

edge(e16, uses, n7, n10).
edge(e17, uses, n7, n1).

edge(e18, uses, n3, n4).

edge(e19, uses, n2, n4).


:-consult('pl2dot.pl').

