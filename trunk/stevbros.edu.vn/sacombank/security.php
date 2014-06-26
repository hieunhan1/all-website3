<?php

define ('HMAC_SHA256', 'sha256');
define ('SECRET_KEY', '8c4be9f3ca4647b1aeba156b96ae6c2e76c1f023217442bb82a92a749feff1844e3eab97b68e48b0a8a1bdf941b98fdb3277faf5483d49019ea5b43ad846b352d3a7c327a4344520b8bfe507869cfe76365926d6690f46168b33840f6d919f19d217562f0a104270ba9f41bae7e2dad42ccfe90e587e431ca2b1b57fbe5c0c80');

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
