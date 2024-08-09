@extends('layouts.app')

@section('title', 'Daftar Kursus')

@section('content')
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h1>Daftar Kursus</h1>
        <a href="{{ route('courses.create') }}" class="btn btn-primary">Tambah Kursus</a>
    </div>

    @if($courses->isEmpty())
        <div class="alert alert-warning">
            Belum ada kursus yang tersedia.
        </div>
    @else
        <div class="row">
            @foreach ($courses as $course)
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h5 class="card-title">{{ $course->title }}</h5>
                            <p class="card-text">{{ $course->description }}</p>
                            <p class="card-text"><small class="text-muted">Durasi: {{ $course->duration }} jam</small></p>
                            <a href="{{ route('courses.show', $course->id) }}" class="btn btn-outline-primary btn-sm">Lihat Detail</a>
                            <a href="{{ route('courses.edit', $course->id) }}" class="btn btn-outline-secondary btn-sm">Edit</a>
                            <form action="{{ route('courses.destroy', $course->id) }}" method="POST" class="d-inline">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-outline-danger btn-sm">Hapus</button>
                            </form>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endif
@endsection
