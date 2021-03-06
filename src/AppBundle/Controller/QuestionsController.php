<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Questions;
use AppBundle\Entity\Quizz;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Question controller.
 *
 * @Route("questions")
 */
class QuestionsController extends Controller
{
    /**
     * Lists all question entities.
     *
     * @Route("/", name="questions_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $questions = $em->getRepository('AppBundle:Questions')->findAll();

        return $this->render('questions/index.html.twig', array(
            'questions' => $questions,
            ));
    }

    /**
     * Creates a new question entity.
     *
     * @Route("/new", name="questions_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        for ($i=1; $i <= 10 ; $i++) { 
            $question = new Questions();
            if ($_POST) {
                $em = $this->getDoctrine()->getManager();
                $repository = $this->getDoctrine()->getRepository('AppBundle:Quizz');
                $id_quizz = $request->query->get('id');
                $quizz_id = $repository->findOneById($id_quizz);
               
                $question->setQuizz($quizz_id);
                $question->setQuestion($_POST['question' . $i]);
                $em->persist($question);
                $em->flush($question);
            }
        }
        if ($_POST) {
            return $this->redirectToRoute('answers_new', array('id' => $id_quizz));
        }

        return $this->render('questions/new.html.twig', array(
            'question' => $question,
            ));
    }

    /**
     * Finds and displays a question entity.
     *
     * @Route("/{id}", name="questions_show")
     * @Method("GET")
     */
    public function showAction(Questions $question)
    {
        $deleteForm = $this->createDeleteForm($question);

        return $this->render('questions/show.html.twig', array(
            'question' => $question,
            'delete_form' => $deleteForm->createView(),
            ));
    }

    /**
     * Displays a form to edit an existing question entity.
     *
     * @Route("/{id}/edit", name="questions_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Questions $question)
    {
        $deleteForm = $this->createDeleteForm($question);
        $editForm = $this->createForm('AppBundle\Form\QuestionsType', $question);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('questions_edit', array('id' => $question->getId()));
        }

        return $this->render('questions/edit.html.twig', array(
            'question' => $question,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
            ));
    }

    /**
     * Deletes a question entity.
     *
     * @Route("/{id}", name="questions_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Questions $question)
    {
        $form = $this->createDeleteForm($question);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($question);
            $em->flush($question);
        }

        return $this->redirectToRoute('questions_index');
    }

    /**
     * Creates a form to delete a question entity.
     *
     * @param Questions $question The question entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Questions $question)
    {
        return $this->createFormBuilder()
        ->setAction($this->generateUrl('questions_delete', array('id' => $question->getId())))
        ->setMethod('DELETE')
        ->getForm()
        ;
    }
}
