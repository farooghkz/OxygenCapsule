--[[ 
Oxygen Capsule mod for Minetest
Copyright (C) 2017,2018 Farooq Karimi Zadeh <farooghkarimizadeh at gmail dot com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
--]]

dofile(minetest.get_modpath("oxygencapsule") .. "/oxygen_compressor.lua")
dofile(minetest.get_modpath("oxygencapsule") .. "/crafting.lua")
minetest.register_craftitem("oxygencapsule:small_capsule_full", {
    description = "Oxygen Capsule(full)",
    inventory_image = "oxygencapsule_small.png",
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
        if user:get_breath() < 10 then
            user:set_breath(user:get_breath() + 5)
            itemstack:replace("oxygencapsule:small_capsule_half")
            return itemstack
        end
    end
})
minetest.register_craftitem("oxygencapsule:small_capsule_half", {
    description = "Oxygen Capsule(half)",
    inventory_image = "oxygencapsule_small.png",
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
        if user:get_breath() < 10 then
            user:set_breath(user:get_breath() + 5)
            itemstack:replace("oxygencapsule:small_capsule_empty")
            return itemstack
        end

    end
})
minetest.register_craftitem("oxygencapsule:small_capsule_empty", {
    description = "Oxygen Capsule(empty)",
    inventory_image = "oxygencapsule_small.png",
    stack_max = 1
})

