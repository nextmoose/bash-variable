  {
      inputs =
        {
          flake-utils.url = "github:numtide/flake-utils" ;
        } ;
      outputs =
        { self , flake-utils } :
          flake-utils.lib.eachDefaultSystem
          (
            system :
              {
                lib = expression : if builtins.typeOf expression == "string" then builtins.concatStringsSep "" [ "$" "{" expression "}" ] else builtins.throw "54b4afa8-ee33-4adc-bbdb-20b23b24a661" ;
              }
      ) ;
    }
