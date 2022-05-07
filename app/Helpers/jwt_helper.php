<?php

use CodeIgniter\HTTP\ResponseInterface;
use Config\Services;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

function detailJwt($header)
{
    $key = getenv('JWT_SECRET');
    $token = null;

    if (!empty($header)) {
        if (preg_match('/bearer\s(\S+)/i', $header, $matches)) {
            $token = $matches[1];
        }
    }

    if (is_null($token) || empty($token)) {
        return Services::response()
            ->setJSON(
                [
                    'status'   => 401,
                    'error'    => true,
                    'messages' => [
                        'error' => 'Unauthorized, token required'
                    ],
                ]
            )
            ->setStatusCode(ResponseInterface::HTTP_UNAUTHORIZED);
    }

    try {
        return  JWT::decode($token, new Key($key, 'HS256'));
    } catch (Exception $ex) {
        return Services::response()
            ->setJSON([
                'status'   => 401,
                'error'    => true,
                'messages' => [
                    'error' => 'Unauthorized'
                ]
            ])
            ->setStatusCode(ResponseInterface::HTTP_UNAUTHORIZED);
    }
}

function generate($payload)
{
    $key = getenv('JWT_SECRET');
    return JWT::encode($payload, $key, 'HS256');
}
