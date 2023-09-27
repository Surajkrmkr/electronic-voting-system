<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
              ><img src="/assets/logo.jpg" alt="Voter India" class="w-22"
            /></a>
          </div>
          <div class="flex items-center font-bold">
            <a
              href="/"
              class="bg-[#197B78] text-white font-medium text-sm py-1 px-3 rounded-full shadow-xl ml-6"
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
          <h3 class="text-[25px] font-bold">Welcome Electoral Officer</h3>
          <h6 class="text-[50px] font-black text-[#197B78]">
            ${userDetail.firstName}
          </h6>
        </div>
        <div class="container mx-auto">
          <c:choose>
            <c:when test="${pending.iterator().hasNext()}">
              <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
                <table class="w-full text-sm text-left">
                  <thead class="text-xs text-white uppercase bg-[#197B78]">
                    <tr>
                      <th scope="col" class="px-6 py-3">User ID</th>
                      <th scope="col" class="px-6 py-3">Voter ID</th>
                      <th scope="col" class="px-6 py-3">Voter ID</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="user" items="${pending}">
                      <tr class="border-b odd:bg-[#E6FFFE] even:bg-[#D0FFFD]">
                        <th
                          scope="row"
                          class="px-6 py-4 font-medium text-black whitespace-nowrap"
                        >
                          ${user.userId}
                        </th>
                        <td class="px-6 py-4 font-medium">
                          <a
                            class="bg-[#197B78] text-white font-medium text-sm py-1 px-3 rounded-lg shadow-sm"
                            href="/generateVoterId?userId=${user.userId}&currentUserId=${userDetail.userId}&reject=false"
                          >
                            Generate
                          </a>
                        </td>
                        <td class="px-6 py-4 font-medium">
                          <a
                            class="bg-[#197B78] text-white font-medium text-sm py-1 px-3 rounded-lg shadow-sm"
                            href="/generateVoterId?userId=${user.userId}&currentUserId=${userDetail.userId}&reject=true"
                          >
                            Reject
                          </a>
                        </td>
                      </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </c:when>
            <c:otherwise>
              <h3 class="text-[25px] font-bold">
                No Pending Request<br />
                For Voter ID.
              </h3>
            </c:otherwise>
          </c:choose>
        </div>
      </div>
      <div class="right-side flex flex-col space-y-16">
        <img
          src="/assets/electoralHome.jpg"
          alt="electoralHome"
          class="w-[210px]"
        />
      </div>
    </div>
  </body>
</html>
