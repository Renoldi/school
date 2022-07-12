<?php

namespace App\Controllers;

use App\Entities\Student as EntitiesStudent;
use OpenApi\Annotations as OA;
use App\Libraries\StdobjeToArray;
use App\Models\Student as ModelsStudent;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\I18n\Time;
use CodeIgniter\RESTful\ResourceController;
use Exception;

class Student extends ResourceController
{
    protected $modelName = ModelsStudent::class;
    protected $format    = 'json';
    use ResponseTrait;

    /**
     * Return an array of resource objects,themselves in array format
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Student",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
     *   @OA\Response(
     *     response=200,description="ok",
     *     @OA\JsonContent(
     *      type="array",
     *       @OA\Items(ref="#/components/schemas/Student")
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
        $model = $this->model
            ->select('
                students.id,students.nisn,students.email,students.name,CONCAT("' . base_url() . '/",image) as image,students.gender,students.ipAddress,students.about,students.dayOfBirth,
                c.id classId,c.name className,
                s.id statusId, s.name statusName,
                p.id privilegeId, p.name privilegeName,
                students.roomId,
                students.createdAt,students.updatedAt,students.deletedAt')
            ->findAll();

        return $this->respond($model);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Student/paging/{status}/{perpage}/{page}/{classId}/{roomId}",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
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
     *   @OA\Parameter(
     *         name="classId",
     *         in="path",
     *         required=true,
     *            @OA\Schema(
     *              type="integer",
     *              format="int64",
     *              example="1"
     *          )
     *   ),
     *   @OA\Parameter(
     *         name="roomId",
     *         in="path",
     *         required=true,
     *            @OA\Schema(
     *              type="integer",
     *              format="int64",
     *              example="1"
     *          )
     *   ),
     *   @OA\Response(
     *     response=200,description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Student")
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
    public function paging($status = 1, $perpage = 20, $page = 1, $classId = 0, $roomId = 0)
    {
        $model = $this->model;
        if ($status != 0) {
            $model = $this->model->where(['students.statusId' => $status]);
        } 

        if ($classId != 0) {
            $model = $this->model->where(['students.classId' => $classId]);
        }

        if ($roomId != 0) {
            $model = $this->model->where(['students.roomId' => $roomId]);
        }

        $data = $model
            ->select('
            students.id,students.nisn,students.email,students.name,CONCAT("' . base_url() . '/",image) as image,students.gender,students.ipAddress,students.about,students.dayOfBirth,
            c.id classId,c.name className,
            s.id statusId, s.name statusName,
            p.id privilegeId, p.name privilegeName,
            students.roomId,r.name roomName,
            students.createdAt,students.updatedAt,students.deletedAt')
            ->join('statuss s', 's.id=students.statusId')
            ->join('privileges p', 'p.id=students.privilegeId')
            ->join('classes c', 'c.id=students.classId')
            ->join('rooms r', 'r.id=students.roomId')

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
     * @OA\Get(
     *   path="/api/Student/where/{name}",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
     *   @OA\Parameter(
     *         name="name",
     *         in="path",
     *         required=true,
     *           @OA\Schema(
     *              type="string",
     *              example=""
     *          )
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Student")
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
    public function where($name = '!')
    {

        if (is_numeric($name)) {
            $this->model
                ->where('id', $name);
        } else if ($name != "!") {
            $this->model
                ->like('name', $name, 'both');
        }

        $record = $this->model
            ->select('id,name')
            ->where('statusId', 1)
            ->limit(10)
            ->get()->getResult();
        if (!$record) {
            return $this->failNotFound(sprintf(
                'not found',
                $name
            ));
        }
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Student/{id}",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ),
     *   @OA\Response(
     *     response=200,description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Student")
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
            ->select('
                students.id,students.nisn,students.email,students.name,CONCAT("' . base_url() . '/",image) as image,students.gender,students.ipAddress,students.about,students.dayOfBirth,
                c.id classId,c.name className,
                s.id statusId, s.name statusName,
                p.id privilegeId, p.name privilegeName,
                students.roomId,r.name roomName,
                students.createdAt,students.updatedAt,students.deletedAt')
            ->join('statuss s', 's.id=students.statusId')
            ->join('privileges p', 'p.id=students.privilegeId')
            ->join('classes c', 'c.id=students.classId')
            ->join('rooms r', 'r.id=students.roomId')
            ->where('statusId', 1)

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
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Post(
     *   path="/api/Student/count",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
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
     *      @OA\JsonContent(ref="#/components/schemas/Student")
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

        $record = $this->model->findAll();

        // return  $this->respond([
        //     $this->model->getLastQuery()->getQuery(),
        // ]);

        if (!$record) {
            return $this->failNotFound(sprintf(
                'user not found',
            ));
        }
        return $this->respond(
            $record
        );
    }

    /**
     * Create a new resource object,from "posted" parameters
     *
     * @return mixed
     */
    /**
     * @OA\Post(
     *   path="/api/Student",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
     * @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Student"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=201,description="created",
     *      @OA\JsonContent(ref="#/components/schemas/Student")
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

        $entity = new EntitiesStudent();
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
     *   path="/api/Student/{id}",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ),
     *  @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Student"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=200,description="updated",
     *      @OA\JsonContent(ref="#/components/schemas/Student")
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

        $entity = new EntitiesStudent();
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
     *   path="/api/Student/{id}",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
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
     *   path="/api/Student/login",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
   
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
            return $this->fail($this->validator->getErrors());
        } else {

            $user =  $this->model
                ->select('
                students.id, students.email, students.name, students.classId, students.roomId, students.gender, students.placeOfBirth, students.dayOfBirth, students.nis, students.nisn, students.noKk, students.nik, students.numberOfSiblings, students.fromOfSiblings, students.orphan, students.schoolId, students.address, students.fatherNik, students.fatherName, students.fatherEmployeeId, students.fatherSchoolId, students.fatherincome, students.motherNik, students.motherName, students.motherEmployeeId, students.motherSchoolId, students.motherincome, CONCAT("' . base_url() . '/",students.image) as image, students.phone, students.phoneFamily, students.password, students.ipAddress, students.about, students.statusId, students.privilegeId, students.createdAt, students.updatedAt, students.deletedAt,
                c.name as class,p.name privilegeName,d.id as departmentId,d.name as department,r.name as roomName, s.name status')
                ->join('rooms r', 'r.id=students.roomId')
                ->join('privileges p', 'p.id=students.privilegeId')
                ->join('classes c', 'c.id=students.classId')
                ->join('departments d', 'd.id=r.departmentId')
                ->join('statuss s', 's.id=students.statusId')
                ->where('students.email', $email)
                ->where('students.privilegeId !=', 8)
                ->where('students.statusId', 1)
                ->first();

            if (is_null($user)) {
                return $this->failNotFound('username not found');
            }

            $pwd_verify = password_verify($password, $user->password);

            if (!$pwd_verify) {
                return $this->fail('Invalid password');
            }
            $iat = new Time(); // current timestamp value
            $entity = new EntitiesStudent();

            $entity->ipAddress = $this->request->getServer('REMOTE_ADDR');
            $entity->about = "login";
            if (!$this->model->update($user->id, $entity)) {
                return $this->fail(['error' => 'fail login'], 401);
            }

            $exp = $iat->addMonths(1);
            $users = array(
                "id" =>  $user->id,
                "name" => $user->name,
                "email" =>  $user->email,
                "image" =>  $user->image,
                "statusId" => $user->statusId,
                "status" => $user->status,
                "departmentId" => $user->departmentId,
                "department" => $user->department,
                "classId" => $user->classId,
                "class" => $user->class,
                "roomId" => $user->roomId,
                "roomName" => $user->roomName,
                // "privilegeId" => $user->privilegeId,
                "privilegeName" => $user->privilegeName,
            );
            $payload = array(
                "iss" => $user->privilege,
                "aud" => array(
                    "my-api-User",
                    $this->request->getServer('REMOTE_ADDR')
                ),
                "sub" => base_url('api/Student/details'),
                "iat" => $iat->getTimestamp(), //Time the JWT issued at
                "exp" =>  $exp->getTimestamp(), // Expiration time of token,
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
     *   path="/api/Student/details",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
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

    /**
     * @OA\Post(
     *   path="/api/Student/fromFile",
     *   summary="Student",
     *   description="Student",
     *   tags={"Student"},
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
        // $file_excel->getMimeType();

        $ext = $file_excel->getClientExtension();
        if ($ext == 'xls') {
            $render = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
        } else {
            $render = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
        }
        $spreadsheet = $render->load($file_excel);

        $data =  $spreadsheet->getActiveSheet()->toArray();

        $subjectEntity = new EntitiesStudent();
        $this->model->transStart();
        foreach ($data as $x => $row) {
            if ($x == 0) {
                continue;
            }
            if ($row[0] == '')
                continue;

            $subjectEntity->email = ($row[0]);
            $subjectEntity->name = ($row[1]);
            $subjectEntity->classId = ($row[2]);
            $subjectEntity->roomId = ($row[3]);
            $subjectEntity->gender = ($row[4]);
            $subjectEntity->placeOfBirth = ($row[5]);
            $subjectEntity->dayOfBirth = ($row[6]);
            $subjectEntity->nis = ($row[7]);
            $subjectEntity->nisn = ($row[8]);
            $subjectEntity->noKk = ($row[9]);
            $subjectEntity->nik = ($row[10]);
            $subjectEntity->numberOfSiblings = ($row[11]);
            $subjectEntity->fromOfSiblings = ($row[12]);
            $subjectEntity->orphan = ($row[13]);
            $subjectEntity->schoolId = ($row[14]);
            $subjectEntity->address = ($row[15]);
            $subjectEntity->fatherName = ($row[16]);
            $subjectEntity->fatherEmployeeId = ($row[17]);
            $subjectEntity->motherName = ($row[18]);
            $subjectEntity->motherEmployeeId = ($row[19]);
            $subjectEntity->phoneFamily = ($row[20]);
            $subjectEntity->password = ($row[21]);
            $subjectEntity->statusId = ($row[22]);
            $subjectEntity->privilegeId = ($row[23]); 

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
}
