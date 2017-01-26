<?php
// src/AppBundle/Entity/User.php

namespace AppBundle\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Entity
 * @ORM\Table(name="user")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;
    /**
     * @ORM\OneToMany(targetEntity="Quizz", mappedBy="User")
     */
    private $quizz;

    public function __construct()
    {
        $this->quizz = new ArrayCollection();
        parent::__construct();
        // your own logic
    }

    /**
     * Add quizz
     *
     * @param \AppBundle\Entity\Quizz $quizz
     *
     * @return User
     */
    public function addQuizz(\AppBundle\Entity\Quizz $quizz)
    {
        $this->quizz[] = $quizz;

        return $this;
    }

    /**
     * Remove quizz
     *
     * @param \AppBundle\Entity\Quizz $quizz
     */
    public function removeQuizz(\AppBundle\Entity\Quizz $quizz)
    {
        $this->quizz->removeElement($quizz);
    }

    /**
     * Get quizz
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getQuizz()
    {
        return $this->quizz;
    }
}
