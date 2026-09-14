function fetch_manifest_code_ex(app_id, depot_id, gid)
    local url = "https://20770407.xyz/manifest/" .. depot_id .. "/" .. gid
    local body, st = http_get(url)
    if st == 200 and body and body:match("^%d+$") then
        return body
    end
    return nil
end
