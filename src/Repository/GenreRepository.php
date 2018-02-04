<?php

namespace App\Repository;

use App\Entity\Genre;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

class GenreRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Genre::class);
    }

    public function selectOne(int $id): array
    {
        try {
            $qb = $this->createQueryBuilder('genre')
                       ->select('genre.id', 'genre.title')
                       ->where('genre.id = :id')
                       ->setParameter('id', $id)
                       ->getQuery();

            return $qb->execute()[0];
        } catch (\Exception $error) {
            throw $error;
        }
    }

    public function selectMultiple(array $ids): array
    {
        try {
            $qb = $this->createQueryBuilder('genre')
                ->select('genre.id', 'genre.title')
                ->where($this->createQueryBuilder('genre')->expr()->in('genre.id', $ids))
                ->getQuery();

            return $qb->execute();
        } catch (\Exception $error) {
            throw $error;
        }
    }
}
