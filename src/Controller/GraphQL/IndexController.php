<?php

namespace App\Controller\GraphQL;

use App\GraphQL\GraphQLService;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpKernel\Exception;
use Symfony\Component\Validator\Validator\ValidatorInterface;

class IndexController extends Controller
{
    public function index(Request $request, ValidatorInterface $validator): JsonResponse
    {
        return new JsonResponse(["errors" => "External API is disabled - delete this response in App\Controller\GraphQL\IndexController to enable it."], 403, []);

        $entityManager = $this->getDoctrine()->getManager();
        $context = (object) ['em' => $entityManager, 'validator' => $validator];

        try {
            $gql = new GraphQLService($request, $context);
        } catch (Exception\HttpException $error) {
            return new JsonResponse($error->getMessage(), $error->getStatusCode(), $error->getHeaders());
        }

        $result = $gql->execute(true);

        return new JsonResponse($result, 200, []);
    }
}
