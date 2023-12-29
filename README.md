# CountNewYear SwiftUI



https://github.com/YagoCardoso/FireworksNewYearSwifitUI/assets/48061155/4c264e94-dcbc-49c8-ba88-4e048ee8fd4d




Este projeto, implementado em SwiftUI, apresenta uma contagem regressiva interativa para o Ano Novo, incorporando uma animação de fogos de artifício. Desenvolvido por um usuário em 29/12/23, o código utiliza a biblioteca EffectsLibrary para a animação de fogos de artifício, proporcionando uma experiência visual envolvente. A biblioteca EffectsLibrary pode ser encontrada [aqui](https://github.com/GetStream/effects-library).

## Descrição do Código

O código está contido no arquivo "CountNewYear.swift" e é estruturado da seguinte forma:

1. **Imagem de Fundo Personalizada:**
   - Utiliza uma imagem personalizada "fundonewyear" como plano de fundo.
   - Configura a imagem para preencher toda a tela, ignorando as áreas seguras.

2. **Contagem Regressiva:**
   - Calcula dinamicamente a contagem regressiva para o Ano Novo a partir da data atual.
   - Utiliza a função `updateCountdown()` para calcular e atualizar a string de contagem regressiva.

3. **Interface Gráfica:**
   - Utiliza o modificador `ZStack` para sobrepor elementos na tela.
   - Incorpora uma animação de fogos de artifício (`FireworksView`) da EffectsLibrary na parte superior e inferior da tela.
   - Exibe a contagem regressiva no centro da tela com uma fonte ousada e alinhamento central.
   - Ajusta a cor do texto para branco para garantir visibilidade na imagem de fundo.

4. **Visualização em Tempo Real:**
   - Inicia a contagem regressiva automaticamente quando a tela é exibida.
   - Atualiza a contagem regressiva a cada segundo usando o `Timer.publish`.

5. **Preview:**
   - Inclui uma visualização de prévia (`CountNewYear()`) para facilitar o teste e a visualização durante o desenvolvimento.

## Utilização
Para utilizar este código em seu próprio projeto SwiftUI, siga estas etapas:
1. Substitua a imagem de fundo com o nome "fundonewyear" pela sua própria imagem.
2. Integre o código em seu projeto, mantendo a estrutura e personalizando conforme necessário.
3. Adapte a data de destino na função `updateCountdown()` conforme a sua preferência.

## Pré-requisitos

- Xcode 12.0 ou superior
- Dispositivo ou simulador iOS 14.0 ou superior

## Instalação

1. Clone o repositório para o seu ambiente de desenvolvimento local:

```bash
git clone https://github.com/YagoCardoso/FireworksNewYearSwifitUI/.git
```

2. Abra o projeto no Xcode:

```bash
cd FireworksNewYearSwifitUI
open FireworksNewYearSwifitUI.xcodeproj
```

3. Execute o projeto no simulador ou em um dispositivo iOS.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir problemas (issues) ou enviar pull requests para melhorar o projeto.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

