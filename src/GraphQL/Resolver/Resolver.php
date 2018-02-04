<?php

namespace App\GraphQL\Resolver;

use Symfony\Component\Validator\ConstraintViolationList;

abstract class Resolver
{
    public function formatConstraintViolations(ConstraintViolationList $errors): array
    {
        $errorsFormatted = [];
        foreach ($errors as $error) {
            $errorCode = $error->getCode();
            $errorName = $error->getConstraint()::getErrorName($errorCode);
            $errorProperty = $error->getPropertyPath();
            $errorsFormatted[] = [$errorProperty => $errorName];
        }

        return $errorsFormatted;
    }
}
