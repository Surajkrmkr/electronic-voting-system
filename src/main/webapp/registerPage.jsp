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
    <script src="https://cdn.tailwindcss.com/"></script>
    <link
      rel="stylesheet"
      href="https://unpkg.com/flowbite@1.4.5/dist/flowbite.min.css"
    />
    <title>Register</title>
  </head>
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
    <div class="body-container">
      <form
        class="form flex flex-col items-center"
        action="register"
        method="post"
      >
        <div class="flex justify-center items-center mt-10 mx-14 space-x-4">
          <div class="left-side">
            <div class="container mx-auto">
              <div class="flex flex-col mt-2">
                <label for="fname" class="font-md text-gray-700 pb-1 pl-1"
                  >First Name</label
                >
                <input
                  type="text"
                  class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  name="firstName"
                  placeholder="Enter your first name"
                  required
                />
              </div>
              <div class="flex flex-col mt-2">
                <label for="lname" class="font-md text-gray-700 pb-1 pl-1"
                  >Last Name</label
                >
                <input
                  type="text"
                  class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  name="lastName"
                  placeholder="Enter your last name"
                  required
                />
              </div>
              <div class="flex flex-col mt-2">
                <label for="phone" class="font-md text-gray-700 pb-1 pl-1"
                  >Phone</label
                >
                <input
                  type="text"
                  class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  name="phone"
                  placeholder="Enter your number"
                  required
                />
              </div>
              <div class="flex flex-col mt-2">
                <label for="address" class="font-md text-gray-700 pb-1 pl-1"
                  >Address</label
                >
                <input
                  type="text"
                  class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  name="address"
                  placeholder="Enter your address"
                  required
                />
              </div>
            </div>
          </div>
          <div class="right-side">
            <div class="container mx-auto">
              <div class="flex flex-col mt-2">
                <label for="dob" class="font-md text-gray-700 pb-1 pl-1"
                  >DOB</label
                >
                <input
                  type="date"
                  class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  name="dob"
                  placeholder="Enter your DOB"
                  required
                />
              </div>
              <div class="flex justify-center items-center">
                <div class="flex flex-col mt-2 w-[120px]">
                  <label for="age" class="font-md text-gray-700 pb-1 pl-1"
                    >Age</label
                  >
                  <input
                    type="number"
                    class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    name="age"
                    placeholder="age"
                    required
                  />
                </div>
                <div class="flex flex-col justify-center items-center mt-3">
                  <div class="flex space-x-4 ml-4">
                    <label class="inline-flex items-center mt-1">
                      <input
                        type="radio"
                        name="gender"
                        value="m"
                        class="form-radio h-3 w-3"
                        checked
                      /><span class="ml-2 text-sm text-gray-700">Male</span>
                    </label>

                    <label class="inline-flex items-center mt-1">
                      <input
                        type="radio"
                        class="form-radio h-3 w-3"
                        name="gender"
                        value="f"
                      /><span class="ml-2 text-sm text-gray-700">Female</span>
                    </label>
                  </div>
                  <label class="inline-flex items-center mt-1">
                    <input
                      type="radio"
                      class="form-radio h-3 w-3"
                      name="gender"
                      value="n"
                    /><span class="ml-2 text-sm text-gray-700"
                      >Not Specify</span
                    >
                  </label>
                </div>
              </div>
              <div class="flex flex-col mt-2">
                <label for="district" class="font-md text-gray-700 pb-1 pl-1"
                  >District</label
                >
                <input
                  type="text"
                  class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  name="district"
                  placeholder="Enter your district"
                  required
                />
              </div>
              <div class="flex flex-col mt-2">
                <label
                  for="constituency"
                  class="font-md text-gray-700 pb-1 pl-1"
                  >Constituency</label
                >
                <input
                  type="text"
                  class="shadow appearance-none border rounded-[10px] w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  name="constituency"
                  placeholder="Enter your constituency"
                  required
                />
              </div>
            </div>
          </div>
        </div>
        

        <button
          class="bg-[#24C8AD] hover:bg-[#33B9A2] cursor-pointer mt-3 text-white w-[200px] font-bold py-2 px-4 rounded-[10px] focus:outline-none focus:shadow-outline"
          type="button"
          data-modal-toggle="authentication-modal"
        >
          Register
        </button>

        <div
          id="authentication-modal"
          tabindex="-1"
          aria-hidden="true"
          class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 w-full md:inset-0 h-modal md:h-full"
        >
          <div class="relative p-4 w-full max-w-md h-full md:h-auto">
            <!-- Modal content -->
            <div class="relative bg-white rounded-lg shadow">
              <button
                type="button"
                class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center"
                data-modal-toggle="authentication-modal"
              >
                <svg
                  class="w-5 h-5"
                  fill="currentColor"
                  viewBox="0 0 20 20"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    fill-rule="evenodd"
                    d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                    clip-rule="evenodd"
                  ></path>
                </svg>
              </button>
              <div class="py-6 px-6 lg:px-8">
                <h3 class="mb-4 text-xl font-medium text-gray-900">
                  Give your details
                </h3>
                <div>
                  <label
                    for="userid"
                    class="block mb-2 text-sm font-medium text-gray-900"
                    >Your UserID</label
                  >
                  <input
                    type="number"
                    name="userid"
                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                    value=${userid} readonly
                  />
                </div>
                <div class="mt-5">
                  <label
                    for="password"
                    class="block mb-2 text-sm font-medium text-gray-900"
                    >Your password</label
                  >
                  <input
                    type="password"
                    name="password"
                    placeholder="**********"
                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                    minlength="8"
                    maxlength="15"
                    required
                  />
                </div>
                <button
                  type="submit"
                  class="w-full text-white font-medium rounded-lg text-sm px-5 py-2.5 mt-10 text-center bg-[#24C8AD] hover:bg-[#33B9A2]"
                >
                  Login
                </button>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
    <script src="https://unpkg.com/flowbite@1.4.5/dist/flowbite.js"></script>
  </body>
</html>
