<%@ page import="com.wipro.evs.model.UserDetails" %>
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
    <title>Homepage</title>
    <script src="https://cdn.tailwindcss.com/"></script>
  </head>
  <style>
    * {
      font-family: "Inter", sans-serif;
    }
  </style>
  <% UserDetails user = (UserDetails) request.getAttribute("userDetail"); %>
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
    <p class="text-sm text-center text-green-500 font-black">${msg}</p>
    <div class="body-container flex justify-between items-center mt-10 mx-14">
      <div class="left-side flex flex-col space-y-12">
        <div>
          <h3 class="text-[25px] font-bold">Welcome ADMIN</h3>
          <h6 class="text-[50px] font-black text-[#ED7D2B]">
            <% out.print(user.getFirstName()); %>
          </h6>
        </div>
        <div class="container mx-auto">
          <img src="/assets/adminHome.jpg" alt="adminHome" class="w-[310px]" />
        </div>
      </div>
      <div class="right-side flex flex-row">
        <div class="flex flex-col">
          <p class="font-bold text-lg text-center">Add Details</p>
          <button
            class="bg-[#ED7D2B] text-white font-medium text-sm py-2 px-5 m-2 rounded-lg shadow-xl ml-6"
          >
            <a href="/addElection?currentUserId=${userDetail.userId}">ELECTION DETAILS</a>
          </button>
          <button
            class="bg-[#ED7D2B] text-white font-medium text-sm py-2 px-5 m-2 rounded-lg shadow-xl ml-6"
          >
            <a href="/addParty?currentUserId=${userDetail.userId}">PARTY DETAILS</a>
          </button>
          <button
            class="bg-[#ED7D2B] text-white font-medium text-sm py-2 px-5 m-2 rounded-lg shadow-xl ml-6"
          >
            <a href="/addCandidate?currentUserId=${userDetail.userId}">CANDIDATE DETAILS</a>
          </button>
          <button
            class="bg-[#ED7D2B] text-white font-medium text-sm mt-6 py-2 px-5 m-2 rounded-full shadow-xl ml-6"
          >
            <a href="/allVoter?currentUserId=${userDetail.userId}"
              >VOTER DETAILS</a
            >
          </button>
        </div>
        <div class="flex flex-col">
          <p class="font-bold text-lg text-center">View Details</p>
          <button
            class="bg-[#ED7D2B] text-white font-medium text-sm py-2 px-5 m-2 rounded-lg shadow-xl ml-6"
          >
            <a href="/allElection?currentUserId=${userDetail.userId}">ELECTION DETAILS</a>
          </button>
          <button
            class="bg-[#ED7D2B] text-white font-medium text-sm py-2 px-5 m-2 rounded-lg shadow-xl ml-6"
          >
            <a href="/allParty?currentUserId=${userDetail.userId}">PARTY DETAILS</a>
          </button>
          <button
            class="bg-[#ED7D2B] text-white font-medium text-sm py-2 px-5 m-2 rounded-lg shadow-xl ml-6"
          >
            <a href="/allCandidate?currentUserId=${userDetail.userId}">CANDIDATE DETAILS</a>
          </button>
        </div>
      </div>
    </div>
  </body>
</html>
