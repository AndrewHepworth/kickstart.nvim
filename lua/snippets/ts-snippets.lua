local luasnip = require 'luasnip'
local text = luasnip.text_node
local snip = luasnip.snippet
local insert = luasnip.insert_node
local indent = luasnip.indent_snippet_node

luasnip.add_snippets( nil, {
    typescript = {
        snip({
            trig = "jestTest",
            name = "Typescript Jest Snippet",
            desc = "Snippet for the ts module jest wrt test func"},
            {
                text ("test(`" ) ,
                insert(1, "testName"),
                text ({" `, async () => {", "" }),
                indent ( 2, { insert( 3, "") }, " " ),
                text({ "", "})" }),
            }),

    }

})
