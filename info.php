<?php

$version = curl_version();
$ssl_supported = ($version['features'] & CURL_VERSION_SSL);

print_r(curl_version());

phpinfo();

?>