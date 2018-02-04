<?php

namespace App;

class CustomException extends \Exception
{
    private $list;

    public function __construct(string $message, int $code = 0, \Exception $previous = null, array $list)
    {
        $this->list = $list;

        parent::__construct($message, $code, $previous);
    }

    public function getList(): array
    {
        return $this->list;
    }
}
