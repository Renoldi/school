<?php

namespace App\Controllers;

use App\Entities\Teachers as EntitiesTeachers;
use App\Libraries\StdobjeToArray;
use App\Models\Teachers as ModelsTeachers;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\RESTful\ResourceController;
use Exception;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class Teachers extends ResourceController
{
    protected $modelName = ModelsTeachers::class;
    protected $format    = 'json';
    use ResponseTrait;


    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    /**
     * @OA\Get(
     *   path="/api/Teachers",
     *   summary="fleet document",
     *   description="fleet document",
     *   tags={"Teachers"},
     *   @OA\Response(
     *     response=200, description="ok",
     *     @OA\JsonContent(
     *      type="array",
     *       @OA\Items(ref="#/components/schemas/Teachers")
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
     *   path="/api/Teachers/{id}",
     *   summary="fleet document",
     *   description="fleet document",
     *   tags={"Teachers"},
     *   @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *   ), 
     *   @OA\Response(
     *     response=200, description="ok",
     *      @OA\JsonContent(ref="#/components/schemas/Teachers")
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
     * Create a new resource object, from "posted" parameters
     *
     * @return mixed
     */
    /**
     * @OA\Post(
     *   path="/api/Teachers",
     *   summary="fleet document",
     *   description="fleet document",
     *   tags={"Teachers"},
    
     * @OA\RequestBody(
     *     required=true,
     *     @OA\MediaType(
     *       mediaType="application/json",
     *      @OA\Schema(ref="#/components/schemas/Teachers"),
     *     )
     *   ),
     *   @OA\Response(
     *     response=201, description="created",
     *      @OA\JsonContent(ref="#/components/schemas/Teachers")
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
        $entity = new EntitiesTeachers();
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
     *   path="/api/Teachers/{id}",
     *   summary="fleet document",
     *   description="fleet document",
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
     *     response=200, description="updated",
     *      @OA\JsonContent(ref="#/components/schemas/Teachers")
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
     *   summary="fleet document",
     *   description="fleet document",
     *   tags={"Teachers"},
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
     *   path="/api/Teachers/login",
     *   summary="fleet document",
     *   description="fleet document",
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

            $response = [
                'status'   => 200,
                'error'    => true,
                'messages' => $this->validator->getErrors()

            ];

            return $this->respondCreated($response);
        } else {

            $user =  $this->model
                ->select("teachers.*,p.name as privilege, s.name as subject")
                ->join('privileges p', 'p.id=teachers.privilegeId')
                ->join('subjects s', 's.id=teachers.subjectId')
                ->where('email', $email)
                ->first();

            if (is_null($user)) {
                return $this->respond(['error' => 'Invalid username '], 401);
            }

            $pwd_verify = password_verify($password, $user->password);

            if (!$pwd_verify) {
                return $this->respond(['error' => 'Invalid password.'], 401);
            }
            $iat = time(); // current timestamp value
            $entity = new EntitiesTeachers();
            $entity->ipAddress = $this->request->getServer('REMOTE_ADDR');
            $entity->about = "login";

            if (!$this->model->update($user->id, $entity)) {
                return $this->fail(['error' => 'fail login'], 401);
            }
            
            $exp = $iat + (3600 * 24 * (365 / 12));
            $users = array(
                "id" => $user->id,
                'nip' => $user->nip,
                'name' => $user->name,
                'gender' => $user->gender,
                'position' => $user->position,
                'dob' => $user->dob,
                'subject' => $user->subject,
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
                "sub" => "login ",
                "iat" => $iat, //Time the JWT issued at
                "exp" =>  $exp, // Expiration time of token,
                "user" => $users,
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
     *   path="/api/Teachers/details",
     *   summary="fleet document",
     *   description="fleet document",
     *   tags={"Teachers"},
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
                'message' => 'detail teacher',
                'decoded' => $decoded,
            ];
            return $this->respond($response);
        } catch (Exception $ex) {
            return $this->failUnauthorized();
        }
    }

    // public function setPassword($pass = null)
    // {
    //     $data = password_hash($pass, PASSWORD_BCRYPT);
    //     $response = [
    //         'password' => $data,
    //         'origin' => $pass,
    //         'length' => strlen($data)
    //     ];
    //     return $this->respond($response);
    // }

    /**
     * @OA\Post(
     *   path="/api/Teachers/fromXl",
     *   summary="fleet document",
     *   description="fleet document",
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

        // $subject = new Subjects();
        $subjectEntity = new EntitiesTeachers();
        $this->model->transStart();
        foreach ($data as $x => $row) {
            if ($x == 0) {
                continue;
            }
            $subjectEntity->nip = $row[0];
            $subjectEntity->name = $row[1];
            $subjectEntity->gender = $row[2];
            $subjectEntity->position = $row[3];
            $subjectEntity->dob = $row[4];
            $subjectEntity->subjectId = $row[5];
            $subjectEntity->email = $row[6];
            $subjectEntity->image = $row[7];
            $subjectEntity->status = $row[8];
            $subjectEntity->privilegeId = $row[9];
            $subjectEntity->password = $row[10];

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
