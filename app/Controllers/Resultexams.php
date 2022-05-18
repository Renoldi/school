<?php

namespace App\Controllers;

use App\Entities\Resultexams as EntitiesResultexams;
 use OpenApi\Annotations as OA;
use App\Libraries\StdobjeToArray;
use App\Models\Resultexams as ModelsResultexams;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\RESTful\ResourceController;
use Exception;

class Resultexams extends ResourceController
{
    protected $modelName = ModelsResultexams::class;
    protected $format    = 'json';
     use ResponseTrait;
/**
     * @OA\Get(
     *   path="/api/Resultexams/paging/{status}/{perpage}/{page}",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
      *   @OA\Parameter(
    *         name="status",
    *         in="path",
    *         required=true,
    *         @OA\Schema(
    *              type="integer",
    *              format="int64",
    *          )
    *   ),
    *   @OA\Parameter(
    *         name="perpage",
    *         in="path",
    *         required=true,
    *              @OA\Schema(
    *              type="integer",
    *              format="int64",
    *          )
    *   ),
    *   @OA\Parameter(
    *         name="page",
    *         in="path",
    *         required=true,
    *           @OA\Schema(
    *              type="integer",
    *              format="int64",
    *          )
    *   ),
  
     *   @OA\Response(
     *     response=200,description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Resultexams")
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
            $model = $this->model->where(['status' => 1]);
        } elseif ($status == 0) {
            $model = $this->model->where(['status' => 0]);
        }

       $data = $model 

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
     *   path="/api/Resultexams",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
     *   @OA\Response(
     *     response=200, description="ok",
     *     @OA\JsonContent(
     *      type="array",
     *       @OA\Items(ref="#/components/schemas/Resultexams")
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
        return $this->respond($this->model->findAll());
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Resultexams/{id}",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *           @OA\Schema(
    *              type="integer",
    *              format="int64",
    *          )
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Resultexams")
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
        $record = $this->model->find($id);
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
     *   path="/api/Resultexams/myExam/{start}/{end}",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
     *   @OA\Parameter(
     *         name="start",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Parameter(
     *         name="end",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Resultexams")
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
    public function myExam($start = '1652500511', $end = '1652500511')
    {
        $header = $this->request->getServer('HTTP_AUTHORIZATION');

        helper('jwt');
        $decoded = detailJwt($header);


        $classId = $decoded->user->classId;
        $roomId = $decoded->user->roomId;
        $studentId = $decoded->user->id;

        $record = $this->model
            ->select('e.subjectId,sb.name, sum(if(e.answer= resultexams.choise,e.point,0)) point')
            ->join('Resultexams s', 's.id = resultexams.studentId')
            ->join('exams e', 'e.id = resultexams.examId and e.classId = s.classId')
            ->join('subjects sb', 'sb.id = e.subjectId')
            ->join('rooms r', 'r.id = s.roomId')
            ->join('departments d', 'd.id = r.departmentId')
            ->join('classes c', 'c.id = s.classId')
            ->where('resultexams.createdAt BETWEEN "' . $start . '" and "' . $end . '"')
            ->where('s.roomId', $roomId)
            ->where('s.classId', $classId)
            ->where('s.id', $studentId)
            ->groupBy('s.id,e.subjectId')
            ->findAll();

        if (!$record) {
            return $this->respond([]);
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
     *   path="/api/Resultexams/exam/{start}/{end}/{roomId}/{classId}/{status}",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
     *   @OA\Parameter(
     *         name="start",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Parameter(
     *         name="end",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Parameter(
     *         name="roomId",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Parameter(
     *         name="classId",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Parameter(
     *         name="status",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Resultexams")
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
    public function exam($start = '1652500511', $end = '1652500511', $roomId, $classId, $status = 1)
    {
        $record = $this->model
            ->select('s.id, s.name, s.classId, c.name className,r.id roomId, r.name roomName,d.id departmentId, d.name departmentName, e.subjectId, sb.name subjectName,sum(if(e.answer= resultexams.choise,e.point,0)) point')
            ->join('Resultexams s', 's.id = resultexams.studentId')
            ->join('exams e', 'e.id = resultexams.examId and e.classId = s.classId')
            ->join('subjects sb', 'sb.id = e.subjectId')
            ->join('rooms r', 'r.id = s.roomId')
            ->join('departments d', 'd.id = r.departmentId')
            ->join('classes c', 'c.id = s.classId')
            ->where('resultexams.createdAt BETWEEN "' . $start . '" and "' . $end . '"')
            ->where('s.roomId', $roomId)
            ->where('s.classId', $classId)
            ->where('s.status', $status)
            ->groupBy('s.id,e.subjectId')
            ->findAll();
        $res = [];
        $keys = '';
        $index = 0;
        foreach ($record as $key) {
            if ($keys != $key->id) {
                $res[] = [
                    "id" => $key->id,
                    "name" => $key->name,
                    "classId" => $key->classId,
                    "className" => $key->className,
                    "roomId" => $key->roomId,
                    "roomName" => $key->roomName,
                    "departmentId" => $key->departmentId,
                    "departmentName" => $key->departmentName,
                ];
                $keys =  $key->id;
            }
            $res[count($res) - 1]['subject'][] = [
                'id' => $key->subjectId,
                'name' => $key->subjectName,
                'point' => $key->point,
            ];
        }

        if (!$record) {
            return $this->respond([]);
        }

        return $this->respond($res);
    }

    /**
     * Create a new resource object, from "posted" parameters
     *
     * @return mixed
     */
    /**
     * @OA\Post(
     *   path="/api/Resultexams",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
    
     * @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Resultexams"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=201, description="created",
     *      @OA\JsonContent(ref="#/components/schemas/Resultexams")
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

        $entity = new EntitiesResultexams();
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
     *   path="/api/Resultexams/{id}",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *           @OA\Schema(
    *              type="integer",
    *              format="int64",
    *          )
     *   ), 
     *  @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Resultexams"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=200, description="updated",
     *      @OA\JsonContent(ref="#/components/schemas/Resultexams")
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



        $entity = new EntitiesResultexams();
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
     *   path="/api/Resultexams/{id}",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *           @OA\Schema(
    *              type="integer",
    *              format="int64",
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
     *   path="/api/Resultexams/fromFile",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
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

        $subjectEntity = new EntitiesResultexams();
        $this->model->transStart();
        foreach ($data as $x => $row) {
            if ($x == 0) {
                continue;
            }
            if ($row[0] == '')
                continue;
            $subjectEntity->studentId  = $row[0];
            $subjectEntity->examId = $row[1];
            $subjectEntity->choise = $row[2];
            $subjectEntity->status = $row[3];

            if (!$this->model->save($subjectEntity)) {
                return $this->respond(
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

      /**
     * @OA\Post(
     *   path="/api/Resultexams/count",
     *   summary="Resultexams",
     *   description="Resultexams",
     *   tags={"Resultexams"},
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
     *      @OA\JsonContent(ref="#/components/schemas/Resultexams")
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
}
