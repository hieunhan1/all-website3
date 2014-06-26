<?php
define ('HMAC_SHA256', 'sha256');
define ('SECRET_KEY', '52a982a85b4342ca9f7df1115e61f3fbad41694490fc416f825733867911f7b1b32538c4fdd443fdbe1247fcf53a39bd4b3381cccf7040e0b3dbf5d297a710ddd245ff3ee86946439ab7e67aa251e7490507761201be41298d7007593143c32e4ec43a4df4374f1f8caa250b8b6b319cc7200f29af86429b8f19566343147bd9');

function sign ($params) {
  return signData(buildDataToSign($params), SECRET_KEY);
}

function signData($data, $secretKey) {
    return base64_encode(hash_hmac('sha256', $data, $secretKey, true));
}

function buildDataToSign($params) {
        $signedFieldNames = explode(",",$params["signed_field_names"]);
        foreach ($signedFieldNames as &$field) {
           $dataToSign[] = $field . "=" . $params[$field];
        }
        return commaSeparate($dataToSign);
}

function commaSeparate ($dataToSign) {
    return implode(",",$dataToSign);
}

?>
