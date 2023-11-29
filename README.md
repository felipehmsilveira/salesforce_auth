# SalesforceAuth

Uma biblioteca para você se autenticar com o Salesforce.
A library for you to authenticate with Salesforce.

## Installation

GEMFILE:
gem 'salesforce_auth', '~> 0.0.1'

Terminal:
gem install salesforce_auth

## Usage

myAuthVariable = Auth.new
myResponseVariable = myAuthVariable.getAccessToken(
    'yourUserName',
    'yourPassword',
    'yourToken',
    'yourClientId',
    'yourClientSecret'
)

## License

A gem está disponível como código aberto sob os termos da [Licença MIT]
The gem is available as open source under the terms of the [MIT License]

(https://opensource.org/licenses/MIT).

## Code of Conduct

Espera-se que todos que interagem nas bases de código, rastreadores de problemas, salas de bate-papo e listas de e-mail do projeto SalesforceAuth sigam o [código de conduta].
Everyone interacting in the SalesforceAuth project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct].

(https://github.com/felipehmsilveira/salesforce_auth/blob/master/CODE_OF_CONDUCT.md).
