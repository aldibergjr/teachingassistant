Feature: Auto-avaliação
    Como um estudante
    Eu quero atribuir o conceito nas metas 
    Para que seja possível haver uma comparação entre os conceitos submetidos por mim e o professor, fazendo uma possível conciliação de interesses.


GUI:
Scenario: Inserindo auto-avaliação.
Given eu estou na página “auto-avaliação” como aluno
And eu vejo o nome “Adriano” 
And ainda não foi feita nenhuma auto-avaliação
When eu envio as metas “MA”, “MPA” e “MA”
Then eu recebo uma mensagem de que a avaliação foi bem sucedida 
And sou direcionado para fora da página “auto-avaliação”
And vejo que “minhas avaliações” estão disponíveis para eu visualizar com os valores “MA”, “MPA” e “MA”.

Service:
Scenario: Inserindo auto-avaliação
Given eu estou na página “auto avaliação” como aluno
And ainda não foi inserido uma auto avaliação para o aluno “Adriano”
When eu envio as metas “MA”, “MA” E “MA”  
Then o sistema retorna uma mensagem de sucesso 
And guarda os valores “MA”, “MA” e “MA” para o aluno “Adriano” 

