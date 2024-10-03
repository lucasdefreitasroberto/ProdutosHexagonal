Este projeto visa aprimorar a compreensão e aplicação de **princípios de design de software**, como os **princípios SOLID**, e aplicar a **Arquitetura Hexagonal** para alcançar maior modularidade, testabilidade e manutenção do código.

## 🎯 Objetivo

O objetivo deste projeto é construir um sistema simples de **Lista produtos**, com funcionalidades básicas de listagem, seguindo as boas práticas de arquitetura e design. Ele serve como uma base para projetos mais complexos e escaláveis.

## 🔥 Motivação

Este projeto foi construído para fornecer um exemplo claro de como utilizar princípios de **desenvolvimento orientado a casos de uso** e como organizar uma aplicação em camadas que promovem:

- 📚 **Responsabilidades bem definidas**.
- 🧩 **Baixo acoplamento** e **alta coesão**.
- 🛠️ **Facilidade de manutenção e extensão**.
- ✅ **Testabilidade** ao separar lógica de negócios da infraestrutura.

## 🛠️ Tecnologias Utilizadas

- **Delphi**: Linguagem de programação utilizada para desenvolver o sistema.
- **IBX**: Para acesso a dados e integração com o banco de dados.
- **VCL**: Para a criação da interface gráfica da aplicação.

## 🧑‍🏫 Padrões e Princípios Aplicados

### SOLID

Os cinco princípios SOLID são seguidos neste projeto para garantir que o código seja fácil de entender, modificar e estender:

- **S (Single Responsibility Principle - SRP)**: Cada classe e módulo tem uma responsabilidade única. Por exemplo, a classe `TProdutosService` tem a única responsabilidade de fornecer serviços relacionados à entidade Produto.
  
- **O (Open/Closed Principle - OCP)**: O código está aberto para extensão, mas fechado para modificação. Novas funcionalidades podem ser adicionadas sem alterar as classes existentes, como ao adicionar novos casos de uso.

- **L (Liskov Substitution Principle - LSP)**: As interfaces de casos de uso, serviços e repositórios garantem que qualquer implementação concreta dessas interfaces possa ser substituída sem alterar o comportamento esperado.

- **I (Interface Segregation Principle - ISP)**: Interfaces menores e mais específicas foram criadas. Por exemplo, a interface `IProdutosRepository` define apenas os métodos que o repositório precisa para operar, sem sobrecarregar a interface com métodos desnecessários.

- **D (Dependency Inversion Principle - DIP)**: As classes de alto nível, como os `UseCases` e `Controllers`, não dependem diretamente de implementações concretas, mas de abstrações. Isso permite a inversão de controle e facilita o desacoplamento.

### Arquitetura Hexagonal

Este projeto segue os princípios da **Arquitetura Hexagonal** (ou Arquitetura de Portos e Adaptadores), onde a lógica de negócios central (domínio) é isolada da infraestrutura externa (repositórios, UI, banco de dados, etc.).

- **Domínio**: Casos de uso e regras de negócio são implementados em classes como `TListarProdutosUseCase`, que contém a lógica principal para listar produtos.
  
- **Portos**: São as interfaces que permitem que o domínio interaja com o mundo externo. Exemplo: `IProdutosRepository`, `IProdutosUseCase`.
  
- **Adaptadores**: São implementações que se conectam aos portos. Exemplo: `TIBXProdutosRepository`, que faz a conexão com o banco de dados.

### 🏗️ Camadas do Projeto

- **Adapters**: Contém controladores e presenters que adaptam a entrada e saída para o domínio.
  
- **Interactors**: Casos de uso que contêm a lógica principal da aplicação.
  
- **External**: Contém os repositórios e serviços externos (banco de dados, APIs).
  
- **UI**: Interface gráfica que interage com o usuário.

### 🧩 Modularidade

As responsabilidades são bem divididas entre as diferentes camadas. Isso facilita a manutenção e modificação do sistema, permitindo adicionar novas funcionalidades sem a necessidade de alterar o código existente.

### ✅ Testabilidade

A separação entre lógica de negócios e infraestrutura facilita a criação de testes unitários. As classes de domínio podem ser testadas isoladamente, injetando implementações mock das interfaces de repositório e serviços.

## 📂 Estrutura do Projeto

```bash
Produtos/
│
├── adapters/
│   ├── ProdutosController.pas
│   ├── abstracts/
│   │   ├── ProdutosControllerAbstract.pas
│   │   └── ProdutosControllerFactoryAbstract.pas
│   ├── presentation/
│       └── ProdutosPresenter.pas
│
├── external/
│   ├── repositories/
│   │   ├── IBXProdutosRepository.pas
│   │   └── ProdutosRepositoryAbstract.pas
│   ├── services/
│   │   └── ProdutosService.pas
│   ├── ui/
│       └── frmPrincipal.pas
│       └── ProdutoUI.pas
│
├── interactors/
│   ├── abstracts/
│   │   ├── ProdutosUseCaseAbstract.pas
│   ├── structs/
│   │   └── ProdutosData.pas
│   ├── ListarProdutosUseCase.pas
│
└── main/
    └── ProdutosControllerFactory.pas
