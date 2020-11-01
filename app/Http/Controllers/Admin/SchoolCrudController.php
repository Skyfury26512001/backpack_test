<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\SchoolRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
use http\Env\Request;
use Illuminate\Routing\Route;

/**
 * Class SchoolCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class SchoolCrudController extends CrudController
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
        CRUD::setModel(\App\Models\School::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/school');
        CRUD::setEntityNameStrings('school', 'schools');
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
        CRUD::addColumn(['name'    => 'name', 'type' => 'text',
                         'wrapper' => [
                             // 'element' => 'a', // the element will default to "a" so you can skip it here
                             'href' => function ($crud, $column, $entry, $related_key) {
                                 return backpack_url('school-' . $entry->id . '/class_list');
                             },
                             // 'class' => 'some-class',
                         ]
                         ,]);
        CRUD::addColumn([
            // relationship count
            'name'   => 'sclasses', // name of relationship method in the model
            'type'   => 'relationship_count',
            'label'  => 'Classes', // Table column heading
            // OPTIONAL
            'suffix' => ' classes', // to show "123 tags" instead of "123 items
        ]);
        $this->crud->addColumn([
            'label'           => 'Classes',
            'type'            => 'select',
            'entity'          => 'sclasses',
            'model'           => 'App\Models\Sclass',
            'visibleInTable'  => true, // no point, since it's a large text
            'visibleInModal'  => true, // would make the modal too big
            'visibleInExport' => true, // not important enough
            'visibleInShow'   => false,
            'searchLogic'     => function ($query, $column, $searchTerm) {
                $query->orWhereHas('sclasses', function ($q) use ($column, $searchTerm) {
                    $q->where('name', 'like', '%' . $searchTerm . '%');
                });
            }
        ]);
        CRUD::addColumn([
            // relationship count
            'name'   => 'students',
            'entity' => 'students',
            'type'   => 'relationship_count',
            'label'  => 'Students',
            'suffix' => ' student',
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
    protected function setupCreateOperation()
    {
        CRUD::setValidation(SchoolRequest::class);

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
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }

    protected function setupShowOperation()
    {

    }
}
