@extends('layouts.web')
@section("page-title", "List Of User")

@section("body")

    <div class="p-5">
        <h2>Vusha User List</h2>
        <table class="table table-striped table-hover">
            <thead>
               <tr>
                   <th>Join At</th>
                   <th>User Name</th>
                   <th>Email Address</th>
                   <th>Phone Number</th>
                   <th>Action</th>
               </tr>
            </thead>
            <tbody>
                @foreach($users as $data)
                <tr>
                    <td>{{ $data->created_at }}</td>
                    <td>{{ $data->name }}</td>
                    <td>{{ $data->email }}</td>
                    <td>{{ $data->phone }}</td>
                    <td>
                        <a href="{{ route('remove-user', [$data->id]) }}"><button class="btn bg-danger">Remove</button></a>
                        <button class="btn bg-warning">Update</button>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>


@endsection
