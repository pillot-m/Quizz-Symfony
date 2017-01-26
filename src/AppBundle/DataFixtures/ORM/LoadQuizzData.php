<?php 
namespace AppBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use AppBundle\Entity\Quizz;

class LoadQuizzData extends AbstractFixture implements OrderedFixtureInterface, FixtureInterface
{
	public function load(ObjectManager $manager)
	{
		$quizz = new Quizz();
		$quizz->setName('Nom du quizz');

		$manager->persist($quizz);
		$manager->flush();
	}

	public function getOrder()
	{
		return 3;
	}
}