<?php

namespace App\GraphQL\Resolver;

use App\Entity\Game;

class QueryResolver extends Resolver
{
    public function resolveGames(?\stdClass $source, array $args, ?\stdClass $context): ?array
    {
        $games = $context->em->getRepository(Game::class)->selectAll();

        $gamesObjectList = [];
        if ($games !== []) {
            foreach ($games as $game) {
                $gamesObjectList[] = (object) $game;
            }

            return $gamesObjectList;
        } else {
            return null;
        }
    }

    public function resolveGame(?\stdClass $source, array $args, ?\stdClass $context): ?\stdClass
    {
        $game = $context->em->getRepository(Game::class)->selectOne($args['id']);

        return null !== $game ? (object) $game : null;
    }
}
