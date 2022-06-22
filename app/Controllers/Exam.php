<?php

namespace App\Controllers;

use App\Entities\Exam as EntitiesExam;
use OpenApi\Annotations as OA;
use App\Libraries\StdobjeToArray;
use App\Models\Exam as ModelsExam;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\RESTful\ResourceController;
use Exception;

class Exam extends ResourceController
{
    protected $modelName = ModelsExam::class;
    protected $format    = 'json';
    use ResponseTrait;
    /**
     * @OA\Get(
     *   path="/api/Exam/paging/{status}/{perpage}/{page}",
     *   summary="Exam",
     *   description="Exam",
     *   tags={"Exam"},
     *   @OA\Parameter(
     *         name="status",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *              type="integer",
     *              format="int64",
     *              example="1"
     *          )
     *   ),
     *   @OA\Parameter(
     *         name="perpage",
     *         in="path",
     *         required=true,
     *              @OA\Schema(
     *              type="integer",
     *              format="int64",
     *              example="20"
     *          )
     *   ),
     *   @OA\Parameter(
     *         name="page",
     *         in="path",
     *         required=true,
     *           @OA\Schema(
     *              type="integer",
     *              format="int64",
     *              example="1"
     *          )
     *   ),
  
     *   @OA\Response(
     *     response=200,description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Exam")
     *   ),
     *   @OA\Response(
     *     response=400,description="Bad Request"
     *   ),
     *   @OA\Response(
     *     response=404,description="404 not found",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status",type="double",example = 404),
     *      @OA\Property(property="error",type="double",example = 404),
     *        @OA\Property(
     *          property="messages",type="object",
     *          @OA\Property(property="error",type="string",example = "not found"),
     *       )
     *     )
     *   ),
     *   security={{"token": {}}},
     * )
     */
    public function paging($status = "all", $perpage = 20, $page = 1)
    {
        $model = $this->model;
        if ($status == 1) {
            $model = $this->model->where(['exams.statusId' => 1]);
        } elseif ($status == 0) {
            $model = $this->model->where(['exams.statusId' => 0]);
        }

        $data = $model
            ->select('exams.*, s.name statusName,c.name className,sj.name subjectName')
            ->join('statuss s', 's.id=exams.statusId')
            ->join('classes c', 'c.id=exams.classId')
            ->join('subjects sj', 'sj.id=exams.subjectId')
            ->paginate($perpage, 'default', $page);
        $countPage = $model->pager->getPageCount();
        $currentPage = $model->pager->getCurrentPage();
        $lastPage = $model->pager->getLastPage();
        $firstPage = $model->pager->getFirstPage();
        $perPage = $model->pager->getPerPage();
        // $details = $model->pager->getDetails();

        if ($page > $countPage)
            return  $this->respond([
                'totalPage' => $countPage,
                'currentPage' => $currentPage,
                'lastPage' => $lastPage,
                'firstPage' => $firstPage,
                'perPage' => $perPage,
                'data' => []
            ]);

        else {
            return  $this->respond([
                'totalPage' => $countPage,
                'currentPage' => $currentPage,
                'lastPage' => $lastPage,
                'firstPage' => $firstPage,
                'perPage' => $perPage,
                // 'details' => $details,
                'data' => $data
            ]);
        }
    }


    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Exam",
     *   summary="exam",
     *   description="exam",
     *   tags={"Exam"},
     *   @OA\Response(
     *     response=200, description="ok",
     *     @OA\JsonContent(
     *      type="array",
     *       @OA\Items(ref="#/components/schemas/Exam")
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
        return $this->respond($this->model
            ->select('exams.*, s.name statusName,c.name className,sj.name subjectName')
            ->join('statuss s', 's.id=exams.statusId')
            ->join('classes c', 'c.id=exams.classId')
            ->join('subjects sj', 'sj.id=exams.subjectId')
            ->where('exams.statusId', 1)->findAll());
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Exam/{id}",
     *   summary="exam",
     *   description="exam",
     *   tags={"Exam"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *           @OA\Schema(
     *              type="integer",
     *              format="int64",
     *              example="1"
     *          )
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Exam")
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
        $record = $this->model
            ->select('exams.*, s.name statusName,c.name className,sj.name subjectName')
            ->join('statuss s', 's.id=exams.statusId')
            ->join('classes c', 'c.id=exams.classId')
            ->join('subjects sj', 'sj.id=exams.subjectId')
            ->where('exams.statusId', 1)->find($id);
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
     *   path="/api/Exam/getExam/{classId}/{subjectId}/{status}/{perpage}/{page}",
     *   summary="exam",
     *   description="exam",
     *   tags={"Exam"},
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
     *   @OA\Parameter(
     *         name="status",
     *         in="path",
     *         required=true,
     *   ), 
     *  *   @OA\Parameter(
     *         name="perpage",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Parameter(
     *         name="page",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Exam")
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
    public function getExam($classId = null, $subjectId = null,  $status = 1, $perpage = 20, $page = 1)
    {

        $model = $this->model
            ->select('exams.id as id, question,questionImage,show,a,b,c,d,e,c.name as class,s.name as subject,d.name as department')
            ->join('statuss s', 's.id=exams.statusId')
            ->join('classes c', 'c.id=exams.classId')
            ->join('subjects sj', 'sj.id=exams.subjectId')
            ->where('exams.subjectId', $subjectId)
            ->where('exams.classId', $classId)
            ->where('exams.statusId', $status);

        $data = $model
            ->paginate($perpage, 'default', $page);

        // return  $this->respond([
        //     $model->classes()->getQuery(),
        // ]);
        $countPage = $model->pager->getPageCount();
        $currentPage = $model->pager->getCurrentPage();
        $lastPage = $model->pager->getLastPage();
        $firstPage = $model->pager->getFirstPage();
        $perPage = $model->pager->getPerPage();
        // $details = $model->pager->getDetails();

        if ($page > $countPage)
            return  $this->respond([
                'totalPage' => $countPage,
                'currentPage' => $currentPage,
                'lastPage' => $lastPage,
                'firstPage' => $firstPage,
                'perPage' => $perPage,
                'data' => []
            ]);

        else {
            return  $this->respond([
                'totalPage' => $countPage,
                'currentPage' => $currentPage,
                'lastPage' => $lastPage,
                'firstPage' => $firstPage,
                'perPage' => $perPage,
                'data' => $data
            ]);
        }
    }
    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Exam/getExamStudent/{subjectId}/{perpage}/{page}",
     *   summary="exam",
     *   description="exam",
     *   tags={"Exam"},
     *     @OA\Parameter(
     *         name="subjectId",
     *         in="path",
     *         required=true,
     *   ), 
     *     @OA\Parameter(
     *         name="perpage",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Parameter(
     *         name="page",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Exam")
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
    public function getExamStudent($subjectId = null, $perpage = 60, $page = 1)
    {
        $header = $this->request->getServer('HTTP_AUTHORIZATION');

        try {
            helper('jwt');
            $decoded = detailJwt($header);

            $classId = $decoded->user->classId;
            $departmentId = $decoded->user->departmentId;

            $model = $this->model
                ->select('exams.id as id,questionImage,show,a,b,c,d,e,c.name as class,s.name as subject,d.name as department')
                ->join('classes c', 'c.id=exams.classId')
                ->join('subjects s', 's.id=exams.subjectId')
                ->join('subjectdepartements sd', 'sd.subjectId =s.id')
                ->join('departments d', 'd.id=sd.departmentId')
                ->where('exams.subjectId', $subjectId)
                ->where('classId', $classId)
                ->where('exams.statusId', 1)
                ->where('d.id', $departmentId)
                ->orderBy('RAND()');
            $data = $model
                ->paginate($perpage, 'default', $page);
            $countPage = $model->pager->getPageCount();
            $currentPage = $model->pager->getCurrentPage();
            $lastPage = $model->pager->getLastPage();
            $firstPage = $model->pager->getFirstPage();
            $perPage = $model->pager->getPerPage();

            // return  $this->respond([ $model->getLastQuery()->getQuery()]);

            if ($page > $countPage)
                return  $this->respond([
                    'totalPage' => $countPage, 'currentPage' => $currentPage, 'lastPage' => $lastPage, 'firstPage' => $firstPage, 'perPage' => $perPage, 'data' => []
                ]);

            else {
                return  $this->respond([
                    'totalPage' => $countPage, 'currentPage' => $currentPage, 'lastPage' => $lastPage, 'firstPage' => $firstPage, 'perPage' => $perPage, 'data' => $data,
                ]);
            }
        } catch (Exception $ex) {
            return $this->failUnauthorized();
        }
    }

    /**
     * Create a new resource object, from "posted" parameters
     *
     * @return mixed
     */
    /**
     * @OA\Post(
     *   path="/api/Exam",
     *   summary="exam",
     *   description="exam",
     *   tags={"Exam"},
    
     * @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Exam"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=201, description="created",
     *      @OA\JsonContent(ref="#/components/schemas/Exam")
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
            return $this->fail("data not valid");
        }

        $entity = new EntitiesExam();
        $array = new StdobjeToArray($data);
        $entity->fill($array->get());
        if (!$this->model->save($entity)) {
            return $this->failValidationErrors($this->model->errors());
        }

        return $this->respondCreated($entity, 'post created');
    }

    /**
     * @OA\Post(
     *   path="/api/Exam/count",
     *   summary="Exam",
     *   description="Exam",
     *   tags={"Exam"},
     * @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *       @OA\Schema(
     *          @OA\Property(
     *              property="select",
     *              type="string",
     *          ),
     *          @OA\Property(
     *              property="groupBy",
     *              type="string",
     *          ),
     *          @OA\Property(
     *              property="where", type="object", 
     *           @OA\Property(property="id", type="string"),
     *           )
     *      ),
     *     )
     *   ),
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Exam")
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
    public function count()
    {
        // {
        //     "select": "gender",
        //     "groupBy": "gender",
        //     "where": {
        //       "classId": 2,
        //       "roomId": 1
        //     }
        //   }
        $data = $this->request->getVar();
        if ($data == null) {
            return $this->fail("data not valid");
        }

        $array = new StdobjeToArray($data);
        $select = $array->param('select');;
        $where = $array->param('where');
        $groupBy = $array->param('groupBy');
        $record = $this->model;
        if ($select != null) {
            $record = $this->model->select($select);
        }

        if ($where != null) {
            $record = $this->model->where((array)$where);
        }

        if ($groupBy != null) {
            if ($select == null) {
                $record = $this->model->select($groupBy . ',count(*) total');
            }
            $record = $this->model->groupBy($groupBy);
        }

        try {
            $record = $this->model->findAll();

            if (!$record) {
                return $this->failNotFound(sprintf(
                    'user not found',
                ));
            }

            return $this->respond(
                $record
            );
        } catch (\Throwable $th) {
            return $this->failNotFound('not found');
            //return $this->failNotFound( $th->getMessage());
        }
    }

    /**
     * Add or update a model resource, from "posted" properties
     *
     * @return mixed
     */
    /**
     * @OA\Put(
     *   path="/api/Exam/{id}",
     *   summary="exam",
     *   description="exam",
     *   tags={"Exam"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *           @OA\Schema(
     *              type="integer",
     *              format="int64",
     *              example="1"
     *          )
     *   ), 
     *  @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Exam"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=200, description="updated",
     *      @OA\JsonContent(ref="#/components/schemas/Exam")
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
            return $this->fail("data not valid");
        }



        $entity = new EntitiesExam();
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
     *   path="/api/Exam/{id}",
     *   summary="exam",
     *   description="exam",
     *   tags={"Exam"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *           @OA\Schema(
     *              type="integer",
     *              format="int64",
     *              example="1"
     *          )
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
                    'status'   => 200, 'error'    => null, 'messages' => ['success' => 'Data Deleted ' . $id]
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
     *   path="/api/Exam/fromFile",
     *   summary="exam",
     *   description="exam",
     *   tags={"Exam"},
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
    public function  fromFile()
    {
        $validationRule = [
            'userfile' => [
                'label' => 'xls File',
                'rules' => 'uploaded[userfile]' . '|mime_in[userfile,application/xls,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet]'
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

        $subjectEntity = new EntitiesExam();
        $this->model->transStart();
        foreach ($data as $x => $row) {
            if ($x == 0) {
                continue;
            }
            if ($row[0] == '')
                continue;
            $subjectEntity->classId  = ($row[0]);
            $subjectEntity->subjectId = ($row[1]);
            $subjectEntity->question = ($row[2]);
            $subjectEntity->questionImage = ($row[3]);
            $subjectEntity->a = ($row[4]);
            $subjectEntity->b = ($row[5]);
            $subjectEntity->c = ($row[6]);
            $subjectEntity->d = ($row[7]);
            $subjectEntity->e = ($row[8]);
            $subjectEntity->answer = ($row[9]);
            $subjectEntity->statusId = ($row[10]);
            $subjectEntity->semesterId = ($row[11]);

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
