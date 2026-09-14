function fetch_manifest_code_disabled(gid)
    local body, st = http_get("https://manifest.manifestdex.com/" .. gid)
    if st == 200 and body and body:match("^%d+$") then
        return body
    end
    return nil
end
