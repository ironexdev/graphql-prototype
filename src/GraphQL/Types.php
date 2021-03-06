<?php

namespace App\GraphQL;

use App\GraphQL\Type\GameType;
use App\GraphQL\Type\GenreType;
use App\GraphQL\Type\MutationType;
use App\GraphQL\Type\QueryType;
use GraphQL\Type\Definition\IDType;
use GraphQL\Type\Definition\IntType;
use GraphQL\Type\Definition\ListOfType;
use GraphQL\Type\Definition\NonNull;
use GraphQL\Type\Definition\StringType;
use GraphQL\Type\Definition\Type;

class Types
{
    private static $game;
    private static $genre;
    private static $mutation;
    private static $node;
    private static $query;

    public static function game(): GameType
    {
        return self::$game ?: (self::$game = new GameType());
    }

    public static function genre(): GenreType
    {
        return self::$genre ?: (self::$genre = new GenreType());
    }

    public static function id(): IDType
    {
        return Type::id();
    }

    public static function int(): IntType
    {
        return Type::int();
    }

    public static function listOf($type)
    {
        return new ListOfType($type);
    }

    public static function mutation(): MutationType
    {
        return self::$mutation ?: (self::$mutation = new MutationType());
    }

    public static function nonNull(Type $type): NonNull
    {
        return new NonNull($type);
    }

    public static function query(): QueryType
    {
        return self::$query ?: (self::$query = new QueryType());
    }

    public static function string(): StringType
    {
        return Type::string();
    }
}
