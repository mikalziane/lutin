node(interface,document).
node(method,[document,getName]).

node(class,imageDoc).
node(method,[imageDoc,imageDoc]).
node(method,[imageDoc,getName]).
node(attribute,[imageDoc,name]).

node(class,documentMgr).
node(method,[documentMgr,main]).
node(method,[documentMgr,addElement]).
node(method,[documentMgr,display]).
node(method,[documentMgr,documentMgr]).
node(attribute,[documentMgr,documents]).

edge(contains, 


