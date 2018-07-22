<?php

namespace customer\controllers;

use Yii;
use customer\models\MeasurementProfile;
use customer\models\MeasurementProfileSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use usni\UsniAdaptor;
/**
 * MeasurementProfileController implements the CRUD actions for MeasurementProfile model.
 */
class MeasurementProfileController extends Controller {

    /**
     * @inheritdoc
     */
    public function behaviors() {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all MeasurementProfile models.
     * @return mixed
     */
    public function actionIndex() {
        $searchModel = new MeasurementProfileSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->query->where(['customer_id'=> UsniAdaptor::app()->user->id]);
        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single MeasurementProfile model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new MeasurementProfile model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        $model = new MeasurementProfile;
        if ($model->load(UsniAdaptor::app()->request->post())) {
            $model->customer_id = UsniAdaptor::app()->user->id;
            if ($model->save(false)) {
                $searchModel = new MeasurementProfileSearch();
                $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
                return $this->redirect('index');
            }
        } else {
            return $this->render('_form', ['model' => $model,]);
        }
    }

    /**
     * Updates an existing MeasurementProfile model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = $this->findModel($id);

        if ($model->load(UsniAdaptor::app()->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing MeasurementProfile model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the MeasurementProfile model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return MeasurementProfile the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = MeasurementProfile::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
