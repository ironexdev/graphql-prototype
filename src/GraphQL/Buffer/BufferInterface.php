<?php

namespace App\GraphQL\Buffer;

use Doctrine\ORM\EntityManager;

interface BufferInterface
{
    public static function storeId(int $id): void;

    public static function getItem(int $id): \stdClass;

    public static function fetchData(EntityManager $em): void;
}
