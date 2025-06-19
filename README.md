<h1 align="center">
  flutter-user-list-ifpa-api
</h1>

<p align="center">
  <img src="https://img.shields.io/static/v1?label=flutter&message=framework&color=blue&style=for-the-badge&logo=flutter"/>
  <img src="https://img.shields.io/static/v1?label=API&message=REST&color=blue&style=for-the-badge&logo=cloud"/>
  <img src="https://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=TESTES&message=%3E1.0&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=STATUS&message=CONCLUÍDO&color=green&style=for-the-badge"/>
</p>

---

# :star2: Sumário

- [Introdução](#introdução)
- [Demonstração](#demonstração)
- [Funcionalidades](#funcionalidades)
- [Instalação](#instalação)
- [Uso](#uso)
- [Exemplos](#exemplos)
- [FAQ / Perguntas Frequentes](#faq--perguntas-frequentes)
- [Contribuição](#contribuição)
- [Boas Práticas](#boas-práticas)
- [Recursos & Links Adicionais](#recursos--links-adicionais)
- [Licença](#licença)
- [Equipe](#equipe)

---

## :books: Introdução

A avaliação de Programação de Dispositivos Móveis propõe o desenvolvimento de um aplicativo utilizando o framework Flutter, com o objetivo de consolidar e aplicar os conhecimentos adquiridos durante a disciplina. O trabalho consiste na criação de um aplicativo de listagem e filtro dinâmico de usuários, consumindo dados de uma API externa.

Neste contexto, o aplicativo deverá conectar-se ao endpoint API ALUNOS IFPA `restrita/privada`, processar e exibir a lista de usuários de forma clara e organizada, apresentando, pelo menos, o nome e a matrícula de cada usuário. Além disso, será implementada uma funcionalidade de filtro por nome, permitindo ao usuário buscar registros de forma dinâmica e eficiente, independente de letras maiúsculas ou minúsculas.

O desenvolvimento deste projeto visa exercitar práticas essenciais do desenvolvimento mobile moderno, como a integração com APIs REST, manipulação de listas e implementação de interfaces responsivas e intuitivas. A avaliação irá considerar critérios como a funcionalidade correta do aplicativo, a organização e clareza do código, e a qualidade da interface e experiência do usuário.

---

## :rocket: Demonstração

| ![](https://github.com/user-attachments/assets/803fce20-7c08-40c0-99db-3b4a8dece3b8) | ![](https://github.com/user-attachments/assets/3b7801bb-0954-474d-a5a5-1a7641f24d98) | ![](https://github.com/user-attachments/assets/8516a637-fb63-4faa-bb46-ae0125d75f9d) | ![](https://github.com/user-attachments/assets/b9a43a9d-e592-45ab-a769-655e10c42523)  |
|---|---|---|---|

> **Nota:**  
> Este projeto é de caráter acadêmico e utiliza uma API restrita do IFPA.  
> Por razões de privacidade e segurança, os dados sensíveis foram ocultados.  
> As imagens e gravações utilizadas são apenas para fins demonstrativos.


---

## :zap: Funcionalidades

- **Listagem dinâmica de usuários** vindos de API RESTful.
- **Busca e filtragem** (por nome, matrícula, sexo, status).
- **Feedback visual**: loading, erros, vazio, atualização.
- **Atualização manual** via botão.
- **Estilo profissional**: scrollbar customizada, fontes e cores centralizadas.
- **Componentização**: widgets reutilizáveis e organizados.
- **Arquitetura limpa**: providers, models e services separados.
- **UX amigável**: mensagens claras, animações, acessibilidade.

---

## :computer: Instalação

### Pré-requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Git](https://git-scm.com/)
- Dispositivo (Android/iOS) ou emulador/simulador ou navegador (web)
- (Opcional) [VS Code](https://code.visualstudio.com/) + Extensão Flutter

### Passo a Passo

1. **Clone o repositório:**

    ```bash
    git clone https://github.com/StellaKarolinaNunes/flutter-user-list-ifpa-api
    cd flutter-user-list-ifpa-api
    ```

2. **Instale as dependências:**

    ```bash
    flutter pub get
    ```

3. **Configure um dispositivo ou emulador:**

    - Certifique-se que esteja visível em `flutter devices`.

4. **Execute o aplicativo:**

    ```bash
    flutter run
    ```

5. **Para rodar no navegador (web):**

    ```bash
    flutter run -d chrome
    ```

> **Dica:**  
> Use `flutter doctor` para garantir que todos os requisitos estejam corretos.

---

## :wrench: Uso

- Na tela inicial, aguarde o carregamento automático dos usuários (API externa).
- Use a barra de busca para filtrar por nome, matrícula, sexo ou status (ativo/inativo).
- Clique no botão de atualizar para recarregar dados da API.
- Visualize informações detalhadas: número, nome, matrícula, sexo e status de cada usuário.
- Caso haja erro de conexão, utilize "Tentar novamente".
- Se não houver resultados, sugestões serão exibidas.

### Principais Comandos Flutter

```bash
flutter pub get       # Instala as dependências do projeto
flutter run           # Executa o app no dispositivo/emulador
flutter build apk     # Gera APK para Android
flutter build web     # Gera build para web
flutter doctor        # Diagnóstico do ambiente Flutter
```

---

## :bulb: Exemplos

**Exemplo 1:**  
Digite "feminino" no campo de busca para filtrar apenas usuárias do sexo feminino.

**Exemplo 2:**  
Limpe o campo de busca para ver todos os usuários novamente.

**Exemplo 3:**  
Clique no ícone de atualizar para forçar a busca de dados mais recentes da API.

---

## :question: FAQ / Perguntas Frequentes

### 1. O que este projeto faz?
Este é um aplicativo Flutter que lista usuários, exibindo informações como nome, matrícula, sexo e status (ativo/inativo). Os dados são buscados de uma API e exibidos em uma interface moderna, com busca e filtragem.

### 3. Preciso de alguma configuração especial?
Não. Basta ter o Flutter instalado e atualizado.  
A API utilizada é restrita, mas o projeto está pronto para ser conectado a qualquer API compatível.

### 4. Como funciona a busca?
A busca filtra os usuários conforme você digita no campo de pesquisa, considerando nome, matrícula, sexo e status (ativo/inativo).

### 5. O que fazer se aparecer "Erro ao buscar usuários"?
- Verifique sua conexão com a internet.
- Tente novamente clicando no botão "Tentar novamente".
- Se o problema persistir, confira se a API está online.

### 6. Como atualizar a lista de usuários?
Clique no ícone de atualização (⟳) no topo da tela. Isso força uma nova busca na API, ignorando o cache.

### 7. Como adicionar novos usuários?
Este app é apenas para listagem. Para adicionar usuários, é necessário implementar essa funcionalidade ou adicionar diretamente pela API, se permitido.

### 8. Como posso customizar as cores, fontes ou ícones?
Edite os arquivos em `lib/constants/`:
- **Cores:** `lib/constants/app_colors.dart`
- **Fontes:** `lib/constants/app_fonts.dart`
- **Ícones:** `lib/constants/app_icon.dart`
  
### 9. O projeto funciona offline?
Não. O app depende da API para obter a lista de usuários. Sem internet, não é possível carregar ou atualizar a lista.

### 10.Por que a API não está integrada diretamente ao código?
Por motivos de proteção de dados sensíveis e segurança, a chave da API é restrita e pertence exclusivamente ao instituto. Por isso, a URL da API foi removida do código-fonte público.

Caso queira testar o projeto, vá até o arquivo: `lib/services/api_service.dart`
E substitua a linha:  `static const String _baseUrl = 'CHAVE_API';`
Pela sua própria URL da API.

### 11. Não encontrou sua dúvida aqui?
Abra uma [issue](https://github.com/StellaKarolinaNunes/flutter-user-list-ifpa-api/issues/new) com sua dúvida, sugestão ou feedback. Ficarei feliz em ajudar! 💬✨

---

## :handshake: Contribuição

Contribuições são bem-vindas!

1. [Leia o guia de contribuição](./Contribuindo.md) :purple_heart:
2. Faça um fork deste repositório.
3. Crie uma branch descritiva:  
   `git checkout -b feature/seu-recurso`
4. Faça commits claros e objetivos.
5. Abra um Pull Request detalhado.

**Dicas para contribuir:**

- Use títulos de PR claros e descritivos.
- Mantenha o padrão de código e documentação.
- Sempre teste suas alterações.
- Use Issues para comunicação e dúvidas.

---

## :bookmark_tabs: Boas Práticas

- Código limpo, comentado e modular.
- Mensagens de commit claras.
- Teste manual/local antes do PR.
- Atualize sua branch antes de abrir um PR.
- Siga o [Guia de Estilo Flutter](https://docs.flutter.dev/development/style-guide).

---

## :link: Recursos & Links Adicionais

- [Documentação Oficial Flutter](https://docs.flutter.dev/)
- [Provider (State Management)](https://pub.dev/packages/provider)
- [Acessibilidade em Flutter](https://docs.flutter.dev/development/accessibility-and-localization/accessibility)
- [Guia de Contribuição Open Source](https://opensource.guide/how-to-contribute/)
- [API de Exemplo utilizada restrita/privada](restrita/privada/usuario) _(restrita/privada)_

---

## :page_facing_up: Licença

Este projeto está sob a [Licença MIT](./LICENSE).  
Você pode usar, modificar e distribuir livremente, apenas mantenha referência ao repositório original.

---

## :trophy: Equipe

**Desenvolvimento:**  
- [Stella Karolina Nunes Peixoto](https://github.com/StellaKarolinaNunes)  
- [João Gabriel Peres De Castro](https://github.com/Gab0701)  
- [Jhonefer Vinicius Lima Da Silva](https://github.com/jhony996358)
  
- *Professor* [Deriks Karlay Dias Costa](https://github.com/karlaycosta)

---

> _Projeto acadêmico IFPA | Ciência da Computação – Lista de Usuários Flutter, referência para projetos de listagem com API e busca._
