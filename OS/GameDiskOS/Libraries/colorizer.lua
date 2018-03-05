local colorizer = {}

colorizer.defaultColor = 7
colorizer.theme = {}

function colorizer:setTheme(theme)
  self.theme = theme
end

function colorizer:applyColor(name)
  if self.theme[name] then return self.theme[name] else return self.defaultColor end
end

function colorizer:colorizeLine(line)
  local line = line
  for i, v in ipairs(line) do
    if i % 2 ~= 0 then
      line[i] = self:applyColor(line[i])
    end
  end
  return line
end

function colorizer:colorizeLines(lines)
  local colorizedLines = {}
  for i, line in ipairs(lines) do
    table.insert(colorizedLines, self:colorize_line(line))
  end
  return colorizedLines
end

return colorizer