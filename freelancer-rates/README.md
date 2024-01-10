# Freelancer Rates
Welcome to Freelancer Rates on Exercism's Elixir Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## Integers
There are two different kinds of numbers in Elixir - integers and floats.

Integers are whole numbers.

```elixir
integer = 3
# => 3
```

## Floating Point Numbers
Floats are numbers with one or more digits behind the decimal separator. They use the 64-bit double precision floating-point format.

```elixir
float = 3.45
# => 3.45
```

### Working with numbers
In the [`Integer`][integer-functions] and [`Float`][float-functions] modules you can find some useful functions for working with those types. Basic arithmetic operators are defined in the [`Kernel`][kernel-arithmetic-operators] module.

### Conversion
Integers and floats can be mixed together in a single arithmetic expression. Using a float in an expression ensures the result will be a float too.

```elixir
2 * 3
# => 6

2 * 3.0
# => 6.0
```

However, when doing division, the result will always be a float, even if only integers are used.

```elixir
6 / 2
# => 3.0
```

To convert a float to an integer, you can discard the decimal part with [`trunc/1`][trunc-1].

[integer-functions]: https://hexdocs.pm/elixir/Integer.html#functions
[float-functions]: https://hexdocs.pm/elixir/Float.html#functions
[kernel-arithmetic-operators]: https://hexdocs.pm/elixir/Kernel.html#*/2
[trunc-1]: https://hexdocs.pm/elixir/Kernel.html#trunc/1

## Instructions
In this exercise you'll be writing code to help a freelancer communicate with a project manager by providing a few utilities to quickly calculate daily and
monthly rates, optionally with a given discount.

We first establish a few rules between the freelancer and the project manager:

- The daily rate is 8 times the hourly rate.
- A month has 22 billable days.

Sometimes, the freelancer is offering to apply a discount on their daily rate (for example for their most loyal customers or for non-for-profit customers).

Discounts are modeled as fractional numbers representing percentage, for example `25.0` (25%).

## 1. Calculate the daily rate given an hourly rate

Implement a function to calculate the daily rate given an hourly rate:

```elixir
FreelancerRates.daily_rate(60)
# => 480.0
```

The returned daily rate should be a float.

## 2. Calculate a discounted price

Implement a function to calculate the price after a discount.

```elixir
FreelancerRates.apply_discount(150, 10)
# => 135.0
```

The returned value should always be a float, not rounded in any way.

## 3. Calculate the monthly rate, given an hourly rate and a discount

Implement a function to calculate the monthly rate, and apply a discount:

```elixir
FreelancerRates.monthly_rate(77, 10.5)
# => 12130
```

The returned monthly rate should be rounded up (take the ceiling) to the nearest integer.

## 4. Calculate the number of workdays given a budget, hourly rate and discount

Implement a function that takes a budget, an hourly rate, and a discount, and calculates how many days of work that covers.

```elixir
FreelancerRates.days_in_budget(20000, 80, 11.0)
# => 35.1
```

The returned number of days should be rounded down (take the floor) to one decimal place.

## Source

### Created by

- @angelikatyborska

### Contributed to by

- @neenjaw

#PT-BR
# Taxas de Freelancer

Bem-vindo às Taxas de Freelancer na trilha do Exercism em Elixir.
Se você precisar de ajuda para executar os testes ou enviar seu código, confira `HELP.md`.
Se você ficar preso no exercício, confira `HINTS.md`, mas tente resolvê-lo sem usá-los primeiro :)

## Introdução

## Inteiros

Existem dois tipos diferentes de números em Elixir - inteiros e floats.

Inteiros são números inteiros.

```elixir
integer = 3
# => 3
```

## Números de ponto flutuante

Floats são números com um ou mais dígitos após o separador decimal. Eles usam o formato de ponto flutuante de precisão dupla de 64 bits.

```elixir
float = 3.45
# => 3.45
```

### Trabalhando com números

Nos módulos [`Integer`][integer-functions] e [`Float`][float-functions] você pode encontrar algumas funções úteis para trabalhar com esses tipos. Os operadores aritméticos básicos são definidos no módulo [`Kernel`][kernel-arithmetic-operators].

### Conversão

Inteiros e floats podem ser misturados em uma única expressão aritmética. Usar um float em uma expressão garante que o resultado também será um float.

```elixir
2 * 3
# => 6

2 * 3.0
# => 6.0
```

No entanto, ao fazer a divisão, o resultado sempre será um float, mesmo que apenas inteiros sejam usados.

```elixir
6 / 2
# => 3.0
```

Para converter um float em um inteiro, você pode descartar a parte decimal com [`trunc/1`][trunc-1].

[integer-functions]: https://hexdocs.pm/elixir/Integer.html#functions
[float-functions]: https://hexdocs.pm/elixir/Float.html#functions
[kernel-arithmetic-operators]: https://hexdocs.pm/elixir/Kernel.html#*/2
[trunc-1]: https://hexdocs.pm/elixir/Kernel.html#trunc/1

## Instruções

Neste exercício, você escreverá código para ajudar um freelancer a se comunicar com um gerente de projeto, fornecendo algumas utilidades para calcular rapidamente as taxas diárias e mensais, opcionalmente com um desconto dado.

Primeiro, estabelecemos algumas regras entre o freelancer e o gerente de projeto:

- A taxa diária é 8 vezes a taxa horária.
- Um mês tem 22 dias úteis.

Às vezes, o freelancer está oferecendo para aplicar um desconto em sua taxa diária (por exemplo, para seus clientes mais leais ou para clientes sem fins lucrativos).

Os descontos são modelados como números fracionários que representam a porcentagem, por exemplo `25.0` (25%).

## 1. Calcule a taxa diária dada uma taxa horária

Implemente uma função para calcular a taxa diária dada uma taxa horária:

```elixir
FreelancerRates.daily_rate(60)
# => 480.0
```

A taxa diária retornada deve ser um float.

## 2. Calcule um preço com desconto

Implemente uma função para calcular o preço após um desconto.

```elixir
FreelancerRates.apply_discount(150, 10)
# => 135.0
```

O valor retornado deve sempre ser um float, não arredondado de forma alguma.

## 3. Calcule a taxa mensal, dada uma taxa horária e um desconto

Implemente uma função para calcular a taxa mensal e aplicar um desconto:

```elixir
FreelancerRates.monthly_rate(77, 10.5)
# => 12130
```

A taxa mensal retornada deve ser arredondada para cima (pegue o teto) para o inteiro mais próximo.

## 4. Calcule o número de dias úteis dado um orçamento, taxa horária e desconto

Implemente uma função que recebe um orçamento, uma taxa horária e um desconto, e calcula quantos dias de trabalho isso cobre.

```elixir
FreelancerRates.days_in_budget(20000, 80, 11.0)
# => 35.1
```
    