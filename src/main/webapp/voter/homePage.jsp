<%@ page
import="com.wipro.evs.model.UserDetails,com.wipro.evs.model.ElectionDetails" %>
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
    <title>Homepage</title>
  </head>
  <script src="https://cdn.tailwindcss.com/"></script>
  <style>
    * {
      font-family: "Inter", sans-serif;
    }
  </style>
  <% UserDetails user = (UserDetails) request.getAttribute("userDetail");
  ElectionDetails election = (ElectionDetails)
  request.getAttribute("electionDetails"); %>
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
    <p class="text-sm text-center text-green-500 font-black">${msg}</p>
    <div class="body-container flex justify-between items-center mt-10 mx-14">
      <div class="left-side flex flex-col space-y-12">
        <div>
          <h3 class="text-[25px] font-bold">Welcome</h3>
          <h6 class="text-[50px] font-black text-[#7B8FFE]">
            <%= user.getFirstName() %>
          </h6>
        </div>
        <div class="container mx-auto">
          <img src="/assets/voterHome.jpg" alt="voterHome" class="w-[210px]" />
        </div>
      </div>
      <div class="right-side flex flex-col space-y-16">
        <div class="flex flex-col items-end">
          <h3 class="text-[25px] font-bold">Voter ID</h3>
          <% if (user.getVoterId() == 0) { %>
          <p class="text-[20px] font-bold text-gray-400 pt-2">
            Don't have a Voter ID?
            <a
              href="/requestVoterId?userId=${userDetail.userId}"
              class="text-[#7B8FFE] font-black"
              >Request</a
            >
          </p>
          <% } else if(user.getVoterId() == 1) { %>
          <p class="text-[20px] font-bold text-gray-400 pt-2">
            You have already requested.
          </p>
          <% } else { %>
          <p class="text-[#7B8FFE] font-black text-xl">${userDetail.voterId}</p>
          <% } %>
        </div>
        <% if (election != null) { %>
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
          <table class="w-full text-sm text-left">
            <thead class="text-xs text-white uppercase bg-[#7B8FFE]">
              <tr>
                <th scope="col" class="px-6 py-3">Election Name</th>
                <th scope="col" class="px-6 py-3">Election Time</th>
                <th scope="col" class="px-6 py-3">Election Date</th>
                <th scope="col" class="px-6 py-3">Election Status</th>
                <th scope="col" class="px-6 py-3">Election Action</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="election" items="${allElection}">
                <tr class="border-b odd:bg-[#E8ECFF] even:bg-[#D6DCFF]">
                  <th
                    scope="row"
                    class="px-6 py-4 font-medium whitespace-nowrap"
                  >
                    <%= election.getElectionName()%>
                  </th>
                  <td class="px-6 py-4 font-medium">
                    <%= election.getElectionTime()%>
                  </td>
                  <td class="px-6 py-4 font-medium">
                    <%= election.getElectionDate()%>
                  </td>
                  <td class="px-6 py-4 font-medium">
                    <% if (!election.getElectionStatus()){%>
                    <span class="text-green-500">On Going</span>
                    <% } else { %>
                    <span class="text-red-500">End</span>
                    <% } %>
                  </td>
                  <td class="px-6 py-4 font-medium">
                    <% if (!election.getElectionStatus()){%>
                    <a
                      class="bg-[#7B8FFE] text-white font-medium text-sm py-1 px-3 rounded-lg shadow-sm"
                      href="/voteAction?userId=${userDetail.userId}&electionId=${electionDetails.electionId}"
                    >
                      VOTE
                    </a>
                    <% } else { %>
                    <a
                      class="bg-[#7B8FFE] text-white font-medium text-sm py-1 px-3 rounded-lg shadow-sm"
                      href="/declareResult?electionId=${electionDetails.electionId}"
                    >
                      RESULTS
                    </a>
                    <% } %>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
        <% } else { %>
        <h3 class="text-[25px] font-bold">
          Election has not been<br />
          Scheduled Yet.
        </h3>
        <% } %>
      </div>
    </div>
    <script src="https://unpkg.com/flowbite@1.4.5/dist/flowbite.js"></script>
  </body>
</html>
