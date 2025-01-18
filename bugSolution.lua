local function fooSorted(t)
  local keys = {}
  for k in pairs(t) do
    table.insert(keys, k)
  end
  table.sort(keys)

  for _, k in ipairs(keys) do
    local v = t[k]
    if type(v) == "table" then
      fooSorted(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
fooSorted(t)