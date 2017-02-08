files {
    "process.cpp",
    "process.hpp",
}
unix = {
    ["bsd"] = true,
    ["linux"] = true,
    ["macosx"] = true,
    ["solaris"] = true,
}
windows = {
    ["windows"] = true,
    ["xbox360"] = true,
}

if unix[os.get()] then
    files { "process_unix.cpp" }
end
if windows[os.get()] then
    files { "process_win.cpp" }
end