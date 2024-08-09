@extends('layouts.app')

@section('title', 'Edit Materi')

@section('content')
    <h1>Edit Materi: {{ $material->title }}</h1>

    <form action="{{ route('materials.update', $material->id) }}" method="POST">
        @csrf
        @method('PUT')
    
        <div class="form-group">
            <label for="title">Judul</label>
            <input type="text" name="title" id="title" class="form-control" value="{{ old('title', $material->title) }}" required>
        </div>
    
        <div class="form-group">
            <label for="description">Deskripsi</label>
            <textarea name="description" id="description" class="form-control">{{ old('description', $material->description) }}</textarea>
        </div>
    
        <div class="form-group">
            <label for="embed_link">Link Embed</label>
            <input type="text" name="embed_link" id="embed_link" class="form-control" value="{{ old('embed_link', $material->embed_link) }}">
        </div>
    
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
@endsection
