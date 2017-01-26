<?php 
namespace AppBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use AppBundle\Entity\Answers;
use AppBundle\Entity\Questions;

class LoadAnswersData extends AbstractFixture implements OrderedFixtureInterface, FixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $question_one_answer_one = new Answers();
        $question_one_answer_one->setAnswer('HTML');
        $question_one_answer_one->setValidated(true);
        $question_one_answer_one->setQuestion($this->getReference('question_one'));
        $manager->persist($question_one_answer_one);
        $this->addReference('question_one_answer_one', $question_one_answer_one);

        $question_one_answer_two = new Answers();
        $question_one_answer_two->setAnswer('Javascript');
        $question_one_answer_two->setValidated(false);
        $question_one_answer_two->setQuestion($this->getReference('question_one'));
        $manager->persist($question_one_answer_two);
        $this->addReference('question_one_answer_two', $question_one_answer_two);

        $question_one_answer_three = new Answers();
        $question_one_answer_three->setAnswer('PHP');
        $question_one_answer_three->setValidated(false);
        $question_one_answer_three->setQuestion($this->getReference('question_one'));
        $manager->persist($question_one_answer_three);
        $this->addReference('question_one_answer_three', $question_one_answer_three);

        $manager->flush();
    }

    public function getOrder()
    {
        return 2;
    }
}