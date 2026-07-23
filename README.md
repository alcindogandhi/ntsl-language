# NTSL Language Basics

Suporte a coloração de sintaxe para arquivos `.ntsl` (linguagem NTSL, usada nos robôs do Nelogica ProfitChart), para **VS Code** e **Vim**. A gramática é derivada da linguagem Pascal (da qual o NTSL deriva) e adiciona:

- A palavra-chave `Input`, que marca a área de declaração de parâmetros de entrada de uma estratégia.
- Os nomes dos parâmetros declarados dentro da seção `Input`.
- Mais de 400 funções de biblioteca do NTSL (backtesting, calendário, candlestick, gráficas, indicadores, livro de ofertas, matemáticas, opções, screening, usuário e utilitárias), extraídas do Manual NTSL.

## VS Code

### Pré-requisitos

- [Visual Studio Code](https://code.visualstudio.com/) 1.75 ou superior.
- Extensão [Pascal Language Basics](https://marketplace.visualstudio.com/items?itemName=AnsonYeung.pascal-language-basics) (`AnsonYeung.pascal-language-basics`), da qual esta extensão herda a gramática base. Se não estiver instalada, o VS Code oferece para instalá-la automaticamente junto.

### Instalação

Esta extensão ainda não está publicada na Marketplace. A forma de instalar é via arquivo `.vsix`:

1. Baixe o arquivo `ntsl-language-0.0.1.vsix` (disponível nos [Releases](https://github.com/alcindogandhi/ntsl-language/releases) ou gerado a partir do código-fonte, veja abaixo).
2. No VS Code, abra a paleta de comandos (`Ctrl+Shift+P`) e rode `Extensions: Install from VSIX...`.
3. Selecione o arquivo baixado.

Alternativamente, pelo terminal:

```bash
code --install-extension ntsl-language-0.0.1.vsix
```

Depois de instalada, arquivos com extensão `.ntsl` passam a ser reconhecidos automaticamente como linguagem NTSL.

### Gerando o .vsix a partir do código-fonte

```bash
git clone https://github.com/alcindogandhi/ntsl-language.git
cd ntsl-language
npx @vscode/vsce package
```

O pacote `ntsl-language-0.0.1.vsix` será criado no diretório atual.

### Customizando a cor dos parâmetros de entrada (opcional)

Os nomes declarados na seção `Input` recebem o escopo `variable.other.constant.ntsl`, mas a extensão não define uma cor própria para ele — a cor fica a critério do tema ativo. Para forçar uma cor específica (como `#68a8d8`), adicione ao seu `settings.json` do VS Code:

```jsonc
"editor.tokenColorCustomizations": {
    "textMateRules": [
        {
            "scope": "variable.other.constant.ntsl",
            "settings": {
                "foreground": "#68a8d8"
            }
        }
    ]
}
```

## Vim

### Pré-requisitos

- Vim 8 ou superior, com o arquivo de sintaxe `pascal.vim` embutido (já vem por padrão na maioria das distribuições).

### Instalação

Os arquivos ficam em `vim/` no repositório, organizados no formato de "pacote" nativo do Vim 8+ (carregado automaticamente, sem precisar de gerenciador de plugins):

```bash
git clone https://github.com/alcindogandhi/ntsl-language.git
mkdir -p ~/.vim/pack/ntsl/start
cp -r ntsl-language/vim ~/.vim/pack/ntsl/start/ntsl-language
```

Reabra o Vim. Arquivos `.ntsl` passam a ser reconhecidos automaticamente (`:set filetype?` deve mostrar `ntsl`).

Se você usa um gerenciador de plugins (vim-plug, packer, lazy.nvim, etc.), aponte-o para a pasta `vim/` do repositório como se fosse um plugin comum.

### Customizando a cor dos parâmetros de entrada (opcional)

Os nomes declarados na seção `Input` usam o grupo de destaque `ntslInputParam`, definido com a cor `#68a8d8` diretamente em `vim/syntax/ntsl.vim`. Para usar outra cor, adicione ao seu `.vimrc`, depois de carregar a sintaxe:

```vim
autocmd FileType ntsl highlight ntslInputParam guifg=#68a8d8 ctermfg=68
```

## Licença

[MIT](./LICENSE)
