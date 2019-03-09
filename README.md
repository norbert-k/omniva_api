# OmnivaApi

## Example
```elixir
iex(1)> OmnivaApi.get_pickup_points()
{:ok,
 [
   %OmnivaApi.Models.PickupPoint{
     a0_name: "EE",
     a1_name: "Viljandi maakond",
     a2_name: "Mulgi vald",
     a3_name: "Abja-Paluoja linn",
     a4_name: "NULL",
     a5_name: "P├ñrnu maantee",
     a6_name: "NULL",
     a7_name: "21",
     a8_name: "NULL",
     comment_eng: "",
     comment_est: "",
     comment_lav: "",
     comment_lit: "",
     comment_rus: "",
     modified: "2019-02-26T16:38:11.000+02:00",
     name: "Abja-Paluoja postipunkt",
     service_hours: "E-R 9.00-18.00; L 9:00-14:00; P suletud",
     temp_service_hours: "1.03 avatud: 9:00-16:00",
     temp_service_hours_2: "NULL",
     temp_service_hours_2_until: "NULL",
     temp_service_hours_until: "01.03.2019",
     type: "1",
     x_coordinate: "25.353927148133",
     y_coordinate: "58.1261506146408",
     zip: "69494"
   },
   %OmnivaApi.Models.PickupPoint{
     a0_name: "EE",
     a1_name: "J├Ágeva maakond",
     a2_name: "P├Áltsamaa vald",
     a3_name: "Adavere alevik",
     a4_name: "NULL",
     a5_name: "Tallinna maantee",
     a6_name: "NULL",
     a7_name: "6",
     a8_name: "NULL",
     comment_eng: "",
     comment_est: "",
     comment_lav: "",
     comment_lit: "",
     comment_rus: "",
     modified: "2018-05-14T10:14:59.000+03:00",
     name: "Adavere postipunkt",
     service_hours: "E-P 9:00-19:00",
     temp_service_hours: "NULL",
     temp_service_hours_2: "NULL",
     temp_service_hours_2_until: "NULL",
     temp_service_hours_until: "NULL",
     type: "1",
     x_coordinate: "25.8996412135384",
     y_coordinate: "58.7059373138417",
     zip: "48094"
   },
   %OmnivaApi.Models.PickupPoint{
     a0_name: "EE",
     a1_name: "Harju maakond",
     a2_name: "Anija vald",
     a3_name: "Aegviidu alev",
     a4_name: "NULL",
     a5_name: "Piibe maantee",
     a6_name: "NULL",
     a7_name: "8",
     a8_name: "NULL",
     comment_eng: "",
     comment_est: "",
     comment_lav: "",
     comment_lit: "",
     comment_rus: "",
     modified: "2019-01-28T16:16:14.000+02:00",
     name: "Aegviidu postipunkt",
     service_hours: "E-L 10:00-19:00; P 10:00-18:00",
     temp_service_hours: "NULL",
     temp_service_hours_2: "NULL",
     temp_service_hours_2_until: "NULL",
     temp_service_hours_until: "01.01.2019",
     type: "1",
     x_coordinate: "25.6065930091524",
     y_coordinate: "59.2884511875073",
     zip: "74594"
   }
 ]}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `omniva_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:omniva_api, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/omniva_api](https://hexdocs.pm/omniva_api).

