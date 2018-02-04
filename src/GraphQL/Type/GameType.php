<?php

namespace App\GraphQL\Type;

use App\GraphQL\Resolver\GameResolver;
use App\GraphQL\Types;
use GraphQL\Type\Definition\ObjectType;
use GraphQL\Type\Definition\ResolveInfo;

class GameType extends ObjectType
{
    private $genreBuffer = [];
    private $resolver;

    public function __construct()
    {
        $this->resolver = new GameResolver();

        $config =
        [
            'name' => 'Game',
            'fields' => function () {
                return [
                    'id' => Types::id(),
                    'title' => Types::string(),
                    'genre' => Types::genre(),
                ];
            },
            'resolveField' => function ($source, $args, $context, ResolveInfo $info) {
                $method = 'resolve'.ucfirst($info->fieldName);

                if (method_exists($this->resolver, $method)) {
                    return $this->resolver->{$method}($source, $args, $context, $info);
                } else {
                    return $source->{$info->fieldName};
                }
            },
        ];
        parent::__construct($config);
    }
}
