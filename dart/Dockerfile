FROM google/dart:2.6.0

COPY ./ ./

{{#env}}
  ENV {{{.}}}
{{/#env}}

RUN pub get

{{#command}}
  CMD {{{.}}}
{{/command}}
