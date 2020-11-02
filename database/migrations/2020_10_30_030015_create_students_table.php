<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Enums\Gender;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->smallInteger('display_order');
            $table->unsignedBigInteger('class_id');

            $table->bigInteger('user_id');
            $table->string('name',255);
            $table->string('school_hope',255);
            $table->string('name_kane',255);
            $table->enum('gender',[Gender::Male,Gender::Female]);
            $table->string('address',255);
            $table->string('school_current',255);
            $table->string('class_current',255);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students');
    }
}
