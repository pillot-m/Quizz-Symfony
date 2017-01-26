<?php 
namespace AppBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use AppBundle\Entity\Questions;

class LoadQuestionsData extends AbstractFixture implements OrderedFixtureInterface, FixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $question_one = new Questions();
        $question_one->setQuestion('Lequel de ces langages ne peut pas être exécuté côté serveur ?');
        $manager->persist($question_one);
        $this->addReference('question_one', $question_one);

        $manager->flush();
    }

	public function getOrder()
    {
        return 1;
    }
}