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
    <title>Candidate Details</title>
    <script src="https://cdn.tailwindcss.com/"></script>
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
              ><img src="/assets/logo.jpg" alt="Voter India" class="w-22"
            /></a>
          </div>
          <div class="flex items-center font-bold">
            <a
              href="/"
              class="bg-[#ED7D2B] text-white font-medium text-sm py-1 px-3 rounded-full shadow-xl ml-6"
            >
              Log Out
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="body-container flex justify-between items-center mt-10 mx-14">
      <div class="left-side flex flex-col space-y-12">
        <div>
          <h3 class="text-[25px] font-bold">Welcome ADMIN</h3>
          <h6 class="text-[50px] font-black text-[#ED7D2B]">
            ${userDetail.firstName}
          </h6>
        </div>
        <div class="container mx-auto">
          <img src="/assets/adminHome.jpg" alt="adminHome" class="w-[310px]" />
        </div>
      </div>
      <div class="right-side">
        <div class="container mx-auto">
          <h4 class="text-xl font-medium">Add Candidate Details</h4>
          <form
            class="form"
            action="addCandidateDetails?currentUserId=${userDetail.userId}"
            method="post"
          >
            <div class="flex flex-col mt-3">
              <label for="partyId" class="font-md text-gray-700 pb-1"
                >Voter ID</label
              >
              <input
                type="number"
                class="shadow appearance-none border rounded-[10px] w-full py-2 mb-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                name="voterId"
                placeholder="Add voter id"
                required
              />
              <label for="electionid" class="font-md text-gray-700 pb-1"
                >Election ID</label
              >
              <input
                type="number"
                class="shadow appearance-none border rounded-[10px] w-full py-2 mb-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                name="electionId"
                placeholder="Add election id"
                required
              />
            </div>
            <input
              type="submit"
              class="bg-[#ED7D2B] hover:bg-[#DA752D] cursor-pointer mt-2 text-white w-full font-bold py-2 px-4 rounded-[10px] focus:outline-none focus:shadow-outline"
              value="Add"
            />
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
