SELECT equipe.nomeequipe, pessoa.nome AS nome_jogador, pessoa.idade, pessoa.sexo, pontuação.pts AS pontos_jogador,partida.diapartida, modalidade.modname AS modalidade,placar.ptsfinal AS pontos_final
FROM 
    pessoa
INNER JOIN jogador 
	ON pessoa.idpess = jogador.Fk_idpess
INNER JOIN pontuação 
	ON jogador.idJ = pontuação.Fk_idJ
INNER JOIN equipes 
	ON jogador.idJ = equipes.Fk_idJ
INNER JOIN equipe 
	ON equipes.Fk_idEqn = equipe.idEqn
INNER JOIN placar 
	ON equipes.ideq = placar.Fk_ideq
INNER JOIN partida 
	ON placar.Fk_idpart = partida.idpart
INNER JOIN modalidade 
	ON placar.Fk_idm = modalidade.idm
ORDER BY 
    partida.diapartida, equipe.nomeequipe;
