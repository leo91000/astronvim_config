-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- Overrides
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        "      ___       ___           ___                     ",
        "     /\\__\\     /\\  \\         /\\  \\                    ",
        "    /:/  /    /::\\  \\       /::\\  \\                   ",
        "   /:/  /    /:/\\:\\  \\     /:/\\:\\  \\                  ",
        "  /:/  /    /::\\~\\:\\  \\   /:/  \\:\\  \\                 ",
        " /:/__/    /:/\\:\\ \\:\\__\\ /:/__/ \\:\\__\\                ",
        " \\:\\  \\    \\:\\~\\:\\ \\/__/ \\:\\  \\ /:/  /                ",
        "  \\:\\  \\    \\:\\ \\:\\__\\    \\:\\  /:/  /                 ",
        "   \\:\\  \\    \\:\\ \\/__/     \\:\\/:/  /                  ",
        "    \\:\\__\\    \\:\\__\\        \\::/  /                   ",
        "     \\/__/     \\/__/         \\/__/                    ",
        "      ___           ___                       ___     ",
        "     /\\__\\         /\\__\\          ___        /\\__\\    ",
        "    /::|  |       /:/  /         /\\  \\      /::|  |   ",
        "   /:|:|  |      /:/  /          \\:\\  \\    /:|:|  |   ",
        "  /:/|:|  |__   /:/__/  ___      /::\\__\\  /:/|:|__|__ ",
        " /:/ |:| /\\__\\  |:|  | /\\__\\  __/:/\\/__/ /:/ |::::\\__\\",
        " \\/__|:|/:/  /  |:|  |/:/  / /\\/:/  /    \\/__/~~/:/  /",
        "     |:/:/  /   |:|__/:/  /  \\::/__/           /:/  / ",
        "     |::/  /     \\::::/__/    \\:\\__\\          /:/  /  ",
        "     /:/  /       ~~~~         \\/__/         /:/  /   ",
        "     \\/__/                                   \\/__/    ",
      }
      return opts
    end,
  },
}
