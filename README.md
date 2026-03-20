   <h1 align="center">
       flutter user list ifpa api
    <br />
    <br />
    <a href="https://github.com/StellaKarolinaNunes/flutter-user-list-ifpa-api">
     <img src="./assets/imagens/banner.png" alt="flutter user list ifpa api Banner " width="100%">
    </a>
  </h1>

</div>

<p align="center">
  <img src="https://img.shields.io/static/v1?label=flutter&message=framework&color=blue&style=for-the-badge&logo=flutter"/>
  <img src="https://img.shields.io/static/v1?label=API&message=REST&color=blue&style=for-the-badge&logo=cloud"/>
  <img src="https://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=TESTES&message=%3E1.0&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=STATUS&message=CONCLUÍDO&color=green&style=for-the-badge"/>
</p>

<br>

---

##  Introdução
**flutter user list ifpa api** é uma avaliação de Programação de Dispositivos Móveis propõe o desenvolvimento de um aplicativo utilizando o framework Flutter, com o objetivo de consolidar e aplicar os conhecimentos adquiridos durante a disciplina. O trabalho consiste na criação de um aplicativo de listagem e filtro dinâmico de usuários, consumindo dados de uma API externa. Neste contexto, o aplicativo deverá conectar-se ao endpoint API ALUNOS IFPA `restrita/privada`, processar e exibir a lista de usuários de forma clara e organizada, apresentando, pelo menos, o nome e a matrícula de cada usuário. Além disso, será implementada uma funcionalidade de filtro por nome, permitindo ao usuário buscar registros de forma dinâmica e eficiente, independente de letras maiúsculas ou minúsculas.  O desenvolvimento deste projeto visa exercitar práticas essenciais do desenvolvimento mobile moderno, como a integração com APIs REST, manipulação de listas e implementação de interfaces responsivas e intuitivas. A avaliação irá considerar critérios como a funcionalidade correta do aplicativo, a organização e clareza do código, e a qualidade da interface e experiência do usuário.

<br>

## Por que flutter user list ifpa api?
O nome **flutter user list ifpa api** reflete a proposta de oferecer auxílio imediato e acessível na palma da mão. Em um contexto institucional, a agilidade no acesso a dados de usuários e alunos é fundamental. O aplicativo foi desenvolvido para simplificar essa consulta, transformando processos de busca que poderiam ser lentos em uma experiência fluida e intuitiva, unindo a mobilidade do Flutter com a eficiência da integração de dados em tempo real.

<br>

## A Solução
A solução consiste em um aplicativo mobile desenvolvido com **Flutter**, que estabelece uma comunicação segura com uma **API REST** para recuperar e exibir informações de alunos. Através de uma arquitetura baseada em **Providers** e **Services**, o sistema gerencia o estado da aplicação de forma eficiente, permitindo buscas instantâneas e atualizações em tempo real. A interface foi projetada com foco na usabilidade, oferecendo feedbacks visuais claros e uma navegação intuitiva para facilitar a consulta de dados acadêmicos.

<br>

## Funcionalidades
* **Listagem dinâmica de usuários** vindos de API RESTful.
* **Busca e filtragem** (por nome, matrícula, sexo, status).
* **Feedback visual**: loading, erros, vazio, atualização.
* **Atualização manual** via botão.
* **Estilo profissional**: scrollbar customizada, fontes e cores centralizadas.
* **Componentização**: widgets reutilizáveis e organizados.
* **Arquitetura limpa**: providers, models e services separados.
* **UX amigável**: mensagens claras, animações, acessibilidade.

<br>

## Demostração


| ![](https://github.com/user-attachments/assets/803fce20-7c08-40c0-99db-3b4a8dece3b8) | ![](https://github.com/user-attachments/assets/3b7801bb-0954-474d-a5a5-1a7641f24d98) | ![](https://github.com/user-attachments/assets/8516a637-fb63-4faa-bb46-ae0125d75f9d) | ![](https://github.com/user-attachments/assets/b9a43a9d-e592-45ab-a769-655e10c42523)  |
|---|---|---|---|

> **Nota:**  
> Este projeto é de caráter acadêmico e utiliza uma API restrita do IFPA.  
> Por razões de privacidade e segurança, os dados sensíveis foram ocultados.  
> As imagens e gravações utilizadas são apenas para fins demonstrativos.


---



 ##  Estrutura de Pastas

A estrutura do projeto segue o padrão de organização por camadas, facilitando a manutenção e escalabilidade.

```text
.
├── assets
│   └── imagens
│       ├── banner.png
│       ├── carregamento.png
│       ├── home.png
│       ├── pesquisa.png
│       └── sem_busca.png
├── lib
│   ├── constants
│   │   ├── app_colors.dart
│   │   ├── app_fonts.dart
│   │   └── app_icon.dart
│   ├── main.dart
│   ├── models
│   │   └── usuario.dart
│   ├── providers
│   │   └── usuario_provider.dart
│   ├── screens
│   │   └── home_screen.dart
│   ├── services
│   │   └── api_service.dart
│   └── widgets
│       ├── custom_scrollbar.dart
│       ├── error_widget.dart
│       ├── loading_widget.dart
│       ├── no_results_widget.dart
│       ├── search_field.dart
│       ├── usuario_card.dart
│       └── usuario_list.dart
├── analysis_options.yaml
├── Contribuindo.md
├── LICENSE
├── pubspec.lock
├── pubspec.yaml
└── README.md
```

<br>


 <br>

##  Instalação

### Pré-requisitos para Rodar flutter user list ifpa api na sua maquina 

* [Flutter SDK](https://docs.flutter.dev/get-started/install)
* [Git](https://git-scm.com/)
* Dispositivo (Android/iOS) ou emulador/simulador ou navegador (web)
* (Opcional) [VS Code](https://code.visualstudio.com/) + Extensão Flutter

<br>


###  Instalação Rápida

####  1. Clone o repositório

```bash
git clone https://github.com/StellaKarolinaNunes/flutter-user-list-ifpa-api.git
```

####  2. Navegue até o diretório do projeto

```bash
cd flutter-user-list-ifpa-api
```

####  3. Configure as variáveis de ambiente

Crie um arquivo `.env` a partir do modelo:

```bash
cp .env.example .env
```

Edite o seu arquivo `.env` e adicione a URL da sua API:

```env
API_URL=https://SUA_API_URL_AQUI
```

####  4. Instale as dependências

```bash
flutter pub get
```

####  5. Execute o aplicativo

```bash
flutter run
```

### 5. Scripts Disponíveis


### Principais Comandos Flutter

```bash
flutter pub get       # Instala as dependências do projeto
flutter run           # Executa o app no dispositivo/emulador
flutter build apk     # Gera APK para Android
flutter build web     # Gera build para web
flutter doctor        # Diagnóstico do ambiente Flutter
flutter build appbundle # Gera pacote para publicação na Google Play.
```

> **Saiba mais**: Acesse o site oficial da documentação Flutter para guias completos: [ documentação do flutter ](https://docs.flutter.dev/)

<br>

##  Roadmap

- [x] Configuração inicial do projeto Flutter
- [x] Estrutura de pastas básica
- [ ] Integração com a API REST (Consumo de usuários)
- [ ] Implementação do Gerenciamento de Estado (Bloc/Riverpod/Provider)
- [ ] Tela de Listagem de Usuários com Scroll Infinito
- [ ] Tela de Detalhes do Usuário
- [ ] Funcionalidade de Busca e Filtros
- [ ] Persistência de dados local (Cache/Offline)
- [ ] Implementação de Testes Unitários e de Widget
- [ ] Melhorias de UI/UX e Feedback Visual (Shimmer Effect)
- [ ] Geração de Build para Produção (APK/App Bundle)

<br>

 ##  Contribuição
Contribuições são muito bem-vindas! Siga estes passos:

### Como Contribuir
1. **Fork** este repositório como cotribuir completo,sem comentario e emogi profissional e atraente e copleto
2. 
3. **Clone** seu fork localmente
4. **Crie** uma branch para sua feature: `git checkout -b feature/nova-funcionalidade`
5. **Faça** suas alterações e commits
6. **Teste** suas modificações
7. **Abra** um Pull Request detalhado

<br>

###  Diretrizes

- Código limpo e bem comentado
- Mensagens de commit claras e objetivas
- Teste todas as funcionalidades
- Mantenha a documentação atualizada
- Siga os padrões de código existentes

<br>

##  Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).

``` bash
MIT License - você pode usar, modificar e distribuir livremente,
mantendo a referência ao repositório original.
```

 <br>

 
 ##  Créditos

O **flutter user list ifpa api** foi desenvolvido utilizando as melhores tecnologias e o apoio de uma comunidade incrível:

###  Tecnologias e Frameworks
- **Framework Principal:** [Flutter](https://flutter.dev/)
- **Linguagem:** [Dart](https://dart.dev/)
- **Gerenciamento de Estado:** [Provider](https://pub.dev/packages/provider)
- **Interface e Efeitos:** [Glassmorphism](https://pub.dev/packages/glassmorphism) e [Flutter SVG](https://pub.dev/packages/flutter_svg)
- **Tipografia:** [Google Fonts](https://pub.dev/packages/google_fonts) (Roboto)
- **Integração:** [HTTP](https://pub.dev/packages/http) e [Flutter Dotenv](https://pub.dev/packages/flutter_dotenv)
- [Documentação Oficial Flutter](https://docs.flutter.dev/)
- [Provider (State Management)](https://pub.dev/packages/provider)
- [Acessibilidade em Flutter](https://docs.flutter.dev/development/accessibility-and-localization/accessibility)
- [Guia de Contribuição Open Source](https://opensource.guide/how-to-contribute/)

### Mentoria e Orientação
- **Professor Orientador:** [Deriks Karlay Dias Costa](https://github.com/karlaycosta)
- **Instituição:** IFPA (Instituto Federal do Pará)

<br>

### Desenvolvimento Principal
<table>
  <tr>
    <td align="center">
      <a href="https://github.com/StellaKarolinaNunes">
        <img src="https://github.com/StellaKarolinaNunes.png" width="100px" alt="Stella Karolina Nunes Peixoto"/>
        <br />
        <sub><b>Stella Karolina Nunes Peixoto</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/Gab0701">
        <img src="https://github.com/Gab0701.png" width="100px" alt="João Gabriel Peres De Castro"/>
        <br />
        <sub><b>João Gabriel Peres De Castro</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/jhony996358">
        <img src="https://github.com/jhony996358.png" width="100px" alt="Jhonefer Vinicius Lima Da Silva"/>
        <br />
        <sub><b>Jhonefer Vinicius Lima Da Silva</b></sub>
      </a>
    </td>
    
<br>

---

> _Projeto acadêmico IFPA | Ciência da Computação – Lista de Usuários Flutter, referência para projetos de listagem com API e busca._