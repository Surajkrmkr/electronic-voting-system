<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
    <title>Voter INDIA</title>
  </head>
  <script src="https://cdn.tailwindcss.com/"></script>
  <style>
    * {
      font-family: "Inter", sans-serif;
    }
  </style>
  <body class="m-10">
    <div class="header mx-14">
      <div class="container mx-auto">
        <div class="flex justify-between items-center">
          <div class="flex items-center">
            <a href="/"
              ><img src="assets/logo.jpg" alt="Voter India" class="w-22"
            /></a>
          </div>
          <div class="flex items-center font-bold">
            <a href="loginPage" class=""> Login </a>
            <a
              href="registerPage"
              class="bg-[#FEB546] text-white font-medium text-sm py-1 px-3 rounded-full shadow-xl ml-6"
            >
              Register
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="body-container flex justify-between items-center mt-10 mx-14">
      <div class="left-side">
        <div class="container mx-auto">
          <img src="assets/voteQuote.jpg" alt="landingPage" class="w-64" />
        </div>
        <p class="pt-10 text-[30px]">
          Are you new here?
          <a href="registerPage" class="text-[#FEB546] font-black">Register</a>
        </p>
      </div>
      <div class="right-side">
        <div class="container mx-auto">
          <img
            src="assets/landingPage.jpg"
            alt="landingPage"
            class="w-[450px]"
          />
        </div>
      </div>
    </div>
  </body>
</html>
