<x-app-layout>
{{-- This page displays location data --}}

    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Location Data') }}
            
        </h2>

        <div class="container">

            <table class="table table-bordered table-hover">
    
                <thead class="thead-dark">
                    <tr>
                    <th scope="col" style="width: 200px">ID</th>
                    <th scope="col" style="width: 200px">Child Name</th>
                    <th scope="col" style="width: 200px">Created at</th>
                    <th scope="col" style="width: 200px">Updated at</th>
                    <th scope="col" style="width: 200px">Latitude</th>
                    <th scope="col" style="width: 200px">Longitude</th>

                    </tr>
                </thead>
                 {{-- {{ Auth::user()->id }} --}}
    
                
                @foreach ($locations as $location)
                    @if ($location->id ==  Auth::user()->id )
                                    
                <tbody>
                <tr> 
                <td style="text-align: center;">{{$location->id}} </td> 
                <td style="text-align: center;">{{$location->childName}} </td> 
                 <td style="text-align: center;">{{$location->created_at}} </td>  
                 <td style="text-align: center;">{{$location->updated_at}}</td>  
                 <td style="text-align: center;">{{$location->childLatitude}} </td> 
                 <td style="text-align: center;">{{$location->childLongitude}} </td> 

                </tr>
                </tbody>
                @endif
    
                @endforeach
    
            </table>
            {{ $locations->links() }}
    
        </div>
    </x-slot>    

    
</x-app-layout>