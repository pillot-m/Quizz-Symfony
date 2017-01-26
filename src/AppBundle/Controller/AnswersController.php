<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Answers;
use AppBundle\Entity\Questions;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;
use AppBundle\Form\AnswersType;
/**
 * Answer controller.
 *
 * @Route("answers")
 */
class AnswersController extends Controller
{
    /**
     * Lists all answer entities.
     *
     * @Route("/", name="answers_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $answers = $em->getRepository('AppBundle:Answers')->findAll();

        return $this->render('answers/index.html.twig', array(
            'answers' => $answers,
            ));
    }

    /**
     * Creates a new answer entity.
     *
     * @Route("/new", name="answers_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $repository = $this->getDoctrine()->getRepository('AppBundle:Questions');
        $id_quizz = $request->query->get('id');
        $questions = $repository->findBy(['quizz' => $id_quizz]);

        if ($_POST) {
            for ($i = 0; $i < count($questions) ; $i++) {
                $em = $this->getDoctrine()->getManager();
                $question_id = $repository->findOneById($questions[$i]);

                $answer_1 = new Answers();
                $answer_1->setQuestion($question_id);
                $answer_1->setAnswer($_POST['answer1_' . $question_id->getId() ]);
                $_POST['answer_'. $question_id->getId() . '_' . $i] == 1 ? $answer_1->setValidated(true) : $answer_1->setValidated(false);
                $em->persist($answer_1);
                $em->flush($answer_1);

                $answer_2 = new Answers();
                $answer_2->setQuestion($question_id);
                $answer_2->setAnswer($_POST['answer2_' . $question_id->getId() ]);
                $_POST['answer_'. $question_id->getId() . '_' . $i] == 2 ? $answer_2->setValidated(true) : $answer_2->setValidated(false);
                $em->persist($answer_2);
                $em->flush($answer_2);

                $answer_3 = new Answers();
                $answer_3->setQuestion($question_id);
                $answer_3->setAnswer($_POST['answer3_' . $question_id->getId() ]);
                $_POST['answer_'. $question_id->getId() . '_' . $i] == 3 ? $answer_3->setValidated(true) : $answer_3->setValidated(false);
                $em->persist($answer_3);
                $em->flush($answer_3);
            }
        }

        if ($_POST) {
            return $this->redirectToRoute('quizz_index', array('id' => $id_quizz));
        }

        return $this->render('answers/new.html.twig', array(
            'questions' => $questions
            ));
    }

    /**
     * Finds and displays a answer entity.
     *
     * @Route("/{id}", name="answers_show")
     * @Method("GET")
     */
    public function showAction(Answers $answer)
    {
        $deleteForm = $this->createDeleteForm($answer);

        return $this->render('answers/show.html.twig', array(
            'answer' => $answer,
            'delete_form' => $deleteForm->createView(),
            ));
    }

    /**
     * Displays a form to edit an existing answer entity.
     *
     * @Route("/{id}/edit", name="answers_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Answers $answer)
    {
        $deleteForm = $this->createDeleteForm($answer);
        $editForm = $this->createForm('AppBundle\Form\AnswersType', $answer);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('answers_edit', array('id' => $answer->getId()));
        }

        return $this->render('answers/edit.html.twig', array(
            'answer' => $answer,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
            ));
    }

    /**
     * Deletes a answer entity.
     *
     * @Route("/{id}", name="answers_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Answers $answer)
    {
        $form = $this->createDeleteForm($answer);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($answer);
            $em->flush($answer);
        }

        return $this->redirectToRoute('answers_index');
    }

    /**
     * Creates a form to delete a answer entity.
     *
     * @param Answers $answer The answer entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Answers $answer)
    {
        return $this->createFormBuilder()
        ->setAction($this->generateUrl('answers_delete', array('id' => $answer->getId())))
        ->setMethod('DELETE')
        ->getForm()
        ;
    }
}
