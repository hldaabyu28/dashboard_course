@extends('layouts.app')

@section('title', $course->title)

@section('content')
    <h1>{{ $course->title }}</h1>
    <p>{{ $course->description }}</p>
    <p><strong>Durasi:</strong> {{ $course->duration }} jam</p>

    <a href="{{ route('courses.materials.create', $course->id) }}" class="btn btn-primary mb-3">Tambah Materi</a>

    <h2>Daftar Materi</h2>

    @if($course->materials->isEmpty())
        <div class="alert alert-warning">
            Belum ada materi yang tersedia.
        </div>
    @else
        <div class="list-group">
            @foreach ($course->materials as $material)
                <div class="list-group-item">
                    <h5>{{ $material->title }}</h5>
                    <p>{{ $material->description }}</p>
                    <a href="{{ $material->embed_link }}" target="_blank" class="btn btn-outline-primary btn-sm">Lihat Materi</a>
                    <a href="{{ route('materials.edit', $material->id) }}" class="btn btn-outline-secondary btn-sm">Edit</a>
                    <form action="{{ route('materials.destroy', $material->id) }}" method="POST" class="d-inline">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-outline-danger btn-sm">Hapus</button>
                    </form>
                    
                </div>
            @endforeach
        </div>
    @endif

    <a href="{{ route('courses.index') }}" class="btn btn-secondary mt-3">Kembali ke Daftar Kursus</a>
@endsection
