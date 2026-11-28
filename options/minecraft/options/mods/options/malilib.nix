{lib, pkgs, config, ...}:
{
    malilib = {
        package = pkgs.prismnix.malilib;

        options = {
            settings = lib.prismnix.minecraft.mods
                .mkRawConfigOptions
                "malilib";
            descriptions = lib.prismnix.minecraft.mods.mkRawConfigDescriptions {
              "1" = {
                description = "6";
                default = true;
                type = "boolean";
              };

              "2" = {
                description = "5.";
                type = "enum";
                values = [ "1" "2" ];
                default = "1";
              };
            };
        };
        config = lib.prismnix.minecraft.mods.mkRawConfigFile
            config.malilib.settings
            {
                filename = "malilib.json";
                format = "json";
            };
    };
}
