<?php
namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    // Menampilkan daftar kursus
    public function index()
    {
        $courses = Course::all();
        return view('courses.index', compact('courses'));
    }

    // Menampilkan form untuk membuat kursus baru
    public function create()
    {
        return view('courses.create');
    }

    // Menyimpan kursus baru
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'duration' => 'required|integer',
        ]);

        Course::create($request->all());

        return redirect()->route('courses.index')
                         ->with('success', 'Kursus berhasil ditambahkan.');
    }

    // Menampilkan detail kursus
    public function show(Course $course)
{
    $course->load('materials');  // Lazy load relationship
    return view('courses.show', compact('course'));
}


    // Menampilkan form untuk mengedit kursus
    public function edit(Course $course)
    {
        return view('courses.edit', compact('course'));
    }

    // Mengupdate informasi kursus
    public function update(Request $request, Course $course)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'duration' => 'required|integer',
        ]);

        $course->update($request->all());

        return redirect()->route('courses.index')
                         ->with('success', 'Kursus berhasil diperbarui.');
    }

    // Menghapus kursus
    public function destroy(Course $course)
    {
        $course->delete();

        return redirect()->route('courses.index')
                         ->with('success', 'Kursus berhasil dihapus.');
    }
}
