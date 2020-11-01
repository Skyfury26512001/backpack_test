<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\SclassRequest;
use App\Models\School;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
use Illuminate\Support\Facades\App;

/**
 * Class SclassCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class SclassCrudController extends CrudController
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
//        dd(123);
        CRUD::setModel(\App\Models\Sclass::class);
        $id = request()->route()->parameter('school_id');
        if ($id != null) {
            CRUD::setRoute(config('backpack.base.route_prefix') . '/school-' . $id . '/class_list');
            $this->crud->addClause('where', 'school_id', '=', $id);
            CRUD::setEntityNameStrings(School::find($id)->name . ' : Class ', School::find($id)->name . ' : Classes ');
        } else {
            CRUD::setRoute(config('backpack.base.route_prefix') . '/school/sclass');
            CRUD::setEntityNameStrings('Class', 'Classes');
        }
        // select2 filter
        $this->crud->addFilter([
            'name'  => 'school_id',
            'type'  => 'select2',
            'label' => 'School'
        ], function () {
            return \App\Models\School::all()->pluck('name', 'id')->toArray();
        }, function ($value) { // if the filter is active
            $this->crud->addClause('where', 'school_id', $value);
        });

//        $this->crud->addFilter([
//            'name'  => 'schools',
//            'type'  => 'select2_multiple',
//            'label' => 'Schools'
//        ], function () { // the options that show up in the select2
//            return School::all()->pluck('name', 'id')->toArray();
//        }, function ($values) { // if the filter is active
//            foreach (json_decode($values) as $key => $value) {
//                $this->crud->query = $this->crud->query->whereHas('school', function ($query) use ($value) {
//                    $query->Where('school_id', $value);
//                });
//            }
//        });

    }


    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected
    function setupListOperation()
    {
//        CRUD::setFromDb(); // columns
        CRUD::addColumn(['name' => 'name', 'type' => 'text', 'wrapper' => [
            // 'element' => 'a', // the element will default to "a" so you can skip it here
            'href' => function ($crud, $column, $entry, $related_key) {
                return backpack_url('school-' . $entry->school_id . '/class-' . $entry->id . '/student_list');
            },
            // 'class' => 'some-class',
        ]
        ]);
        CRUD::addColumn([
            // relationship count
            'name'   => 'students', // name of relationship method in the model
            'entity' => 'students',
            'type'   => 'relationship_count',
            'label'  => 'Students', // Table column heading
            // OPTIONAL
            'suffix' => ' students', // to show "123 tags" instead of "123 items"

        ]);
        CRUD::addColumn([
            // relationship count
            'name'        => 'school', // name of relationship method in the model
            'entity'      => 'school',
            'type'        => 'select',
            'label'       => 'School Name', // Table column heading
            'wrapper'     => [
                // 'element' => 'a', // the element will default to "a" so you can skip it here
                'href' => function ($crud, $column, $entry, $related_key) {
                    return backpack_url('school-' . $entry->school_id . '/class_list');
                },
                // 'class' => 'some-class',
            ],
            'searchLogic' => function ($query, $column, $searchTerm) {
                $query->orWhereHas('school', function ($q) use ($column, $searchTerm) {
                    $q->where('name', 'like', '%' . $searchTerm . '%');
                });
            }
        ]);

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
    protected
    function setupCreateOperation()
    {
        CRUD::setValidation(SclassRequest::class);

        CRUD::setFromDb(); // fields


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
    protected
    function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }

}
