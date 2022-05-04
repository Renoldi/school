<?php

namespace App\Controllers;

use App\Entities\Students as EntitiesStudents;
use App\Libraries\StdobjeToArray;
use App\Models\Students as ModelsStudents;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\RESTful\ResourceController;
use Exception;

class Students extends ResourceController
{
    protected $modelName = ModelsStudents::class;
    protected $format    = 'json';
    use ResponseTrait;


    /**
     * Return an array of resource objects, themselves in array format
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
     *     response=200, description="ok",
     *     @OA\JsonContent(
     *      type="array",
     *       @OA\Items(ref="#/components/schemas/Students")
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
        $model = $this->model->findAll();

        return $this->respond($model);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Students/paging/{status}/{perpage}/{page}",
     *   summary="Students",
     *   description="Students",
     *   tags={"Students"},
     *   @OA\Parameter(
     *         name="status",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Parameter(
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
     *      @OA\JsonContent(ref="#/components/schemas/Students")
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



    public function paging($status = "all", $perpage = 20, $page = 1)
    {
        if ($status == 1) {
            $model = $this->model->where('status', 1);
        } elseif ($status == 0) {
            $model = $this->model->where('status', 0);
        } else {
            $model = $this->model;
        }

        $data = $model->select('id,nisn,name,gender,status,classId,roomId,CONCAT("' . base_url('assets') . '/",image) as image,privilegeId,email,createdAt,updatedAt')->paginate($perpage, 'default', $page);
        $countPage = $model->pager->getPageCount();
        $currentPage = $model->pager->getCurrentPage();

        if ($page > $countPage)
            return  $this->respond([
                'totalPage' => $countPage,
                'currentPage' => $currentPage,
                'data' => []
            ]);

        else {
            return  $this->respond([
                'totalPage' => $countPage,
                'currentPage' => $currentPage,
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
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Students")
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
     * Create a new resource object, from "posted" parameters
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
     *     response=201, description="created",
     *      @OA\JsonContent(ref="#/components/schemas/Students")
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
        $entity = new EntitiesStudents();
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
     *     response=200, description="updated",
     *      @OA\JsonContent(ref="#/components/schemas/Students")
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
     *     response=200, description="ok",
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

            $user =  $this->model->select("students.*,p.name as privilege, d.name as department, r.name as room")
                ->join('rooms r', 'r.id=students.roomId')
                ->join('privileges p', 'p.id=students.privilegeId')
                ->join('departments d', 'd.id=r.departmentId')
                ->where('email', $email)->first();

            if (is_null($user)) {
                return $this->fail(['error' => 'Invalid username '], 401);
            }

            $pwd_verify = password_verify($password, $user->password);

            if (!$pwd_verify) {
                return $this->fail(['error' => 'Invalid password.'], 401);
            }
            $iat = time(); // current timestamp value
            $entity = new EntitiesStudents();

            $entity->ipAddress = $this->request->getServer('REMOTE_ADDR');
            $entity->about = "login";
            if (!$this->model->update($user->id, $entity)) {
                return $this->failValidationErrors($this->model->errors());
            }
             
            $exp = $iat + (3600 * 24 * (365 / 12));
            $users = array(
                "id" =>  $user->id,
                "name" => $user->name,
                "email" =>  $user->email,
                "image" =>  $user->image,
                "status" => $user->status,
                "createdAt" => $user->createdAt,
                "updatedAt" => $user->updatedAt,
                "department" => $user->department,
                "room" => $user->room,
                "privilege" => $user->privilege,
            );
            $payload = array(
                "iss" => base_url(),
                "aud" => array(
                    "my-api-User",
                    base_url('api/Students/details'),
                    $this->request->getServer('REMOTE_ADDR')
                ),
                "sub" => "login " . $user->email,
                "iat" => $iat, //Time the JWT issued at
                "exp" =>  $exp, // Expiration time of token,
                "user" => $users
            );

            helper('jwt');
            $token = generate($payload);
            $response = [
                'user' => $users,
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
     *     response=200, description="ok",
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
    public function details()
    {
        $header = $this->request->getServer('HTTP_AUTHORIZATION');

        try {

            helper('jwt');
            $decoded = detailJwt($header);
            $response = [
                'message' => 'detail student',
                'decoded' => $decoded
            ];
            return $this->respond($response);
        } catch (Exception $ex) {
            return $this->failUnauthorized();
        }
    }

    public function setPassword($pass = null)
    {
        $data = password_hash($pass, PASSWORD_BCRYPT);
        $response = [
            'password' => $data,
            'origin' => $pass,
            'length' => strlen($data)
        ];
        return $this->respond($response);
    }

    /**
     * @OA\Post(
     *   path="/api/Students/fromXl",
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

        $subjectEntity = new EntitiesStudents();
        $this->model->transStart();
        foreach ($data as $x => $row) {
            if ($x == 0) {
                continue;
            }
            $subjectEntity->nisn = $row[0];
            $subjectEntity->email = $row[1];
            $subjectEntity->name = $row[2];
            $subjectEntity->gender = $row[3];
            $subjectEntity->password = $row[4];
            $subjectEntity->status = $row[5];
            $subjectEntity->classId = $row[6];
            $subjectEntity->roomId = $row[7];
            $subjectEntity->privilegeId = $row[7];

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
