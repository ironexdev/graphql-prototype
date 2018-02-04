<?php

namespace App\GraphQL\Service;

use App\GraphQL\GraphQLService;

class GameService
{
    public function getAllGames(\stdClass $context): array
    {
        $operationName = __FUNCTION__;
        $query = <<<HEREDOC
query {$operationName}
{
    games
    {
        id,
        title,
        genre
        {
            id,
            title
        }
    }
}
HEREDOC;
        $variables = null;

        $gqlArray =
        [
            'query' => $query,
            'variables' => $variables,
            'operationName' => $operationName,
        ];

        $gql = new GraphQLService($gqlArray, $context);

        $result = $gql->execute(true);

        if (true === isset($result['errors'])) {
            throw new \Exception("App\GraphQL\GraphQLService::execute returned an error");
        }

        return $result;
    }
}
