type test_unit = unit[@@deriving irmin]
type test_bool = bool[@@deriving irmin]
type test_char = char[@@deriving irmin]
type test_int32 = int32[@@deriving irmin]
type test_int64 = int64[@@deriving irmin]
type test_float = float[@@deriving irmin]
type test_string = string[@@deriving irmin]
type test_list1 = string list[@@deriving irmin]
type test_list2 = int32 list list list[@@deriving irmin]
type test_array = bool array[@@deriving irmin]
type test_option = unit option[@@deriving irmin]
type test_pair = (string) * int32[@@deriving irmin]
type test_triple = string * int32 * bool[@@deriving irmin]
type test_result = (int32, string) result[@@deriving irmin]
type test_variant1 = A [@@deriving irmin]
type test_variant2 = A2 of int64 [@@deriving irmin]
type test_variant3 = A3 of string * test_variant2 [@@deriving irmin]
type test_variant4 =
  | A4
  | B4
  | C4 [@@deriving irmin]
type test_variant5 =
  | A5
  | B5 of string * test_variant4
  | C5 of int32 * string * unit [@@deriving irmin]
type test_variant6 =
  | Nil
  | Cons of string * test_variant5 [@@deriving irmin]