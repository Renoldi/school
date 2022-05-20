<?php

namespace App\Controllers;

use App\Entities\Students as EntitiesStudents;
use OpenApi\Annotations as OA;
use App\Libraries\StdobjeToArray;
use App\Models\Students as ModelsStudents;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\I18n\Time;
use CodeIgniter\RESTful\ResourceController;
use Exception;

class Students extends ResourceController
{
    protected $modelName = ModelsStudents::class;
    protected $format    = 'json';
    use ResponseTrait;

    /**
     * Return an array of resource objects,themselves in array format
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Students",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
     *   @OA\Response(
     *     response=200,description="ok",
     *     @OA\JsonContent(
     *      type="array",
     *       @OA\Items(ref="#/components/schemas/Students")
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
                students.id,students.nisn,students.email,students.name,CONCAT("' . base_url() . '/",image) as image,students.gender,students.ipAddress,students.about,students.dob,
                c.id classId,c.name className,
                s.id statusId s.name statusName,
                p.id privilegeId p.name privilegeName,
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
     *   path="/api/Students/paging/{status}/{perpage}/{page}/{classId}/{roomId}",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
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
     *      @OA\JsonContent(ref="#/components/schemas/Students")
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
    public function paging($status = "all", $perpage = 20, $page = 1, $classId = 0, $roomId = 0)
    {
        $model = $this->model;
        if ($status == 1) {
            $model = $this->model->where(['students.statusId' => 1]);
        } elseif ($status == 0) {
            $model = $this->model->where(['students.statusId' => 0]);
        }

        if ($classId != 0) {
            $model = $this->model->where(['students.classId' => $classId]);
        }

        if ($roomId != 0) {
            $model = $this->model->where(['students.roomId' => $roomId]);
        }

        $data = $model
            ->select('
            students.id,students.nisn,students.email,students.name,CONCAT("' . base_url() . '/",image) as image,students.gender,students.ipAddress,students.about,students.dob,
            c.id classId,c.name className,
            s.id statusId s.name statusName,
            p.id privilegeId p.name privilegeName,
            students.roomId,
            students.createdAt,students.updatedAt,students.deletedAt')
            ->join('status s', 's.id=students.statusId')
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
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Students/{id}",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ),
     *   @OA\Response(
     *     response=200,description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Students")
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
                students.id,students.nisn,students.email,students.name,CONCAT("' . base_url() . '/",image) as image,students.gender,students.ipAddress,students.about,students.dob,
                c.id classId,c.name className,
                s.id statusId s.name statusName,
                p.id privilegeId p.name privilegeName,
                students.roomId,
                students.createdAt,students.updatedAt,students.deletedAt')
            ->join('status s', 's.id=students.statusId')
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
     *   path="/api/Students/count",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
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
     *      @OA\JsonContent(ref="#/components/schemas/Students")
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
     *   path="/api/Students",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
     * @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Students"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=201,description="created",
     *      @OA\JsonContent(ref="#/components/schemas/Students")
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

        $entity = new EntitiesStudents();
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
     *   path="/api/Students/{id}",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ),
     *  @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Students"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=200,description="updated",
     *      @OA\JsonContent(ref="#/components/schemas/Students")
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



        $entity = new EntitiesStudents();
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
     *   path="/api/Students/{id}",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
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
     *   path="/api/Students/login",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
   
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
                ->select("students.*,c.name as class,p.name as privilege,d.id as departmentId,d.name as department,r.name as room, s.name status")
                ->join('rooms r', 'r.id=students.roomId')
                ->join('privileges p', 'p.id=students.privilegeId')
                ->join('classes c', 'c.id=students.classId')
                ->join('departments d', 'd.id=r.departmentId')
                ->join('status s', 's.id=students.statusId')
                ->where('email', $email)
                ->where('students.statusId', 1)
                ->first();

            if (is_null($user)) {
                return $this->fail(['error' => 'Invalid username '], 401);
            }

            $pwd_verify = password_verify($password, $user->password);

            if (!$pwd_verify) {
                return $this->fail(['error' => 'Invalid password.'], 401);
            }
            $iat = new Time(); // current timestamp value
            $entity = new EntitiesStudents();

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
                "room" => $user->room,
                // "privilegeId" => $user->privilegeId,
                "privilege" => $user->privilege,
            );
            $payload = array(
                "iss" => $user->privilege,
                "aud" => array(
                    "my-api-User",
                    $this->request->getServer('REMOTE_ADDR')
                ),
                "sub" => base_url('api/Students/details'),
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
     *   path="/api/Students/details",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
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
     *   path="/api/Students/fromFile",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
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

        $subjectEntity = new EntitiesStudents();
        $this->model->transStart();
        foreach ($data as $x => $row) {
            if ($x == 0) {
                continue;
            }
            if ($row[0] == '')
                continue;

            $subjectEntity->email = trim($row[1]);
            $subjectEntity->name = trim($row[2]);
            $subjectEntity->classId = trim($row[3]);
            $subjectEntity->roomId = trim($row[4]);
            $subjectEntity->gender = trim($row[5]);
            $subjectEntity->placeOfBirth = trim($row[6]);
            $subjectEntity->dayOfBirth = trim($row[7]);
            $subjectEntity->nis = trim($row[8]);
            $subjectEntity->nisn = trim($row[9]);
            $subjectEntity->noKk = trim($row[10]);
            $subjectEntity->nik = trim($row[11]);
            $subjectEntity->numberOfSiblings = trim($row[12]);
            $subjectEntity->fromOfSiblings = trim($row[13]);
            $subjectEntity->orphan = trim($row[14]);
            $subjectEntity->schoolId = trim($row[15]);
            $subjectEntity->address = trim($row[16]);
            $subjectEntity->fatherNik = trim($row[17]);
            $subjectEntity->fatherName = trim($row[18]);
            $subjectEntity->fatherEmployeeId = trim($row[19]);
            $subjectEntity->fatherSchoolId = trim($row[20]);
            $subjectEntity->fatherincome = trim($row[21]);
            $subjectEntity->motherNik = trim($row[22]);
            $subjectEntity->motherName = trim($row[23]);
            $subjectEntity->motherEmployeeId = trim($row[24]);
            $subjectEntity->motherSchoolId = trim($row[25]);
            $subjectEntity->motherincome = trim($row[26]);
            $subjectEntity->image = trim($row[27]);
            $subjectEntity->phone = trim($row[28]);
            $subjectEntity->phoneFamily = trim($row[29]);
            $subjectEntity->password = trim($row[30]);
            $subjectEntity->ipAddress = trim($row[31]);
            $subjectEntity->about = trim($row[32]);
            $subjectEntity->statusId = trim($row[33]);
            $subjectEntity->privilegeId = trim($row[34]);


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
