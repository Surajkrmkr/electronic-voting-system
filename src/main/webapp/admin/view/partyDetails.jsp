<%@ page import="com.wipro.evs.model.UserDetails" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib prefix="spring"
uri="http://www.springframework.org/tags"%> <%@page language="java"
contentType="text/html"%>
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
    <link
      rel="stylesheet"
      href="https://unpkg.com/flowbite@1.4.5/dist/flowbite.min.css"
    />
    <title>Party Details</title>
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
            ${currentUser.firstName}
          </h6>
        </div>
        <div class="container mx-auto">
          <img src="/assets/adminHome.jpg" alt="adminHome" class="w-[310px]" />
        </div>
      </div>
      <div class="right-side">
        <div class="container mx-auto">
          <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left">
              <thead class="text-xs text-white uppercase bg-[#ED7D2B]">
                <tr>
                  <th scope="col" class="px-6 py-3">Party ID</th>
                  <th scope="col" class="px-6 py-3">Election ID</th>
                  <th scope="col" class="px-6 py-3">Party Name</th>
                  <th scope="col" class="px-6 py-3">No of Votes</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="party" items="${allParty}">
                  <tr class="border-b odd:bg-[#FFE7D7] even:bg-[#FFD7BC]">
                    <th
                      scope="row"
                      class="px-6 py-4 font-medium whitespace-nowrap"
                    >
                      ${party.partyId}
                    </th>
                    <td class="px-6 py-4 font-medium">
                      ${party.electionId}
                    </td>
                    <td class="px-6 py-4 font-medium">
                      ${party.partyName}
                    </td>
                    <td class="px-6 py-4 font-medium">
                      ${party.noOfVotes}
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <script src="https://unpkg.com/flowbite@1.4.5/dist/flowbite.js"></script>
  </body>
</html>
