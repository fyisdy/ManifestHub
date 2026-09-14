function fetch_manifest_code(gid)
    local body, st = http_get("https://procurement-viii-sara-lang.trycloudflare.com/manifest/" .. gid)
    if st == 200 and body and body:match("^%d+$") then
        return body
    end
    return nil
end