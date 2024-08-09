@extends('layouts.app')

@section('title', isset($material) ? 'Edit Materi' : 'Tambah Materi')

@section('content')
    <h1>{{ isset($material) ? 'Edit Materi' : 'Tambah Materi' }}</h1>

    <form action="{{ isset($material) ? route('courses.materials.update', [$course->id, $material->id]) : route('courses.materials.store', $course->id) }}" method="POST">
        @csrf
        @if(isset($material))
            @method('PUT')
        @endif

        <div class="mb-3">
            <label for="title" class="form-label">Judul Materi</label>
            <input type="text" class="form-control" id="title" name="title" value="{{ old('title', $material->title ?? '') }}" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Deskripsi Materi</label>
            <textarea class="form-control" id="description" name="description" rows="4" required>{{ old('description', $material->description ?? '') }}</textarea>
        </div>

        <div class="mb-3">
            <label for="embed_link" class="form-label">Link Embed Materi</label>
            <input type="url" class="form-control" id="embed_link" name="embed_link" value="{{ old('embed_link', $material->embed_link ?? '') }}" required>
        </div>

        <button type="submit" class="btn btn-success">{{ isset($material) ? 'Perbarui' : 'Simpan' }}</button>
        <a href="{{ route('courses.materials.index', $course->id) }}" class="btn btn-secondary">Batal</a>
    </form>
@endsection
