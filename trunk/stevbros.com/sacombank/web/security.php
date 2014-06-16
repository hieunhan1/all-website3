<?php

define ('HMAC_SHA256', 'sha256');
define ('SECRET_KEY', '3c711bf8e21244159a4b6e2b93d662a7333658c3b71740a4910c6e7183abc0d03b0b711fbf1549bf8991a5af8cea2db809a215ffde8b4bd29bbb5b50c27c08305e2b280d0aef4b20b4c5cf99906979abe87c20ef10274bb9bae21ea072405481ea8842b2b98c4105a0f1413bedde89e8a0cbb93e27ff49899d9d9e234861f9a1');

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
