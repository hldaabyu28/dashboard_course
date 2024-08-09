@extends('layouts.app')

@section('title', isset($course) ? 'Edit Kursus' : 'Tambah Kursus')

@section('content')
    <h1>{{ isset($course) ? 'Edit Kursus' : 'Tambah Kursus' }}</h1>

    <form action="{{ isset($course) ? route('courses.update', $course->id) : route('courses.store') }}" method="POST">
        @csrf
        @if(isset($course))
            @method('PUT')
        @endif

        <div class="mb-3">
            <label for="title" class="form-label">Judul Kursus</label>
            <input type="text" class="form-control" id="title" name="title" value="{{ old('title', $course->title ?? '') }}" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Deskripsi Kursus</label>
            <textarea class="form-control" id="description" name="description" rows="4" required>{{ old('description', $course->description ?? '') }}</textarea>
        </div>

        <div class="mb-3">
            <label for="duration" class="form-label">Durasi (jam)</label>
            <input type="number" class="form-control" id="duration" name="duration" value="{{ old('duration', $course->duration ?? '') }}" required>
        </div>

        <button type="submit" class="btn btn-success">{{ isset($course) ? 'Perbarui' : 'Simpan' }}</button>
        <a href="{{ route('courses.index') }}" class="btn btn-secondary">Batal</a>
    </form>
@endsection
