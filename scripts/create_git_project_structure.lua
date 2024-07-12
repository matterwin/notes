local project_dir = "./"

local dirs = {
  project_dir .. ".git",
  project_dir .. "bin",
  project_dir .. "build",
  project_dir .. "docs",
  project_dir .. "include",
  project_dir .. "lib",
  project_dir .. "src",
  project_dir .. "tests"
}

local files = {
  project_dir .. "README.md",
  project_dir .. "LICENSE",
  project_dir .. ".gitignore"
}

local function create_directories(dirs)
  for _, dir in ipairs(dirs) do 
    os.execute("mkdir -p " .. dir)
  end 
end 

local function create_files(files)
  for _, file in ipairs(files) do 
    os.execute("touch " .. file)
  end 
end 

create_directories(dirs)
create_files(files)

print("Project structure generated -=-=-=-=-=")
