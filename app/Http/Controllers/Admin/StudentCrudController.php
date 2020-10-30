<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\StudentRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class StudentCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class StudentCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     *
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\Student::class);
        $class_id = request()->route()->parameter('class_id');
        $school_id = request()->route()->parameter('class_id');
//        dd($this->crud);
        if ($class_id != null && $school_id != null) {
            CRUD::setRoute(config('backpack.base.route_prefix') . '/school-'.$school_id .'/class-' . $class_id . '/student_list');
            $this->crud->addClause('where', 'class_id', '=', $class_id);

        } else {
            CRUD::setRoute(config('backpack.base.route_prefix') . '/school/sclass/student');
        }
        CRUD::setEntityNameStrings('student', 'students');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
//        CRUD::setFromDb(); // columns
        CRUD::addColumn(['name' => 'name', 'type' => 'text']);
        CRUD::addColumn(
            [
                'name' => 'sclass',
                'label' => 'Class',
                'type' => 'select',
                'attribute' => 'name',
                'entity' => 'sclass',
                'wrapper' => [
                    // 'element' => 'a', // the element will default to "a" so you can skip it here
                    'href' => function ($crud, $column, $entry, $related_key) {
                        return backpack_url('class-' . $related_key . '/student_list');
                    },
                    'target' => '_blank',
                    // 'class' => 'some-class',
                ]
            ]
        );
        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']);
         */
    }

    /**
     * Define what happens when the Create operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(StudentRequest::class);

        CRUD::setFromDb(); // fields
        $class_id = request()->route()->parameter('class_id');
        if ($class_id != null) {
            $this->crud->removeColumn('class_id');
            $this->crud->removeField('class_id');
//            $this->crud->addField('class_id');
            CRUD::addField([
                'name' => 'class_id',
                'label' => 'Class',
                'type' => 'select',
                'entity' => 'sclass',
                // optional - manually specify the related model and attribute
                'model' => "App\Models\Sclass", // related model
                'attribute' => 'name', // foreign key attribute that is shown to user
                // optional - force the related options to be a custom query, instead of all();
                'options' => (function ($query) {
                    return $query->orderBy('name', 'ASC')->get();
                }), //  you can use this to filter the results show in the select
                'default' => $class_id,
                'attributes' => [
                    'placeholder' => 'Some text when empty',
                    'class' => 'form-control some-class',
                ], // change the HTML attributes of your input
                'wrapper' => [
                    'class' => 'form-group col-md-12'
                ], // change the HTML attributes for the field wrapper - mostly for resizing fields
            ]);
//            dd(123);
        }
//        dd($this->crud);
        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number']));
         */
    }

    /**
     * Define what happens when the Update operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }
}
