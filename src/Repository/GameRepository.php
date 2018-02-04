<?php

namespace App\Repository;

use App\Entity\Game;
use App\Entity\Genre;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

class GameRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Game::class);
    }

    public function insert(Game $game): int
    {
        try {
            $em = $this->_em;
            $em->getConnection()->beginTransaction();
            $em->persist($game);
            $em->flush();
            $em->getConnection()->commit();

            return $game->getId();
        } catch (\Error $error) {
            $em->getConnection()->rollBack();
            throw $error;
        }
    }

    public function delete(Game $game): int
    {
        try {
            $id = $game->getId();
            $em = $this->_em;
            $em->getConnection()->beginTransaction();
            $em->remove($game);
            $em->flush();
            $em->getConnection()->commit();

            return $id;
        } catch (\Error $error) {
            $em->getConnection()->rollBack();
            throw $error;
        }
    }

    public function selectOne(int $id): ?array
    {
        try {
            $qb = $this->createQueryBuilder('game')
                       ->select('game.id', 'game.title', 'ge.id AS genre')
                       ->innerJoin(Genre::class, 'ge', 'WITH', 'game.genre = ge.id')
                       ->where('game.id = :id')
                       ->setParameter('id', $id)
                       ->getQuery();

            $result = $qb->getResult();

            $result = true === isset($result[0]) ? $result[0] : null;

            return $result;
        } catch (\Error $error) {
            throw $error;
        }
    }

    public function selectAll(): array
    {
        try {
            $qb = $this->createQueryBuilder('game')
                       ->select('game.id', 'game.title', 'ge.id AS genre')
                       ->innerJoin(Genre::class, 'ge', 'WITH', 'game.genre = ge.id')
                       ->getQuery();

            return $qb->execute();
        } catch (\Error $error) {
            throw $error;
        }
    }

    public function update(Game $game): int
    {
        try {
            $em = $this->_em;
            $em->getConnection()->beginTransaction();
            $em->persist($game);
            $em->flush();
            $em->getConnection()->commit();

            return $game->getId();
        } catch (\Error $error) {
            $em->getConnection()->rollBack();
            throw $error;
        }
    }
}
