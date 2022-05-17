<?php

namespace App\Controllers;

use App\Entities\Teachers as EntitiesTeachers;
 use OpenApi\Annotations as OA;
use App\Libraries\StdobjeToArray;
use App\Models\Teachers as ModelsTeachers;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\I18n\Time;
use CodeIgniter\RESTful\ResourceController;
use Exception;

class Teachers extends ResourceController
{
    protected $modelName = ModelsTeachers::class;
    protected $format    = 'json';
    use ResponseTrait;
    /**
     * @OA\Get(
     *   path="/api/Teachers/paging/{status}/{perpage}/{page}",
     *   summary="Teachers",
     *   description="Teachers",
     *   tags={"Teachers"},
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
     *      @OA\JsonContent(ref="#/components/schemas/Teachers")
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
            ->select(' id,email,nip,name,gender,dob,privilegeId,rankId,rankTmt,groupId,educationLevelId,schoolId,majorId,finishEducationLevel,mutation,ipAddress,about,CONCAT("' . base_url() . '/",image) as image,status,isPn,address,phone,createdAt,updatedAt,deletedAt')
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
     * Return an array of resource objects,themselves in array format
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Teachers",
     *   summary="Subjects",
     *   description="Subjects",
     *   tags={"Teachers"},
     *   @OA\Response(
     *     response=200,description="ok",
     *     @OA\JsonContent(
     *      type="array",
     *       @OA\Items(ref="#/components/schemas/Teachers")
     *     ),
     *   ),
     *   @OA\Response(
     *     response=400,description="Bad Request"
     *   ),
     *   security={{"token": {}}},
     * )
     */
    public function index()
    {
        return $this->respond(
            $this->model
                ->select(' id,email,nip,name,gender,dob,privilegeId,rankId,rankTmt,groupId,educationLevelId,schoolId,majorId,finishEducationLevel,mutation,ipAddress,about,CONCAT("' . base_url() . '/",image) as image,status,isPn,address,phone,createdAt,updatedAt,deletedAt')
                ->where('status', 1)
                ->findAll()
        );
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Teachers/{id}",
     *   summary="Subjects",
     *   description="Subjects",
     *   tags={"Teachers"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ),
     *   @OA\Response(
     *     response=200,description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Teachers")
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
    public function show($id = null)
    {
        $record = $this->model
            ->select('id,email,nip,name,gender,dob,privilegeId,rankId,rankTmt,groupId,educationLevelId,schoolId,majorId,finishEducationLevel,mutation,ipAddress,about,CONCAT("' . base_url() . '/",image) as image,status,isPn, address,phone,createdAt,updatedAt,deletedAt')
            ->find($id);
        if (!$record) {
            return $this->failNotFound(sprintf(
                'user with id %d not found',
                $id
            ));
        }

        return $this->respond($record);
    }

    /**
     * Create a new resource object,from "posted" parameters
     *
     * @return mixed
     */
    /**
     * @OA\Post(
     *   path="/api/Teachers",
     *   summary="Subjects",
     *   description="Subjects",
     *   tags={"Teachers"},
    
     * @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Teachers"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=201,description="created",
     *      @OA\JsonContent(ref="#/components/schemas/Teachers")
     *   ),
     *   @OA\Response(
     *     response=400,description="Request error",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status",type="double",example = 400),
     *      @OA\Property(property="error",type="double",example = 400),
     *        @OA\Property(
     *          property="messages",type="object",
     *          @OA\Property(property="error",type="string",example = "not found"),
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

        $entity = new EntitiesTeachers();
        $array = new StdobjeToArray($data);
        $entity->fill($array->get());
        if (!$this->model->save($entity)) {
            return $this->failValidationErrors($this->model->errors());
        }

        return $this->respondCreated($entity, 'post created');
    }

    /**
     * Add or update a model resource,from "posted" properties
     *
     * @return mixed
     */
    /**
     * @OA\Put(
     *   path="/api/Teachers/{id}",
     *   summary="Subjects",
     *   description="Subjects",
     *   tags={"Teachers"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ),
     *  @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Teachers"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=200,description="updated",
     *      @OA\JsonContent(ref="#/components/schemas/Teachers")
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
    public function update($id = null)
    {
        $data = $this->request->getVar();
        if ($data == null) {
            return $this->fail("data not valid");
        }

        $entity = new EntitiesTeachers();
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
     *   path="/api/Teachers/{id}",
     *   summary="Subjects",
     *   description="Subjects",
     *   tags={"Teachers"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ),
     *   @OA\Response(
     *     response=200,description="ok",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status",type="double",example = 200),
     *      @OA\Property(property="error",type="double",example = null),
     *        @OA\Property(
     *          property="messages",type="object",
     *          @OA\Property(property="error",type="string",example = "not found"),
     *       )
     *     )
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
     *          @OA\Property(property="error",type="string",example = "Data Deleted"),
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
     *   path="/api/Teachers/login",
     *   summary="Subjects",
     *   description="Subjects",
     *   tags={"Teachers"},
   
     *  @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(
     *          @OA\Property(
     *              property="email",
     *              type="string",example="admins@admin.com"
     *          ),
     *          @OA\Property(
     *              property="password",
     *              type="string",example="admin"
     *          ),
     *      ),
     *     )
     *   ),
     *   @OA\Response(
     *     response=200,description="ok",
     *      @OA\JsonContent(
     *            @OA\Property(
     *              property="message",
     *              type="string",
     *          ),
     *          @OA\Property(
     *              property="token",
     *              type="string",
     *          ),
     * )
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
     * )
     */
    public function login()
    {
        $email = $this->request->getVar('email');
        $password = $this->request->getVar('password');
        $rules = [
            "email" => "required|valid_email",
            "password" => "required|min_length[5]",
        ];
        if (!$this->validate($rules)) {

            $response = [
                'status'   => 200,
                'error'    => true,
                'messages' => $this->validator->getErrors()

            ];

            return $this->respondCreated($response);
        } else {

            $user =  $this->model
                ->select("teachers.*,p.name as privilege")
                ->join('privileges p', 'p.id=teachers.privilegeId')
                ->where('email', $email)
                ->first();

            if (is_null($user)) {
                return $this->respond(['error' => 'Invalid username '], 401);
            }

            $pwd_verify = password_verify($password, $user->password);

            if (!$pwd_verify) {
                return $this->respond(['error' => 'Invalid password.'], 401);
            }
            $iat = new Time(); // current timestamp value
            $entity = new EntitiesTeachers();
            $entity->ipAddress = $this->request->getServer('REMOTE_ADDR');
            $entity->about = "login";

            if (!$this->model->update($user->id, $entity)) {
                return $this->fail(['error' => 'fail login'], 401);
            }

            $exp = $iat->addYears(1);

            $users = array(
                "id" => $user->id,
                'nip' => $user->nip,
                'name' => $user->name,
                'gender' => $user->gender,
                'position' => $user->position,
                'dob' => $user->dob,
                'email' => $user->email,
                'image' => $user->image,
                'status' => $user->status,
                'privilege' => $user->privilege,
            );
            $payload = array(
                "iss" => base_url(),
                "aud" => array(
                    "my-api-Teachers",
                    base_url('api/Teachers/details'),
                    $this->request->getServer('REMOTE_ADDR')
                ),
                "sub" => "school|" . $this->request->getServer('REQUEST_TIME'),
                "iat" => $iat->getTimestamp(), //Time the JWT issued at
                "exp" =>  $exp->getTimestamp(),
                "user" => $users,
            );

            helper('jwt');
            $token = generate($payload);
            $response = [
                "token" => $token,
            ];
            return $this->respond($response);
        }
    }

    /**
     * @OA\Get(
     *   path="/api/Teachers/details",
     *   summary="Subjects",
     *   description="Subjects",
     *   tags={"Teachers"},
     *   @OA\Response(
     *     response=200,description="ok",
     *      @OA\JsonContent(
     *            @OA\Property(
     *              property="message",
     *              type="string",
     *          ),
     *          @OA\Property(
     *              property="token",
     *              type="string",
     *          ),
     * )
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
    public function details()
    {
        $header = $this->request->getServer('HTTP_AUTHORIZATION');
        try {
            helper('jwt');
            $decoded = detailJwt($header);
            return $this->respond($decoded);
        } catch (Exception $ex) {
            return $this->failUnauthorized();
        }
    }

    // public function setPassword($pass = null)
    // {
    //     $data = password_hash($pass,PASSWORD_BCRYPT);
    //     $response = [
    //         'password' => $data,
    //         'origin' => $pass,
    //         'length' => strlen($data)
    //     ];
    //     return $this->respond($response);
    // }

    /**
     * @OA\Post(
     *   path="/api/Teachers/count",
     *   summary="Teachers",
     *   description="Teachers",
     *   tags={"Teachers"},
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
     *              property="where",type="object",
     *           @OA\Property(property="id",type="string"),
     *           )
     *      ),
     *     )
     *   ),
     *   @OA\Response(
     *     response=200,description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Teachers")
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
     * @OA\Post(
     *   path="/api/Teachers/fromFile",
     *   summary="Subjects",
     *   description="Subjects",
     *   tags={"Teachers"},
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
     *     response=200,description="ok",
     *     @OA\JsonContent(  
     *      @OA\Property(property="status",type="double",example = 200),
     *      @OA\Property(property="error",type="double",example = null),
     *        @OA\Property(
     *          property="messages",type="object",
     *          @OA\Property(property="error",type="string",example = "not found"),
     *       )
     *     )
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
     *          @OA\Property(property="error",type="string",example = "Data Deleted"),
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

        $ext = $file_excel->getClientExtension();
        if ($ext == 'xls') {
            $render = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
        } else {
            $render = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
        }
        $spreadsheet = $render->load($file_excel);

        $data =  $spreadsheet->getActiveSheet()->toArray();

        $entity = new EntitiesTeachers();
        $this->model->transStart();
        foreach ($data as $x => $row) {
            if ($x == 0) {
                continue;
            }
            if ($row[0] == '')
                continue;
            $entity->nip  = $row[0];
            $entity->name = $row[1];
            $entity->gender = $row[2];
            $entity->dob = $row[3];
            $entity->email = $row[4];
            $entity->image = $row[5];
            $entity->status = $row[6];
            $entity->privilegeId = $row[7];
            $entity->password = $row[8];
            $entity->isPn = $row[9];
            $entity->address = $row[10];
            $entity->phone = $row[11];
            $entity->rankId = $row[12];
            $entity->rankTmt = $row[13];
            $entity->groupId = $row[14];
            $entity->educationLevelId = $row[15];
            $entity->schoolId = $row[16];
            $entity->majorId = $row[17];
            $entity->finishEducationLevel = $row[18];
            $entity->mutation = $row[19];

            if (!$this->model->save($entity)) {
                // return  $this->respond([$this->model->getLastQuery()->getQuery()]);

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
