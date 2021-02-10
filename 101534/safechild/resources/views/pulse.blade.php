<x-app-layout>
{{-- This page displays pulse data --}}

    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Pulse Data') }}
            
        </h2>

        <div class="container">

        <table class="table table-bordered table-hover">

            <thead class="thead-dark">
                <tr>
                <th scope="col" style="width: 200px">ID</th>
                <th scope="col" style="width: 200px">Child Name</th>
                <th scope="col" style="width: 200px">Created at</th>
                <th scope="col" style="width: 200px">Updated at</th>
                <th scope="col" style="width: 200px">Pulse</th>
                </tr>
            </thead>
             {{-- {{ Auth::user()->id }} --}}

            
            @foreach ($pulses as $pulse)
                @if ($pulse->id ==  Auth::user()->id )
                                
            <tbody>
            <tr> 
            <td style="text-align: center;">{{$pulse->id}} </td> 
            <td style="text-align: center;">{{$pulse->childName}} </td> 
             <td style="text-align: center;">{{$pulse->created_at}} </td>  
             <td style="text-align: center;">{{$pulse->updated_at}}</td>  
             <td style="text-align: center;">{{$pulse->pulsevalues}} </td> 
            </tr>
            </tbody>
            @endif

            @endforeach

        </table>
        {{ $pulses->links() }}

    </div>
    </x-slot>    

    
    
    


</x-app-layout>