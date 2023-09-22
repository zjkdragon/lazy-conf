return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[
                              ==^                 
                            ***o++++~             
                          *****o++++++            
              .i-      .*******o++++++            
             iiiiii  ;*******. ^++++++            
               =iiiiii****=    ^++++++            
                 iiiiiii-      ^++++++            
              `****oiiiiiii    ^++++++            
             *****=   iiiiiii+ ^++++++            
               o        iiiiiii=++++++            
                          =iiii=++++++            
                            :ii=+++:              
                              ^_                  
        ]]
    --  local logo = [[
    --                          _
    -- __   _____  ___ ___   __| | ___
    -- \ \ / / __|/ __/ _ \ / _` |/ _ \
    --  \ V /\__ \ (_| (_) | (_| |  __/
    --   \_/ |___/\___\___/ \__,_|\___|
    --            [ @lazyvim ]
    --      ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}
