<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer_ctrl.ascx.cs" Inherits="Aisha_Website_V1.Component.Footer_ctrl" %>
<footer>
    <img src="/images/training.png"alt="tag.com" style="float:margin-left;width:"200"height:200"/>

    <ul>
    <li><a href="https://www.tag.global/Page/en/profile">Home</a> </li>
    <li><a href="https://www.tag.global/Page/en/key-introduction">About Us</a></li>
    <li><a href ="https://www.tag.global/ContactUs/en"target="_blank">Contact Us</a></li>
    </ul>


    <div id="date"></div>
    <div id="text"></div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const today = new Date();
        const day = today.getDate();
        const month = today.getMonth() + 1;
        const year = today.getFullYear();

        document.getElementById("date").innerHTML = day + "/" + month + "/" + year;

        const myText = "This text added by javascript"

        document.getElementById("text").innerHTML = myText;


    </script>
</footer>