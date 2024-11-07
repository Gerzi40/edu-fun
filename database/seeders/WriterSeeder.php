<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Writer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');
        $categories = Category::all();
        $photo_paths = [
            '/assets/writerPhoto/writer1.jpg',
            '/assets/writerPhoto/writer2.jpg',
            '/assets/writerPhoto/writer3.jpg',
        ];
        // bikin 3 writer
        for($i = 0; $i < 3; $i++){
            Writer::create([
                'name' => $faker->name,
                'category_id' => $categories->random()->id,
                'photo_path' => $photo_paths[$i],
            ]);
        }
    }
}
