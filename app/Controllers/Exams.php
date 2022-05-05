<?php

namespace App\Controllers;

use App\Entities\Exams as EntitiesExams;
use App\Libraries\StdobjeToArray;
use App\Models\Exams as ModelsExams;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\RESTful\ResourceController;

class Exams extends ResourceController
{
    protected $modelName = ModelsExams::class;
    protected $format    = 'json';
    use ResponseTrait;


    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Exams",
     *   summary="exams",
     *   description="exams",
     *   tags={"Exams"},
     *   @OA\Response(
     *     response=200, description="ok",
     *     @OA\JsonContent(
     *      type="array",
     *       @OA\Items(ref="#/components/schemas/Exams")
     *     ),
     *   ),
     *   @OA\Response(
     *     response=400, description="Bad Request"
     *   ),
     *   security={{"token": {}}},
     * )
     */
    public function index()
    {
        return $this->respond($this->model->where('status', 1)->findAll());
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Exams/{id}",
     *   summary="exams",
     *   description="exams",
     *   tags={"Exams"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Exams")
     *   ), 
     *   @OA\Response(
     *     response=400, description="Bad Request"
     *   ),
     *   @OA\Response(
     *     response=404, description="404 not found",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status", type="double",example = 404),
     *      @OA\Property(property="error", type="double", example = 404),
     *        @OA\Property(
     *          property="messages", type="object", 
     *          @OA\Property(property="error", type="string", example = "not found"),
     *       )
     *     )
     *   ),
     *   security={{"token": {}}},
     * )
     */
    public function show($id = null)
    {
        $record = $this->model->where('status', 1)->find($id);
        if (!$record) {
            return $this->failNotFound(sprintf(
                'user with id %d not found',
                $id
            ));
        }

        return $this->respond($record);
    }
    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/getExams/{classId}/{subjectId}",
     *   summary="exams",
     *   description="exams",
     *   tags={"Exams"},
     *   @OA\Parameter(
     *         name="classId",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Parameter(
     *         name="subjectId",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Exams")
     *   ), 
     *   @OA\Response(
     *     response=400, description="Bad Request"
     *   ),
     *   @OA\Response(
     *     response=404, description="404 not found",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status", type="double",example = 404),
     *      @OA\Property(property="error", type="double", example = 404),
     *        @OA\Property(
     *          property="messages", type="object", 
     *          @OA\Property(property="error", type="string", example = "not found"),
     *       )
     *     )
     *   ),
     *   security={{"token": {}}},
     * )
     */
    public function getExams($classId = null, $subjectId = null)
    {
        $record = $this->model
            ->where('subjectId', $classId)
            ->where('classId', $subjectId)
            ->where('status', 1)
            ->findAll();
        if (!$record) {
            return $this->failNotFound(sprintf(
                'user with id %d not found'
            ));
        }

        return $this->respond($record);
    }

    /**
     * Create a new resource object, from "posted" parameters
     *
     * @return mixed
     */
    /**
     * @OA\Post(
     *   path="/api/Exams",
     *   summary="exams",
     *   description="exams",
     *   tags={"Exams"},
    
     * @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Exams"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=201, description="created",
     *      @OA\JsonContent(ref="#/components/schemas/Exams")
     *   ), 
     *   @OA\Response(
     *     response=400, description="Request error",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status", type="double",example = 400),
     *      @OA\Property(property="error", type="double", example = 400),
     *        @OA\Property(
     *          property="messages", type="object", 
     *          @OA\Property(property="error", type="string", example = "not found"),
     *       )
     *     )
     *   ),
     *   security={{"token": {}}},
     * )
     */
    public function create()
    {
        $data = $this->request->getVar();
        if ($data == null) {
            return $this->fail("data null");
        }
        $entity = new EntitiesExams();
        $array = new StdobjeToArray($data);
        $entity->fill($array->get());
        if (!$this->model->save($entity)) {
            return $this->failValidationErrors($this->model->errors());
        }

        return $this->respondCreated($entity, 'post created');
    }

    /**
     * Add or update a model resource, from "posted" properties
     *
     * @return mixed
     */
    /**
     * @OA\Put(
     *   path="/api/Exams/{id}",
     *   summary="exams",
     *   description="exams",
     *   tags={"Exams"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ), 
     *  @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Exams"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=200, description="updated",
     *      @OA\JsonContent(ref="#/components/schemas/Exams")
     *   ), 
     *   @OA\Response(
     *     response=400, description="Bad Request"
     *   ),
     *   @OA\Response(
     *     response=404, description="404 not found",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status", type="double",example = 404),
     *      @OA\Property(property="error", type="double", example = 404),
     *        @OA\Property(
     *          property="messages", type="object", 
     *          @OA\Property(property="error", type="string", example = "not found"),
     *       )
     *     )
     *   ),
     *   security={{"token": {}}},
     * )
     */
    public function update($id = null)
    {
        $data = $this->request->getVar();
        if ($data == null) {
            return $this->fail("data null");
        }

        if ($data == null) {
            return $this->fail("data null");
        }
        $entity = new EntitiesExams();
        $array = new StdobjeToArray($data);
        $entity->fill($array->get());
        if (!$this->model->update($id, $entity)) {
            return $this->failValidationErrors($this->model->errors());
        }

        return $this->respondUpdated($data, "updated");
    }

    /**
     * Delete the designated resource object from the model
     *
     * @return mixed
     */
    /**
     * @OA\Delete(
     *   path="/api/Exams/{id}",
     *   summary="exams",
     *   description="exams",
     *   tags={"Exams"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status", type="double",example = 200),
     *      @OA\Property(property="error", type="double", example = null),
     *        @OA\Property(
     *          property="messages", type="object", 
     *          @OA\Property(property="error", type="string", example = "not found"),
     *       )
     *     )
     *   ), 
     *   @OA\Response(
     *     response=400, description="Bad Request"
     *   ),
     *   @OA\Response(
     *     response=404, description="404 not found",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status", type="double",example = 404),
     *      @OA\Property(property="error", type="double", example = 404),
     *        @OA\Property(
     *          property="messages", type="object", 
     *          @OA\Property(property="error", type="string", example = "Data Deleted"),
     *       )
     *     )
     *   ),
     *   security={{"token": {}}},
     * )
     */
    public function delete($id = null)
    {
        $data = $this->model->find($id);
        if ($data) {
            if ($this->model->delete($id)) {
                $response = [
                    'status'   => 200,
                    'error'    => null,
                    'messages' => [
                        'success' => 'Data Deleted ' . $id
                    ]
                ];
                return $this->respondDeleted($response);
            } else
                return $this->fail("fail delete $id");
        } else {
            return $this->failNotFound('No Data Found with id ' . $id);
        }
    }

    /**
     * @OA\Post(
     *   path="/api/Exams/fromXl",
     *   summary="exams",
     *   description="exams",
     *   tags={"Exams"},
     *   @OA\RequestBody(
     *     @OA\MediaType(
     *       mediaType="multipart/form-data",
     *       @OA\Schema(
     *         @OA\Property(
     *           description="file to upload",
     *           property="userfile",
     *           type="string",
     *           format="binary",
     *         ),
     *       )
     *     )
     *   ),
     *   @OA\Response(
     *     response=200, description="ok",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status", type="double",example = 200),
     *      @OA\Property(property="error", type="double", example = null),
     *        @OA\Property(
     *          property="messages", type="object", 
     *          @OA\Property(property="error", type="string", example = "not found"),
     *       )
     *     )
     *   ), 
     *   @OA\Response(
     *     response=400, description="Bad Request"
     *   ),
     *   @OA\Response(
     *     response=404, description="404 not found",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status", type="double",example = 404),
     *      @OA\Property(property="error", type="double", example = 404),
     *        @OA\Property(
     *          property="messages", type="object", 
     *          @OA\Property(property="error", type="string", example = "Data Deleted"),
     *       )
     *     )
     *   ),
     *   security={{"token": {}}},
     * )
     */
    public function fromXl()
    {
        $validationRule = [
            'userfile' => [
                'label' => 'xls File',
                'rules' => 'uploaded[userfile]'
                    . '|mime_in[userfile,application/xls,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet]'
            ],
        ];
        if (!$this->validate($validationRule)) {
            return $this->failValidationErrors($this->validator->getErrors());
        }

        $file_excel = $this->request->getFile('userfile');
        // $file_excel->getMimeType();

        $ext = $file_excel->getClientExtension();
        if ($ext == 'xls') {
            $render = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
        } else {
            $render = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
        }
        $spreadsheet = $render->load($file_excel);

        $data =  $spreadsheet->getActiveSheet()->toArray();

        $subject = new Subjects();
        $subjectEntity = new EntitiesExams();
        $this->model->transStart();
        foreach ($data as $x => $row) {
            if ($x == 0) {
                continue;
            }
            $subjectEntity->classId = $row[0];
            $subjectEntity->subjectId = $row[1];
            $subjectEntity->question = $row[2];
            $subjectEntity->questionImage = $row[3];
            $subjectEntity->a = $row[4];
            $subjectEntity->b = $row[5];
            $subjectEntity->c = $row[6];
            $subjectEntity->d = $row[7];
            $subjectEntity->e = $row[8];
            $subjectEntity->answer = $row[9];
            $subjectEntity->status = $row[10];

            if (!$this->model->save($subjectEntity)) {
                return $this->failValidationErrors(
                    [
                        'row' => $x + 1,
                        'fields' => $this->model->errors()
                    ]
                );
            }
        }

        if ($this->model->transStatus() === false) {
            $this->model->transRollback();
        } else {
            $this->model->transCommit();
            return $this->respondCreated(["result" => "success upload"]);
        }
    }
}
