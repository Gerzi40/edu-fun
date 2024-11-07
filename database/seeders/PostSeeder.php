<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\Writer;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $faker = Faker::create('id_ID');

        // bikin post Data Science
        $dataTitles = 
        ['Machine Learning', 'Deep Learning', 'Natural Language Processing'];
        $dataPhotos =
        ['/assets/postPhoto/DataScience/machineLearning.avif', '/assets/postPhoto/DataScience/deepLearning.avif', '/assets/postPhoto/DataScience/NLP.jpg'];
        // cari writer yang punya category data
        // $dataWriter = DB::table('writers')->where('category_id', '=', 1)->get();
        $dataWriter = Writer::with('category')->where('category_id', 1)->get();
        for($i = 0; $i<3; $i++){
            $dwriter = $dataWriter->random();
            Post::create([
                'title' => $dataTitles[$i],
                'category_id' => $dwriter->category_id,
                'writer_id' => $dwriter->id,
                'body' => $faker->paragraph(10)."\n\n".$faker->paragraph(10),
                'photo_path' => $dataPhotos[$i],
            ]);
        }

        // bikin post Network Security
        $networkTitles = 
        ['Software Security', 'Network Administration', 'Popular Network Technology'];
        $networkPhotos = 
        ['/assets/postPhoto/NetworkSecurity/softwareSecurity.avif', '/assets/postPhoto/NetworkSecurity/networkAdmin.jpg', '/assets/postPhoto/NetworkSecurity/PNT.jpg'];
        $networkWriter = Writer::with('category')->where('category_id', 2)->get();
        for($i = 0; $i<3; $i++){
            $nwriter = $networkWriter->random();
            Post::create([
                'title' => $networkTitles[$i],
                'category_id' => $nwriter->category_id,
                'writer_id' => $nwriter->id,
                'body' => $faker->paragraph(10)."\n\n".$faker->paragraph(10),
                'photo_path' => $networkPhotos[$i],
            ]);
        }

        // for($i = 0; $i < 10; $i++){

        //     $writer = Writer::inRandomOrder()->first();

        //     Post::create([
        //         'title' => $faker->sentence,
        //         'category_id' => $writer->category_id,
        //         'writer_id' => $writer->id,
        //         'body' => $faker->paragraph,
        //         'photo_path' => '',
        //     ]);
        // }
    }
}
