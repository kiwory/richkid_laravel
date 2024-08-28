@extends('layouts.web')
@section("page-title", "User Registration")

@section("body")

   <div id="main-user-reg">
       <div class="user-reg-left-cont">

       </div>


       <div class="user-reg-right-cont">

           <h1 class="reg-title">Sign Up</h1>
           <form action="{{ route('create-user') }}" method="POST">
               @csrf
               <div class="row">
               <section class="col-lg-6">
                   <input type="text" name="first-name" placeholder="First Name" class="form-control custom-input" required>
               </section>
               <section class="col-lg-6">
                   <input type="text" name="last-name"  placeholder="Last Name" class="form-control custom-input" required>
               </section>
               </div>
               <div class="row mt-3">
                   <section class="col-lg-6">
                       <input type="email" name="email" placeholder="Your Email" class="form-control custom-input" required>
                   </section>
                   <section class="col-lg-6">
                       <input type="text" name="phone"  placeholder="Your Phone number" class="form-control custom-input" required>
                   </section>
               </div>
               <div class="row mt-3">
                   <section class="col-lg-6">
                       <input type="password" name="password" placeholder="Password" class="form-control custom-input" required>
                   </section>
                   <section class="col-lg-6">
                       <input type="password" name="con-password"  placeholder="Confirm Password" class="form-control custom-input" required>
                   </section>
               </div>
               <div class="row mt-3">
                   <button type="submit" class="btn-bg-success"> Sign Up </button>
               </div>
           </form>

       </div>
   </div>

@endsection
