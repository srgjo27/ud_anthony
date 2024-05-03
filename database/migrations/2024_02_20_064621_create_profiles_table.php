<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('profiles', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->enum('gender', ['Laki-laki', 'Perempuan'])->nullable();
            $table->enum('age', ['18-25', '26-35', '36-45', '45+'])->nullable();
            $table->string('skin_type_face')->nullable();
            $table->string('hair_issue')->nullable();
            $table->string('skin_type_body')->nullable();
            $table->json('allergy_history')->nullable();
            $table->json('preferred_products')->nullable();
            $table->json('avoided_products')->nullable();
            $table->json('specific_needs')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profiles');
    }
};
