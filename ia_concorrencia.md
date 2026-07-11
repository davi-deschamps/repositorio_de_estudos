## Interação 1: Entendendo o Future
**Meu Prompt:** O que é um Future em Dart e como ele me ajuda a lidar com tarefas que levam tempo?

**Resposta da IA:**
Um `Future` é um objeto que representa uma "promessa" de um valor ou erro que estará disponível no futuro. Ele ajuda a lidar com tarefas demoradas porque permite que o aplicativo continue rodando outras coisas em segundo plano enquanto espera a resposta final, evitando que a interface do usuário trave ou congele.

**Minhas Observações:**
É uma promessa de que um dado vai chegar mais tarde. Serve para receber uma resposta demorada sem congelar ou travar a tela do aplicativo.



## Interação 2: Síncrono vs Assíncrono
**Meu Prompt:** O que significam os termos 'assíncrono' e 'síncrono'?

**Resposta da IA:**
* **Síncrono:** As tarefas são executadas em fila, uma após a outra. O programa bloqueia e espera a linha atual terminar totalmente antes de ir para a próxima.
* **Assíncrono:** As tarefas demoradas rodam em segundo plano de forma independente. O programa dispara a ação e continua lendo as próximas linhas sem esperar o resultado imediato.

**Minhas Observações:**
Síncrono executa em fila travando o código. Assíncrono manda rodar em segundo plano e libera o programa para continuar executando o resto.



## Interação 3: Quando usar Futures
**Meu Prompt:** Em quais situações devo usar Futures em meu código Dart?

**Resposta da IA:**
Você deve usar `Future` sempre que a sua operação depender de fatores externos ao processador do dispositivo e que demoram um tempo imprevisível. Os cenários mais comuns são:
1. **Requisições de rede:** Buscar dados de uma API ou site da internet.
2. **Banco de dados:** Ler ou gravar informações localmente.
3. **Arquivos:** Ler, escrever ou baixar arquivos do armazenamento do celular.

**Minhas Observações:**
Usar obrigatoriamente sempre que o código precisar acessar a internet, ler/gravar dados em arquivos ou salvar algo no banco de dados.



