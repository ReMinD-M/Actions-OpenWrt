module("luci.controller.user.index", package.seeall)

function index()
	entry({"user"}, call("action_index"), _("TKIDC 用户管理后台"), 90)
end

function action_index()
	local tpl = [[
		<!DOCTYPE html>
		<html>
		<head>
			<meta charset="utf-8">
			<title>TKIDC 用户管理后台</title>
		</head>
		<body style="font-family:Arial;text-align:center;margin-top:10%;">
			<h1>欢迎使用 TKIDC 用户管理后台</h1>
			<p>默认 WiFi：tkidc / tkidc</p>
			<p>请尽快修改 WiFi 名称与密码以保障网络安全。</p>
			<a href="/cgi-bin/luci/admin/network/wireless" style="font-size:18px;color:blue;">点此进入 WiFi 设置</a>
		</body>
		</html>
	]]
	luci.http.prepare_content("text/html")
	luci.http.write(tpl)
end
