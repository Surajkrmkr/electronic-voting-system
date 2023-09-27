<%@ page
import="com.wipro.evs.model.UserDetails,com.wipro.evs.model.PartyDetails"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      <title>Voting Page</title>
    </head>
    <script src="https://cdn.tailwindcss.com/"></script>
    <style>
      * {
        font-family: "Inter", sans-serif;
      }
    </style>
    <% UserDetails user = (UserDetails) request.getAttribute("userDetail"); boolean isVoted = (boolean) request.getAttribute("isVoted"); %>
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
                class="bg-[#7B8FFE] text-white font-medium text-sm py-1 px-3 rounded-full shadow-xl ml-6"
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
            <h3 class="text-[25px] font-bold">Welcome</h3>
            <h6 class="text-[50px] font-black text-[#7B8FFE]">
              <%= user.getFirstName() %>
            </h6>
          </div>
          <div class="container mx-auto">
            <img
              src="/assets/voterHome.jpg"
              alt="voterHome"
              class="w-[210px]"
            />
          </div>
        </div>
        <div class="right-side flex flex-col space-y-16">
          <div class="flex flex-col items-end">
            <h3 class="text-[25px] font-bold">Voter ID</h3>
            <p class="text-[#7B8FFE] font-black text-xl">
              ${userDetail.voterId}
            </p>
            <% if (!isVoted) { %>
            <form action="/castVote?userId=${userDetail.userId}&electionId=${electionId}" method="post">
              <div
                class="relative overflow-x-auto shadow-md sm:rounded-lg mt-6"
              >
                <table class="w-full text-sm text-left">
                  <thead class="text-xs text-white uppercase bg-[#7B8FFE]">
                    <tr>
                      <th scope="col" class="px-6 py-3">Party Logo</th>
                      <th scope="col" class="px-6 py-3">Party Name</th>
                      <th scope="col" class="px-6 py-3">Vote</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="party" items="${partyList}">
                      <tr class="border-b odd:bg-[#E8ECFF] even:bg-[#D6DCFF]">
                        <td class="px-6 py-4 font-medium">
                          <img
                            src="/assets/${party.partyId}.png"
                            alt="${party.partyName}"
                            class="w-8"
                          />
                        </td>
                        <th
                          scope="row"
                          class="px-6 py-4 font-medium whitespace-nowrap"
                        >
                          ${party.partyName}
                        </th>
                        <td class="px-6 py-4 font-medium">
                          <input
                            type="radio"
                            value="${party.partyId}"
                            name="partyId"
                          />
                        </td>
                      </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
              <div class="flex justify-end mt-6">
                <button
                  type="submit"
                  class="bg-[#7B8FFE] text-white font-medium w-full text-sm py-3 px-5 rounded-lg shadow-xl"
                >
                  Cast Vote
                </button>
            </form>
            <% } else { %>
            <p class="mt-8 text-center text-xl font-bold">You have already voted</br>Wait for Election Results</p>
            <% } %>
          </div>
        </div>
      </div>
      <script src="https://unpkg.com/flowbite@1.4.5/dist/flowbite.js"></script>
    </body>
  </html>
</div%@>
