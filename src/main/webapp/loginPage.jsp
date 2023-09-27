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
    <title>Login</title>
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
            <a href="/" class=""> Home </a>
          </div>
        </div>
      </div>
    </div>
    <div class="body-container flex justify-between items-center mt-10 mx-14">
      <div class="left-side">
        <div class="container mx-auto">
          <img src="assets/loginPage.jpg" alt="loginPage" class="w-[380px]" />
        </div>
      </div>
      <div class="right-side">
        <div class="container mx-auto">
          <h4 class="text-xl font-medium">Login In to Voter INDIA</h4>
          <p class="mt-3 text-sm font-medium">
            Not registered yet ?
            <a href="registerPage" class="text-[#24C8AD] font-bold">Register</a>
          </p>
          <p class="mt-3 text-sm text-green-500 font-black">${msg}</p>
          <p class="mt-3 text-sm text-red-500 font-bold">${error}</p>
          <form class="form" action="login" method="post">
            <div class="flex flex-col mt-6">
              <label for="userid" class="font-md text-gray-700 pb-1"
                >User ID</label
              >
              <input
                type="number"
                class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                name="userId"
                placeholder="Unique user ID"
                required
              />
            </div>
            <div class="flex flex-col my-3">
              <label for="password" class="font-md text-gray-700 pb-1"
                >Password</label
              >
              <input
                type="password"
                class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                name="password"
                placeholder="*********"
                maxlength="15"
                minlength="8"
                required
              />
            </div>
            <input
              type="submit"
              class="bg-[#24C8AD] hover:bg-[#33B9A2] cursor-pointer text-white w-full font-bold py-2 px-4 rounded-[10px] focus:outline-none focus:shadow-outline"
              value="Login"
            />
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
