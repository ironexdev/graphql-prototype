<?php

namespace App\Controller;

use App\GraphQL\Service\GameService;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Validator\Validator\ValidatorInterface;

class IndexController extends Controller
{
    public function index(Request $request, ValidatorInterface $validator): Response
    {
        $entityManager = $this->getDoctrine()->getManager();
        $context = (object) ['em' => $entityManager, 'validator' => $validator];

        $gameService = new GameService();
        $data = $gameService->getAllGames($context);

        $templateData = $data['data'];

        return $this->render('index.html.twig', $templateData);
    }
}
