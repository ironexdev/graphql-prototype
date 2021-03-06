<?php

namespace App\GraphQL\Type;

use App\GraphQL\Resolver\MutationResolver;
use App\GraphQL\Types;
use GraphQL\Type\Definition\ObjectType;
use GraphQL\Type\Definition\ResolveInfo;

class MutationType extends ObjectType
{
    private $resolver;

    public function __construct()
    {
        $this->resolver = new MutationResolver();

        $config =
        [
            'name' => 'Mutation',
            'fields' => [
                'deleteGame' => [
                    'type' => Types::game(),
                    'args' => [
                        'id' => Types::nonNull(Types::id()),
                    ],
                ],
                'insertGame' => [
                    'type' => Types::game(),
                    'args' => [
                        'title' => Types::nonNull(Types::string()),
                        'genreId' => Types::nonNull(Types::id()),
                    ],
                ],
                'updateGame' => [
                    'type' => Types::game(),
                    'args' => [
                        'id' => Types::nonNull(Types::id()),
                        'title' => Types::string(),
                        'genreId' => Types::id(),
                    ],
                ],
            ],
            'resolveField' => function ($source, $args, $context, ResolveInfo $info) {
                $method = 'resolve'.ucfirst($info->fieldName);

                if (method_exists($this->resolver, $method)) {
                    return $this->resolver->{$method}($source, $args, $context, $info);
                }
            },
        ];

        parent::__construct($config);
    }
}
