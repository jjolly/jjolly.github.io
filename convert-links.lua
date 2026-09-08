function Link(el)
  local target = el.target
  
  -- Check if target ends with .md or .md#
  if target:match("%.md$") or target:match("%.md#") then
    local srcdir = os.getenv("SRCDIR") or "markdown_src"
    local htmldir = os.getenv("HTMLDIR") or "pages"
    local current_file = os.getenv("PANDOC_CURRENT_FILE") or ""
    
    -- Remove #anchor for file existence check
    local target_no_anchor = target:gsub("#.*$", "")
    
    -- Handle relative paths and check if file exists in SRCDIR
    local source_file = nil
    
    -- Check if it's a file in SRCDIR (no directory prefix)
    if not target_no_anchor:match("/") and not target_no_anchor:match("%.%.") then
      -- Simple file name like "page.md"
      source_file = srcdir .. "/" .. target_no_anchor
    elseif target_no_anchor:match("%.%.") then
      -- Has parent directory references (../page.md)
      -- For now, check if removing the ../ prefix gives us a file in SRCDIR
      local relative = target_no_anchor:gsub("%.%./", "")
      if relative:find("/") then
        -- Complex relative path, skip conversion to be safe
        return el
      else
        source_file = srcdir .. "/" .. relative
      end
    else
      -- Has subdirectory (subdir/page.md)
      source_file = srcdir .. "/" .. target_no_anchor
    end
    
    -- Check if the source file exists
    local f = io.open(source_file, "r")
    if f then
      f:close()
      -- File exists in SRCDIR, convert .md to .html
      local new_target = target:gsub("%.md(#?)", ".html%1")
      
      -- If building index.html (at root), prefix links with htmldir
      if current_file == "index.md" and not target_no_anchor:match("%.%.") then
        -- Simple relative link from index.html, add htmldir prefix
        new_target = htmldir .. "/" .. new_target
      end
      
      el.target = new_target
    end
    -- If file doesn't exist, leave the link as-is (external markdown file)
  end
  
  return el
end
