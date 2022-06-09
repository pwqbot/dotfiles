local util = require("tests.test_util")

describe("treesitter cpp", function()
  it("parses all symbols correctly", function()
    util.test_file_symbols("treesitter", "./tests/treesitter/cpp_test.cpp", {
      {
        kind = "Function",
        name = "fn_1",
        level = 0,
        lnum = 1,
        col = 0,
        end_lnum = 1,
        end_col = 14,
      },
      {
        kind = "Struct",
        name = "st_1",
        level = 0,
        lnum = 3,
        col = 0,
        end_lnum = 3,
        end_col = 14,
      },
      {
        kind = "Struct",
        name = "st_2",
        level = 0,
        lnum = 5,
        col = 0,
        end_lnum = 6,
        end_col = 1,
      },
      {
        kind = "Enum",
        name = "en_1",
        level = 0,
        lnum = 8,
        col = 0,
        end_lnum = 8,
        end_col = 12,
      },
      {
        kind = "Class",
        name = "cl_1",
        level = 0,
        lnum = 10,
        col = 0,
        end_lnum = 14,
        end_col = 1,
        children = {
          {
            kind = "Function",
            name = "~cl_1",
            level = 1,
            lnum = 11,
            col = 2,
            end_lnum = 11,
            end_col = 12,
          },
          {
            kind = "Function",
            name = "meth_1",
            level = 1,
            lnum = 13,
            col = 2,
            end_lnum = 13,
            end_col = 18,
          },
        },
      },
      {
        kind = "Function",
        name = "A::bar",
        level = 0,
        lnum = 16,
        col = 0,
        end_lnum = 16,
        end_col = 16,
      },
      {
        kind = "Function",
        name = "fn_2",
        level = 0,
        lnum = 18,
        col = 0,
        end_lnum = 18,
        end_col = 14,
      },
      {
        kind = "Function",
        name = "fn_3",
        level = 0,
        lnum = 20,
        col = 0,
        end_lnum = 20,
        end_col = 15,
      },
      {
        kind = "Function",
        name = "operator <",
        level = 0,
        lnum = 22,
        col = 0,
        end_lnum = 22,
        end_col = 29,
      },
    })
  end)
end)