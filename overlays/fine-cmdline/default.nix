{ inputs, ... }:

_final: prev: {

  vimPlugins = prev.vimPlugins // {
    fine-cmdline = prev.vimUtils.buildVimPlugin {
      name = "fine-cmdline";
      src = inputs.plugin-fine-cmdline;
    };
  };

}
