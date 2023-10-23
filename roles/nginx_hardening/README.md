# devsec.nginx_hardening

![devsec.nginx_hardening](https://github.com/dev-sec/ansible-os-hardening/workflows/devsec.nginx_hardening/badge.svg)

## Description

This role provides secure nginx configuration. It is intended to be compliant with the [DevSec Nginx Baseline](https://github.com/dev-sec/nginx-baseline).

It works with the following nginx-roles, including, but not limited to:

- [nginxinc.nginx](https://galaxy.ansible.com/ui/standalone/roles/nginxinc/nginx/)
- [geerlinggux.nginx](https://galaxy.ansible.com/ui/standalone/roles/geerlingguy/nginx/)
- [jdauphant.nginx](https://galaxy.ansible.com/ui/standalone/roles/jdauphant/nginx/)

**NOTE: This role does not work with nginx 1.0.15 or older! Please use the latest version from the official nginx repositories!**

<!-- BEGIN_ANSIBLE_DOCS -->

## Supported Operating Systems

- EL
  - 7, 8, 9
- Ubuntu
  - bionic, focal, jammy
- Debian
  - buster, bullseye
- Amazon

## Role Variables

| Variable | Default | Description | Type | Required |
| -------- | ------- | ----------- | ---- | -------- |
| `nginx_add_header` | ["X-Frame-Options SAMEORIGIN", "X-Content-Type-Options nosniff", "X-XSS-Protection "1; mode=block"", "Content-Security-Policy \"script-src 'self'; object-src 'self'\""] | Adds the specified field to a response header provided that the response code equals 200, 201, 204, 206, 301, 302, 303, 304, or 307. See [nginx_add_header](http://nginx.org/en/docs/http/ngx_http_headers_module.html#add_header) | list | n |
| `nginx_client_body_buffer_size` | 1k | Sets buffer size for reading client request body. In case the request body is larger than the buffer, the whole body or only its part is written to a temporary file. See [nginx_client_body_buffer_size](http://nginx.org/en/docs/http/ngx_http_core_module.html#client_body_buffer_size) | str | n |
| `nginx_client_body_timeout` | 10 | Defines a timeout for reading client request body. See [nginx_client_body_timeout](http://nginx.org/en/docs/http/ngx_http_core_module.html#client_body_timeout) | int | n |
| `nginx_client_header_buffer_size` | 1k | Sets buffer size for reading client request header. For most requests, a buffer of 1K bytes is enough. See [nginx_client_header_buffer_size](http://nginx.org/en/docs/http/ngx_http_core_module.html#client | str | n |
| `nginx_client_header_timeout` | 10 | Defines a timeout for reading client request header. See [nginx_client_header_timeout](http://nginx.org/en/docs/http/ngx_http_core_module.html#client_header_timeout) | int | n |
| `nginx_client_max_body_size` | 1k | Sets the maximum allowed size of the client request body, specified in the "Content-Length" request header field. If the size in a request exceeds the configured value, the 413 (Request Entity Too Large) error is returned to the client. See [nginx_client_max_body_size](http://nginx.org/en/docs/http/ngx_http_core_module.html#client_max_body_size) | str | n |
| `nginx_configuration_dir` | /etc/nginx | The main location for all nginx configuration files | str | n |
| `nginx_configuration_hardening_dir` | /etc/nginx | The location for the nginx hardening configuration file (Could be different e.g. when used in jails) | str | n |
| `nginx_dh_size` | 2048 | Specifies the length of DH parameters for EDH ciphers. See [nginx_dh_size](http://nginx.org/en/docs/http/ngx_http_ssl_module.html#ssl_dhparam) | int | n |
| `nginx_keepalive_timeout` | 5 5 | The first parameter sets a timeout during which a keep-alive client connection will stay open on the server side. The zero value disables keep-alive client connections. The optional second parameter sets a value in the "Keep-Alive timeout=time" response header field. See [nginx_keepalive_timeout](http://nginx.org/en/docs/http/ngx_http_core_module.html#keepalive_timeout) | str | n |
| `nginx_large_client_header_buffers` | 2 1k | Sets the maximum number and size of buffers used for reading large client request header. See [nginx_large_client_header_buffers](http://nginx.org/en/docs/http/ngx_http_core_module.html#large_client_header_buffers) | str | n |
| `nginx_limit_conn` | default 5 | Sets the shared memory zone and the maximum allowed number of connections for a given key value. See [nginx_limit_conn](http://nginx.org/en/docs/http/ngx_http_limit_conn_module.html#limit_conn) | str | n |
| `nginx_limit_conn_zone` | $binary_remote_addr zone=default:10m | Sets parameters for a shared memory zone that will keep states for various keys. See [nginx_limit_conn_zone](http://nginx.org/en/docs/http/ngx_http_limit_conn_module.html#limit_conn_zone) | str | n |
| `nginx_owner_group` | root | The owner group of the nginx configuration files | str | n |
| `nginx_owner_user` | root | The owner user of the nginx configuration files | str | n |
| `nginx_remove_default_site` | true | Disables the default site. Set to false to enable the default site in nginx. | bool | n |
| `nginx_send_timeout` | 10 | Sets a timeout for transmitting a response to the client. See [nginx_send_timeout](http://nginx.org/en/docs/http/ngx_http_core_module.html#send_timeout) | int | n |
| `nginx_server_tokens` | off | Disables emitting nginx version in error messages and in the "Server" response header field. Set to on to enable the nginx version in error messages and "Server" response header. See [nginx_server_tokens](http://nginx.org/en/docs/http/ngx_http_core_module.html#server_tokens) | str | n |
| `nginx_ssl_ciphers` | ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA256 | Specifies the TLS ciphers which should be used. See [nginx_ssl_ciphers](http://nginx.org/en/docs/http/ngx_http_ssl_module.html#ssl_ciphers) | str | n |
| `nginx_ssl_prefer_server_ciphers` | on | Specifies that server ciphers should be preferred over client ciphers when using the TLS protocols. Set to false to disable it. See [nginx_ssl_prefer_server_ciphers](http://nginx.org/en/docs/http/ngx_http_ssl_module.html#ssl_prefer_server_ciphers) | str | n |
| `nginx_ssl_protocols` | TLSv1.2 | Specifies the SSL protocol which should be used. See [nginx_ssl_protocols](http://nginx.org/en/docs/http/ngx_http_ssl_module.html#ssl_protocols) | str | n |

## Dependencies

None.

## Example Playbook

```
- hosts: all
  roles:
    - name: devsec.hardening.nginx_hardening
```

<!-- END_ANSIBLE_DOCS -->
