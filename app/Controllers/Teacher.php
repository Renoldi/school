<?php

namespace App\Controllers;

use App\Entities\Teacher as EntitiesTeacher;
use OpenApi\Annotations as OA;
use App\Libraries\StdobjeToArray;
use App\Models\Teacher as ModelsTeacher;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\I18n\Time;
use CodeIgniter\RESTful\ResourceController;
use Exception;

class Teacher extends ResourceController
{
  protected $modelName = ModelsTeacher::class;
  protected $format = 'json';
  use ResponseTrait;
  /**
   * @OA\Get(
   * path="/api/Teacher/paging/{status}/{perpage}/{page}",
   * summary="Teacher",
   * description="Teacher",
   * tags={"Teacher"},
   * @OA\Parameter(
   *   name="status",
   *   in="path",
   *   required=true,
   *   @OA\Schema(
   *    type="integer",
   *    format="int64",
   *  example="1"
   *   )
   * ),
   * @OA\Parameter(
   *   name="perpage",
   *   in="path",
   *   required=true,
   *    @OA\Schema(
   *    type="integer",
   *    format="int64",
   *  example="20"
   *   )
   * ),
   * @OA\Parameter(
   *   name="page",
   *   in="path",
   *   required=true,
   *   @OA\Schema(
   *    type="integer",
   *    format="int64",
   *  example="1"
   *   )
   * ),
 
   * @OA\Response(
   *  response=200,description="ok",
   *  @OA\JsonContent(ref="#/components/schemas/Teacher")
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * @OA\Response(
   *  response=404,description="404 not found",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 404),
   *  @OA\Property(property="error",type="double",example = 404),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
   * security={{"token": {}}},
   * )
   */
  public function paging($status = "all", $perpage = 20, $page = 1)
  {
    $model = $this->model;
    if ($status == 1) {
      $model = $this->model->where(['teachers.statusId' => 1]);
    } elseif ($status == 0) {
      $model = $this->model->where(['teachers.statusId' => 0]);
    }

    $data = $model
      ->select('
      teachers.id,teachers.email,teachers.nip,teachers.name,teachers.gender,teachers.dob,teachers.mutation,teachers.ipAddress,teachers.about,teachers.finishEducationLevel,CONCAT("' . base_url() . '/",teachers.image) as image,teachers.address,teachers.phone,
      s.id statusId, s.name statusName,
      p.id privilegeId, p.name privilegeName,
      es.id employeeId, es.name employeeName,
      r.id rankId, r.name rankName,
      g.id groupId, g.name groupName,
      sch.id schoolId, sch.name schoolName,
      m.id majorId, m.name majorName')
      // ->alias('t')
      ->join('status s', 's.id=teachers.statusId', 'left')
      ->join('privileges p', 'p.id=teachers.privilegeId', 'left')
      ->join('employee es', 'es.id=teachers.employeeId', 'left')
      ->join('ranks r', 'r.id=teachers.rankId', 'left')
      ->join('groups g', 'g.id=teachers.groupId', 'left')
      ->join('schools sch', 'sch.id=teachers.schoolId', 'left')
      ->join('majors m', 'm.id=teachers.majorId', 'left')
      ->where('teachers.privilegeId !=',1)
      ->paginate($perpage, 'default', $page);
    // ->findAll();
    // return  $this->respond([$model->getLastQuery()->getQuery()]);

    $countPage = $model->pager->getPageCount();
    $currentPage = $model->pager->getCurrentPage();
    $lastPage = $model->pager->getLastPage();
    $firstPage = $model->pager->getFirstPage();
    $perPage = $model->pager->getPerPage();
    // $details = $model->pager->getDetails();

    if ($page > $countPage)
      return $this->respond([
        'totalPage' => $countPage,
        'currentPage' => $currentPage,
        'lastPage' => $lastPage,
        'firstPage' => $firstPage,
        'perPage' => $perPage,
        'data' => []
      ]);

    else {
      return $this->respond([
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
   * path="/api/Teacher",
   * summary="Subjects",
   * description="Subjects",
   * tags={"Teacher"},
   * @OA\Response(
   *  response=200,description="ok",
   *  @OA\JsonContent(
   *  type="array",
   *  @OA\Items(ref="#/components/schemas/Teacher")
   *  ),
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * security={{"token": {}}},
   * )
   */
  public function index()
  {
    return $this->respond(
      $this->model
        ->select(' id,email,nip,name,gender,dob,privilegeId,rankId,rankTmt,groupId,schoolId,majorId,finishEducationLevel,mutation,ipAddress,about,CONCAT("' . base_url() . '/",image) as image,s.id statusId, s.name statusName, es.id employeeId, es.name employeeName ,isPn,address,phone,createdAt,updatedAt,deletedAt')
        ->where('statusId', 1)
        ->where('teachers.privilegeId !=',1)
        ->join('status s', 's.id=teachers.statusId')

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
   * path="/api/Teacher/{id}",
   * summary="Subjects",
   * description="Subjects",
   * tags={"Teacher"},
   * @OA\Parameter(
   *   name="id",
   *   in="path",
   *   required=true,
   * @OA\Schema(
   *              type="integer",
   *              format="int64",
   *              example="1"
   *          )
   * ),
   * @OA\Response(
   *  response=200,description="ok",
   *  @OA\JsonContent(ref="#/components/schemas/Teacher")
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * @OA\Response(
   *  response=404,description="404 not found",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 404),
   *  @OA\Property(property="error",type="double",example = 404),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
   * security={{"token": {}}},
   * )
   */
  public function show($id = null)
  {
    $record = $this->model
      ->select('
    teachers.id,teachers.email,teachers.nip,teachers.name,teachers.gender,teachers.dob,teachers.mutation,teachers.ipAddress,teachers.about,teachers.finishEducationLevel,CONCAT("' . base_url() . '/",teachers.image) as image,teachers.address,teachers.phone,
    s.id statusId, s.name statusName,
    p.id privilegeId, p.name privilegeName,
    es.id employeeId, es.name employeeName,
    r.id rankId, r.name rankName,
    g.id groupId, g.name groupName,
    sch.id schoolId, sch.name schoolName,
    m.id majorId, m.name majorName')
      ->join('status s', 's.id=teachers.statusId', 'left')
      ->join('privileges p', 'p.id=teachers.privilegeId', 'left')
      ->join('employee es', 'es.id=teachers.employeeId', 'left')
      ->join('ranks r', 'r.id=teachers.rankId', 'left')
      ->join('groups g', 'g.id=teachers.groupId', 'left')
      ->join('schools sch', 'sch.id=teachers.schoolId', 'left')
      ->join('majors m', 'm.id=teachers.majorId', 'left')
      ->where('teachers.privilegeId !=',1)
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
   * path="/api/Teacher",
   * summary="Subjects",
   * description="Subjects",
   * tags={"Teacher"},
 
   * @OA\RequestBody(
   *  required=true,
   *  @OA\MediaType(
   *  mediaType="application/json",
   *  @OA\Schema(ref="#/components/schemas/Teacher"),
   *  )
   * ),
   * @OA\Response(
   *  response=201,description="created",
   *  @OA\JsonContent(ref="#/components/schemas/Teacher")
   * ),
   * @OA\Response(
   *  response=400,description="Request error",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 400),
   *  @OA\Property(property="error",type="double",example = 400),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
   * security={{"token": {}}},
   * )
   */
  public function create()
  {
    $data = $this->request->getVar();
    if ($data == null) {
      return $this->fail("data not valid");
    }

    $entity = new EntitiesTeacher();
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
   * path="/api/Teacher/{id}",
   * summary="Subjects",
   * description="Subjects",
   * tags={"Teacher"},
   * @OA\Parameter(
   *   name="id",
   *   in="path",
   *   required=true,
   * @OA\Schema(
   *              type="integer",
   *              format="int64",
   *              example="1"
   *          )
   * ),
   * @OA\RequestBody(
   *  required=true,
   *  @OA\MediaType(
   *  mediaType="application/json",
   *  @OA\Schema(ref="#/components/schemas/Teacher"),
   *  )
   * ),
   * @OA\Response(
   *  response=200,description="updated",
   *  @OA\JsonContent(ref="#/components/schemas/Teacher")
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * @OA\Response(
   *  response=404,description="404 not found",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 404),
   *  @OA\Property(property="error",type="double",example = 404),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
   * security={{"token": {}}},
   * )
   */
  public function update($id = null)
  {
    $data = $this->request->getVar();
    if ($data == null) {
      return $this->fail("data not valid");
    }

    $entity = new EntitiesTeacher();
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
   * path="/api/Teacher/{id}",
   * summary="Subjects",
   * description="Subjects",
   * tags={"Teacher"},
   * @OA\Parameter(
   *   name="id",
   *   in="path",
   *   required=true,
   * @OA\Schema(
   *              type="integer",
   *              format="int64",
   *              example="1"
   *          )
   * ),
   * @OA\Response(
   *  response=200,description="ok",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 200),
   *  @OA\Property(property="error",type="double",example = null),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * @OA\Response(
   *  response=404,description="404 not found",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 404),
   *  @OA\Property(property="error",type="double",example = 404),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "Data Deleted"),
   *  )
   *  )
   * ),
   * security={{"token": {}}},
   * )
   */
  public function delete($id = null)
  {
    $data = $this->model->find($id);
    if ($data) {
      if ($this->model
      ->where('teachers.privilegeId !=',1)
      ->delete($id)) {
        $response = [
          'status' => 200,
          'error' => null,
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
   * path="/api/Teacher/login",
   * summary="Subjects",
   * description="Subjects",
   * tags={"Teacher"},
 
   * @OA\RequestBody(
   *  required=true,
   *  @OA\MediaType(
   *  mediaType="application/json",
   *  @OA\Schema(
   *   @OA\Property(
   *    property="email",
   *    type="string",example="admins@admin.com"
   *   ),
   *   @OA\Property(
   *    property="password",
   *    type="string",example="admin"
   *   ),
   *  ),
   *  )
   * ),
   * @OA\Response(
   *  response=200,description="ok",
   *  @OA\JsonContent(
   *   @OA\Property(
   *    property="message",
   *    type="string",
   *   ),
   *   @OA\Property(
   *    property="token",
   *    type="string",
   *   ),
   * )
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * @OA\Response(
   *  response=404,description="404 not found",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 404),
   *  @OA\Property(property="error",type="double",example = 404),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
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
        'status' => 200,
        'error' => true,
        'messages' => $this->validator->getErrors()

      ];

      return $this->respondCreated($response);
    } else {

      $user = $this->model
        ->select("teachers.*,p.name privilege, s.name status,es.name employeeName")
        ->join('privileges p', 'p.id=teachers.privilegeId')
        ->join('status s', 's.id=teachers.statusId')
        ->join('employee es', 'es.id=teachers.employeeId')
        ->where('email', $email)
        ->where('teachers.statusId', 1)
        ->first();

      if (is_null($user)) {
        return $this->respond(['error' => 'Invalid username '], 401);
      }

      $pwd_verify = password_verify($password, $user->password);

      if (!$pwd_verify) {
        return $this->respond(['error' => 'Invalid password.'], 401);
      }
      $iat = new Time(); // current timestamp value
      $entity = new EntitiesTeacher();
      $entity->ipAddress = $this->request->getServer('REMOTE_ADDR');
      $entity->about = "login";

      if (!$this->model->update($user->id, $entity)) {
        return $this->fail(['error' => 'fail login'], 401);
      }

      $exp = $iat->addMonths(1);

      $users = array(
        "id" => $user->id,
        'nip' => $user->nip,
        'name' => $user->name,
        'gender' => $user->gender,
        'dob' => $user->dob,
        'email' => $user->email,
        'image' => $user->image,
        // 'statusid' => $user->statusId,
        'status' => $user->status,
        // 'employeeId' => $user->employeeId,
        'employeeName' => $user->employeeName,
        // 'privilegeId' => $user->privilegeId,
        'privilege' => $user->privilege,
      );
      $payload = array(
        "iss" => $user->privilege,
        "aud" => array(
          "my-api-Teacher",
          $this->request->getServer('REMOTE_ADDR')
        ),
        "sub" => base_url('api/Teacher/details'),
        "iat" => $iat->getTimestamp(), //Time the JWT issued at
        "exp" => $exp->getTimestamp(),
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
   * path="/api/Teacher/details",
   * summary="Subjects",
   * description="Subjects",
   * tags={"Teacher"},
   * @OA\Response(
   *  response=200,description="ok",
   *  @OA\JsonContent(
   *   @OA\Property(
   *    property="message",
   *    type="string",
   *   ),
   *   @OA\Property(
   *    property="token",
   *    type="string",
   *   ),
   * )
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * @OA\Response(
   *  response=404,description="404 not found",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 404),
   *  @OA\Property(property="error",type="double",example = 404),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
   * security={{"token": {}}},
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
  //  $data = password_hash($pass,PASSWORD_BCRYPT);
  //  $response = [
  //   'password' => $data,
  //   'origin' => $pass,
  //   'length' => strlen($data)
  //  ];
  //  return $this->respond($response);
  // }

  /**
   * @OA\Post(
   * path="/api/Teacher/count",
   * summary="Teacher",
   * description="Teacher",
   * tags={"Teacher"},
   * @OA\RequestBody(
   *  required=true,
   *  @OA\MediaType(
   *  mediaType="application/json",
   *  @OA\Schema(
   *   @OA\Property(
   *    property="select",
   *    type="string",
   *   ),
   *   @OA\Property(
   *    property="groupBy",
   *    type="string",
   *   ),
   *   @OA\Property(
   *    property="where",type="object",
   *   @OA\Property(property="id",type="string"),
   *   )
   *  ),
   *  )
   * ),
   * @OA\Response(
   *  response=200,description="ok",
   *  @OA\JsonContent(ref="#/components/schemas/Teacher")
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * @OA\Response(
   *  response=404,description="404 not found",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 404),
   *  @OA\Property(property="error",type="double",example = 404),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
   * security={{"token": {}}},
   * )
   */
  public function count()
  {
    // {
    //  "select": "gender",
    //  "groupBy": "gender",
    //  "where": {
    //  "classId": 2,
    //  "roomId": 1
    //  }
    // }
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
        $record = $this->model
        ->where('teachers.privilegeId !=',1)
        ->select($groupBy . ',count(*) total');
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
   * @OA\Get(
   * path="/api/Teacher/countDuration",
   * summary="Teacher",
   * description="Teacher",
   * tags={"Teacher"},
   * @OA\Response(
   *  response=200,description="ok",
   *  @OA\JsonContent(ref="#/components/schemas/Teacher")
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * @OA\Response(
   *  response=404,description="404 not found",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 404),
   *  @OA\Property(property="error",type="double",example = 404),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
   * security={{"token": {}}},
   * )
   */
  public function countDuration()
  {

    $this->model->select('teachers.id,teachers.name, ifnull(tteachers.teachertasks,0) tasks,ifnull(hr.hoomrooms,0)rooms,ifnull(steachers.subjectteacher,0)subjects , (ifnull(tteachers.teachertasks,0)+ifnull(hr.hoomrooms,0)+ifnull(steachers.subjectteacher,0) ) total')
      ->join('(SELECT teachers.id,teachers.name, sum(ifnull(tteachers.duration, 0)) as teachertasks from teacher t JOIN teachertasks tt on teachers.id = tteachers.teacherId group by teachers.id) tt', 'tteachers.id = teachers.id')
      ->join('(SELECT teachers.id,teachers.name, sum(ifnull(hr.duration, 0)) as hoomrooms from teacher t JOIN hoomrooms hr on teachers.id = hr.teacherId group by teachers.id ) hr', 'hr.id = teachers.id', 'left')
      ->join('(SELECT teachers.id,teachers.name,sum(ifnull(steachers.duration, 0)) as subjectteacher from teacher t JOIN subjectteacher st on teachers.id = steachers.teacherId group by teachers.id ) st', 'steachers.id = teachers.id', 'left')
      ->where('teachers.privilegeId !=',1);
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
   * path="/api/Teacher/fromFile",
   * summary="Subjects",
   * description="Subjects",
   * tags={"Teacher"},
   * @OA\RequestBody(
   *  @OA\MediaType(
   *  mediaType="multipart/form-data",
   *  @OA\Schema(
   *   @OA\Property(
   *   description="file to upload",
   *   property="userfile",
   *   type="string",
   *   format="binary",
   *   ),
   *  )
   *  )
   * ),
   * @OA\Response(
   *  response=200,description="ok",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 200),
   *  @OA\Property(property="error",type="double",example = null),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "not found"),
   *  )
   *  )
   * ),
   * @OA\Response(
   *  response=400,description="Bad Request"
   * ),
   * @OA\Response(
   *  response=404,description="404 not found",
   *  @OA\JsonContent( 
   *  @OA\Property(property="status",type="double",example = 404),
   *  @OA\Property(property="error",type="double",example = 404),
   *  @OA\Property(
   *   property="messages",type="object",
   *   @OA\Property(property="error",type="string",example = "Data Deleted"),
   *  )
   *  )
   * ),
   * security={{"token": {}}},
   * )
   */
  public function fromFile()
  {
    // var_dump("renoldi");exit;
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

    $data = $spreadsheet->getActiveSheet()->toArray();

    $entity = new EntitiesTeacher();
    $this->model->transStart();
    foreach ($data as $x => $row) {
      if ($x == 0) {
        continue;
      }
      if ($row[1] == '')
        continue;
      $entity->nip = ($row[0]);
      $entity->name = ($row[1]);
      $entity->gender = ($row[2]);
      $entity->dob = ($row[3]);
      $entity->email = ($row[4]);
      $entity->image = ($row[5]);
      $entity->statusId = ($row[6]);
      $entity->privilegeId = ($row[7]);
      $entity->password = ($row[8]);
      $entity->employeeId = ($row[9]);
      $entity->address = ($row[10]);
      $entity->phone = ($row[11]);
      $entity->rankId = ($row[12]);
      $entity->rankTmt = ($row[13]);
      $entity->groupId = ($row[14]);
      $entity->educationlevelId = ($row[15]);
      $entity->schoolId = ($row[16]);
      $entity->majorId = ($row[17]);
      $entity->finishEducationLevel = ($row[18]);
      $entity->mutation = ($row[19]);

      if (!$this->model->save($entity)) {
        // return $this->respond([$this->model->getLastQuery()->getQuery()]);

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
