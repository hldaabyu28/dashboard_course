<?php
namespace App\Http\Controllers;

use App\Models\Material;
use App\Models\Course;
use Illuminate\Http\Request;

class MaterialController extends Controller
{
    // Menampilkan daftar materi dalam kursus tertentu
    public function index(Course $course)
    {
        $materials = $course->materials; // Ambil semua materi terkait dengan course
        return view('courses.show', compact('course', 'materials'));
    }

    // Menampilkan form untuk menambahkan materi baru
    public function create(Course $course)
    {
        return view('materials.create', compact('course'));
    }

    // Menyimpan materi baru
    public function store(Request $request, Course $course)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'embed_link' => 'nullable|url',
        ]);

        $course->materials()->create($request->all());

        return redirect()->route('courses.show', ['course' => $course->id])
                 ->with('success', 'Materi berhasil ditambahkan.');

    }

    // Menampilkan form untuk mengedit materi
    public function edit(Material $material)
{
    $course = $material->course; // Mengambil course terkait
    return view('materials.edit', compact('course', 'material'));
}


    // Memperbarui materi yang ada
    public function update(Request $request, Material $material)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'embed_link' => 'nullable|url',
        ]);
    
        $material->update($validatedData);
    
        return redirect()->route('courses.show', ['course' => $material->course_id])
                         ->with('success', 'Materi berhasil diperbarui.');
    }
    

    // Menghapus materi
    public function destroy(Material $material)
{
    $material->delete();

    return redirect()->route('courses.show', ['course' => $material->course_id])
                     ->with('success', 'Materi berhasil dihapus.');
}

}