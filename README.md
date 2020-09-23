# atividades-livro-aberto
# Atividades avulsas dos capítulos dos livros do Ensino Médio e de Frações.

Para editar os arquivos é necessário instalar as fontes presentes na pasta. 

Dentro das pasta Livro de Frações há pastas para cada lição. Já o livro do Ensino Médio possui módulos para cada grupo de capítulos. No momento temos o Módulo de Funções e o de Estatística e Probabilidade, cada um com sub-diretórios para seus devidos capítulos.

Todas as pastas de todos os capítulos contém os seguintes scripts em .bat:

# SCRIPTS 

compile.bat #compila em xelatex todos os arquivos nos sub-diretórios.

compile-professor.bat #compila todos os arquivos nos sub-diretórios e adiciona "-professor" no final do nome.

delete-pdf.bat #deleta os .pdf e todos os sub-diretórios

rename-professor # adiciona "-professor" ao final do nome


# ARQUIVOS DO LATEX

Há dentro da pasta da pasta do Livro de Frações e do Livro do Ensino Médio os arquivos

base-ensino-medio.tex (ou base-fracoes) #arquivo de exemplo para construção de uma atividade 

modelo-ensino-medio.sty (ou modelo-fracoes) #pacote com os ambientes e pacotes usados nas atividades




Dentro dos arquivos dos modelos, há a seguinte linha:

\newcommand*{\prof}{} % comente para gerar o arquivo do estudante, descomente para gerar o arquivo para o professor.

Com os scripts (apenas para windows no momento) é possível compilar todos os arquivos no caso de alterações no modelo ou se for necessário fazer alterações sitemáticas sem a necessidade de compilar cada arquivo manualmente

No momento há apenas as atividades dos capítulos A Natureza da Estatística; Função Afim; Introdução às Funções; Taxa de Variação; para o livro do Ensino Médio; e as Lições 1 a 4 do Livro de Frações.



Qualquer problema identificado ou sugestão por favor submeter aos issues.

