use Mix.Config

config :pooler, :pools,
[
    [ name: :riaklocal,
      group: :riak,
      max_count: 10,
      init_count: 5,
      start_mfa: {Riak.Connection, :start_link, ['localhost', 8087]}
    ]
]
config :pooler, pools:
  [
    [
      name: :riaklocal,
      group: :riak,
      max_count: 10,
      init_count: 5,
      start_mfa: { Riak.Connection, :start_link, [] }
    ]
  ]
