prepare:-
asserta(nrDeGeracoes(8)),
asserta(populacao(8)),
asserta(prob_cruzamento(0.5)),
asserta(prob_mutacao(0.25)),
asserta(nrDeTarefas(5)),
asserta(taxa_elitismo(0.5)),
asserta(custoIdeal(64)),
asserta(maxEstagnacoes(4)),

asserta(tarefa(t1,"M_1","P_3","M101","P303")),
asserta(tarefa(t2,"N_1","O_3","N101","O303")),
asserta(tarefa(t3,"N_2","O_3","N201","O303")),
asserta(tarefa(t4,"P_3","M_3","P301","M303")),
asserta(tarefa(t5,"K_1","H_1",_,_)),
asserta(tarefa(t6,"K_2","H_1",_,_)),
asserta(tarefa(t7,"K_3","H_1",_,_)),
asserta(tarefa(t8,"K_4","H_1",_,_)),
asserta(tarefa(t9,"K_5","H_1",_,_)),
asserta(tarefa(t10,"K_6","H_1",_,_)),
asserta(tarefa(t11,"K_7","H_1",_,_)),
asserta(tarefa(t12,"K_8","H_1",_,_)),
%asserta(tarefa(t13,"K_9","H_1",_,_)),
%asserta(tarefa(t14,"K_10","H_1",_,_)),
%asserta(tarefa(t15,"K_11","H_1",_,_)),

asserta(diferencaEntreTarefas(t1,t2,2)),
asserta(diferencaEntreTarefas(t1,t3,3)),
asserta(diferencaEntreTarefas(t1,t4,4)),
asserta(diferencaEntreTarefas(t1,t5,5)),
asserta(diferencaEntreTarefas(t1,t6,6)),
asserta(diferencaEntreTarefas(t1,t7,7)),
asserta(diferencaEntreTarefas(t1,t8,8)),
asserta(diferencaEntreTarefas(t1,t9,9)),
asserta(diferencaEntreTarefas(t1,t10,10)),
asserta(diferencaEntreTarefas(t1,t11,11)),
asserta(diferencaEntreTarefas(t1,t12,12)),
%asserta(diferencaEntreTarefas(t1,t13,13)),
%asserta(diferencaEntreTarefas(t1,t14,14)),
%asserta(diferencaEntreTarefas(t1,t15,15)),

asserta(diferencaEntreTarefas(t2,t3,2)),
asserta(diferencaEntreTarefas(t2,t4,3)),
asserta(diferencaEntreTarefas(t2,t5,4)),
asserta(diferencaEntreTarefas(t2,t6,5)),
asserta(diferencaEntreTarefas(t2,t7,6)),
asserta(diferencaEntreTarefas(t2,t8,7)),
asserta(diferencaEntreTarefas(t2,t9,8)),
asserta(diferencaEntreTarefas(t2,t10,9)),
asserta(diferencaEntreTarefas(t2,t11,10)),
asserta(diferencaEntreTarefas(t2,t12,11)),
%asserta(diferencaEntreTarefas(t2,t13,12)),
%asserta(diferencaEntreTarefas(t2,t14,13)),
%asserta(diferencaEntreTarefas(t2,t15,14)),

asserta(diferencaEntreTarefas(t3,t4,2)),
asserta(diferencaEntreTarefas(t3,t5,3)),
asserta(diferencaEntreTarefas(t3,t6,4)),
asserta(diferencaEntreTarefas(t3,t7,5)),
asserta(diferencaEntreTarefas(t3,t8,6)),
asserta(diferencaEntreTarefas(t3,t9,7)),
asserta(diferencaEntreTarefas(t3,t10,8)),
asserta(diferencaEntreTarefas(t3,t11,9)),
asserta(diferencaEntreTarefas(t3,t12,10)),
%asserta(diferencaEntreTarefas(t3,t13,11)),
%asserta(diferencaEntreTarefas(t3,t14,12)),
%asserta(diferencaEntreTarefas(t3,t15,13)),

asserta(diferencaEntreTarefas(t4,t5,2)),
asserta(diferencaEntreTarefas(t4,t6,3)),
asserta(diferencaEntreTarefas(t4,t7,4)),
asserta(diferencaEntreTarefas(t4,t8,5)),
asserta(diferencaEntreTarefas(t4,t9,6)),
asserta(diferencaEntreTarefas(t4,t10,7)),
asserta(diferencaEntreTarefas(t4,t11,8)),
asserta(diferencaEntreTarefas(t4,t12,9)),
%asserta(diferencaEntreTarefas(t4,t13,10)),
%asserta(diferencaEntreTarefas(t4,t14,11)),
%asserta(diferencaEntreTarefas(t4,t15,12)),

asserta(diferencaEntreTarefas(t5,t6,2)),
asserta(diferencaEntreTarefas(t5,t7,3)),
asserta(diferencaEntreTarefas(t5,t8,4)),
asserta(diferencaEntreTarefas(t5,t9,5)),
asserta(diferencaEntreTarefas(t5,t10,6)),
asserta(diferencaEntreTarefas(t5,t11,7)),
asserta(diferencaEntreTarefas(t5,t12,8)),
%asserta(diferencaEntreTarefas(t5,t13,9)),
%asserta(diferencaEntreTarefas(t5,t14,10)),
%asserta(diferencaEntreTarefas(t5,t15,11)),

asserta(diferencaEntreTarefas(t6,t7,2)),
asserta(diferencaEntreTarefas(t6,t8,3)),
asserta(diferencaEntreTarefas(t6,t9,4)),
asserta(diferencaEntreTarefas(t6,t10,5)),
asserta(diferencaEntreTarefas(t6,t11,6)),
asserta(diferencaEntreTarefas(t6,t12,7)),
%asserta(diferencaEntreTarefas(t6,t13,8)),
%asserta(diferencaEntreTarefas(t6,t14,9)),
%asserta(diferencaEntreTarefas(t6,t15,10)),

asserta(diferencaEntreTarefas(t7,t8,2)),
asserta(diferencaEntreTarefas(t7,t9,3)),
asserta(diferencaEntreTarefas(t7,t10,4)),
asserta(diferencaEntreTarefas(t7,t11,5)),
asserta(diferencaEntreTarefas(t7,t12,6)),
%asserta(diferencaEntreTarefas(t7,t13,7)),
%asserta(diferencaEntreTarefas(t7,t14,8)),
%asserta(diferencaEntreTarefas(t7,t15,9)),

asserta(diferencaEntreTarefas(t8,t9,2)),
asserta(diferencaEntreTarefas(t8,t10,3)),
asserta(diferencaEntreTarefas(t8,t11,4)),
asserta(diferencaEntreTarefas(t8,t12,5)),
%asserta(diferencaEntreTarefas(t8,t13,6)),
%asserta(diferencaEntreTarefas(t8,t14,7)),
%asserta(diferencaEntreTarefas(t8,t15,8)),

asserta(diferencaEntreTarefas(t9,t10,2)),
asserta(diferencaEntreTarefas(t9,t11,3)),
asserta(diferencaEntreTarefas(t9,t12,4)),
%asserta(diferencaEntreTarefas(t9,t13,2)),
%asserta(diferencaEntreTarefas(t9,t14,3)),
%asserta(diferencaEntreTarefas(t9,t15,4)),

asserta(diferencaEntreTarefas(t10,t11,2)),
asserta(diferencaEntreTarefas(t10,t12,3)),
%asserta(diferencaEntreTarefas(t10,t13,2)),
%asserta(diferencaEntreTarefas(t10,t14,3)),
%asserta(diferencaEntreTarefas(t10,t15,2)),

asserta(diferencaEntreTarefas(t11,t12,2)),
asserta(diferencaEntreTarefas(t11,t13,3)),
%asserta(diferencaEntreTarefas(t11,t14,2)),
%asserta(diferencaEntreTarefas(t11,t15,3)),

asserta(diferencaEntreTarefas(t12,t13,2)).
%asserta(diferencaEntreTarefas(t12,t14,3)),
%asserta(diferencaEntreTarefas(t12,t15,2)),

%asserta(diferencaEntreTarefas(t13,t14,2)),
%asserta(diferencaEntreTarefas(t13,t15,3)),

%asserta(diferencaEntreTarefas(t14,t15,2)).








