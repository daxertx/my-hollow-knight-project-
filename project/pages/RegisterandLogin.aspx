<%@ Page Title="Register and Login" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="RegisterandLogin.aspx.cs" Inherits="project.pages.RegisterandLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h1 style="font-size:60px;color:white" id="headder" runat="server" ClientIDMode="Static">Register page</h1>
        <link href="../css/Main_pages.css" rel="stylesheet" />
    <link href="../css/master.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div style="font-size:40px">
        <div id="diverror" runat="server" style="color:red" ClientIDMode="Static"></div>

        <form runat="server" id="Register_form" onsubmit="return Form_valid();" ClientIDMode="Static">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" ClientIDMode="Static" />
            <label>username:</label>
            <input class="input" name="username" id="username" type="text" maxlength="20" />
            <div id="divusername" style="font-size:30px"></div>
            <br>

            <label>password:</label>
            <input class="input" name="password" id="password" type="password" maxlength="30" />
            <div id="divpassword" style="font-size:30px"></div>
            <br>

            <div id="Register_only" style="display:inline" runat="server" ClientIDMode="Static">
                <label>confirm password:</label>
                <input class="input" name="confirm_password" id="confirm_password" type="password" maxlength="30" />
                <div id="divconfirm_password" style="color:red;font-size:30px"></div>
                <br>

                <label>name:</label>
                <input class="input" name="name" id="name" type="text" maxlength="30" />
                <div id="divname" style="color:red;font-size:30px"></div>
                <br>

                <label>family name:</label>
                <input class="input" name="family_name" id="family_name" type="text" maxlength="20" />
                <div id="divfamily" style="color:red;font-size:30px"></div>
                <br>

                <label>phone:</label>
                <input class="input" name="phone" id="phone" type="number" maxlength="10" />
                <div id="divphone" style="color:red;font-size:30px"></div>
                <br>

                <label>email:</label>
                <input class="input" name="email" id="email" type="email" maxlength="50" />
                <div id="divemail" style="color:red;font-size:30px"></div>
                <br>

                <label for="Birthday">enter your birthday:</label>
                <input type="date" id="Birthday" name="Birthday" class="input" />
                <div id="divbirthday" style="color:red;font-size:30px"></div>
                <br>

                <input id="Male" name="gender" value="Male" type="radio" />
                <label for="Male">Male &nbsp;&nbsp;&nbsp;</label>

                <input id="Female" name="gender" value="Female" type="radio" />
                <label for="Female">Female</label>
                <div id="divgender" style="color:red;font-size:30px"></div>
                <br><br>

                <label>choose your city:</label>
                <select id="city" name="city" class="input">
    <option value="">...</option>
    <option value="Jerusalem">Jerusalem</option>
    <option value="Tel_Aviv">Tel Aviv</option>
    <option value="Haifa">Haifa</option>
    <option value="Rishon_Lezion">Rishon Lezion</option>
    <option value="Petah_Tikva">Petah Tikva</option>
    <option value="Ashdod">Ashdod</option>
    <option value="Netanya">Netanya</option>
    <option value="Beersheba">Beersheba</option>
    <option value="Bnei_Brak">Bnei Brak</option>
    <option value="Holon">Holon</option>
    <option value="Ramat_Gan">Ramat Gan</option>
    <option value="Ashkelon">Ashkelon</option>
    <option value="Bat_Yam">Bat Yam</option>
    <option value="Herzliya">Herzliya</option>
    <option value="Kfar_Saba">Kfar Saba</option>
    <option value="Modiin">Modiin</option>
    <option value="Hadera">Hadera</option>
    <option value="Nazareth">Nazareth</option>
    <option value="Ra'anana">Ra'anana</option>
    <option value="Lod">Lod</option>
    <option value="Nahariya">Nahariya</option>
    <option value="Acre">Acre (Akko)</option>
    <option value="Tiberias">Tiberias</option>
    <option value="Eilat">Eilat</option>
    <option value="Safed">Safed (Tzfat)</option>
</select>
                <div id="divcity" style="color:red;font-size:30px"></div>
                <br><br>

                <label for="HK">are you a hollow knight player?</label>
                <input id="HK" name="HK" type="checkbox" value="true" />
                <br><br>
            </div>
            <button id="move_to_other" runat="server" type="button" onclick="movepagejs();">I have an account</button>
            <br><br>
            <button type="reset" onclick="clear();">Delete</button><br><br>
            <button type="submit">Submit</button><br><br>
        </form>
    </div>

    <script>
        function movepagejs() {
            PageMethods.Move_Page(onSuccess, onError); // runs c# function and activate js functions based on success or fail
            clear();//cleans divs if you change page
        }

        function onSuccess(result) {
            var Register_only = document.getElementById('Register_only');
            var headder = document.getElementById('headder');
            var move_to_other = document.getElementById('move_to_other');
            if (result === "Login") {
                Register_only.style.display = "none";
                headder.innerHTML = "Login page";
                move_to_other.innerHTML = "Create an account";
            } else {
                Register_only.style.display = "inline";
                headder.innerHTML = "Register page";
                move_to_other.innerHTML = "I have an account";
            }
        }

        function onError(error) {
            alert('Error: ' + error.get_message());
            //prints error in 
        }

        function Form_valid() {
            var error = true;
            var isLogin = document.getElementById("headder");
            error = Username_valid() && error;
            error = Password_valid() && error;
            if (isLogin.innerHTML === "Register page")
            {
                // Only validate register fields if not logging in
                error = Confirm_password_valid() && error;
                error = Name_valid() && error;
                error = Family_name_vaild() && error;
                error = Email_valid() && error;
                error = Phone_valid() && error;
                error = City_valid() && error;
            }

            if (error) {
                clear(); // optional: clear success messages if valid
            }

            return error;
        }
        

        function clear()
        {
            var divusername = document.getElementById("divusername");
            var divpassword = document.getElementById("divpassword");
            var divconfirm_password = document.getElementById("divconfirm_password");
            var divname = document.getElementById("divname");
            var divfamily = document.getElementById("divfamily");
            var divemail = document.getElementById("divemail");
            var divphone = document.getElementById("divphone");
            var divcity = document.getElementById("divcity");
            divusername.innerHTML = "";
            divpassword.innerHTML = "";
            divconfirm_password.innerHTML = "";
            divname.innerHTML = "";
            divfamily.innerHTML = "";
            divemail.innerHTML = "";
            divphone.innerHTML = "";
            divcity.innerHTML = "";
        }

        function is_letter(char) {
            return /^[a-zA-Z]$/.test(char);
        }

        function Username_valid() {
            var username = document.getElementById("username").value;
            var divusername = document.getElementById("divusername");

            if (username.length < 4) {
                divusername.style.color = "red";
                divusername.innerHTML = "Username must have at least 4 characters";
                return false;
            }

            // Disallow special characters anywhere
            var special_characters = /[!@#$%^&*()+\-]/;
            if (special_characters.test(username)) {
                divusername.style.color = "red";
                divusername.innerHTML = "You can’t have special characters in your username";
                return false;
            }

            // Disallow first character being non-letter
            if (!/^[a-zA-Z]/.test(username)) {
                divusername.style.color = "red";
                divusername.innerHTML = "Username must start with a letter";
                return false;
            }

            divusername.style.color = "green";
            divusername.innerHTML = "Username looks good!";
            return true;
        }

        function Password_valid() {
            var password = document.getElementById("password").value;
            var divpassword = document.getElementById("divpassword");

            if (password.length < 6) {
                divpassword.innerHTML = "Password must have at least 6 characters";
                divpassword.style.color = "red";
                return false;
            }

            var special_characters = /[!@#$%^&*()+\-]/;
            if (!special_characters.test(password)) {
                divpassword.innerHTML = "Password must have at least one special character";
                divpassword.style.color = "red";
                return false;
            }

            divpassword.innerHTML = "Password looks good!";
            divpassword.style.color = "green";
            return true;
        }

        function Confirm_password_valid() {
            var password = document.getElementById("password").value;
            var confirm_password = document.getElementById("confirm_password").value;
            var divconfirm_password = document.getElementById("divconfirm_password");

            if (confirm_password !== password) {
                divconfirm_password.style.color = "red";
                divconfirm_password.innerHTML = "Both passwords are not the same";
                return false;
            } else {
                divconfirm_password.style.color = "green";
                divconfirm_password.innerHTML = "Both passwords are the same";
                return true;
            }
        }

        function Name_valid() {
            var name = document.getElementById("name").value;
            var divname = document.getElementById("divname");

            // Only letters and spaces allowed
            if (name.length < 4) {
                divname.style.color = "red";
                divname.innerHTML = "Name must have at least 4 characters";
                return false;
            }

            if (/[^a-zA-Z\s]/.test(name)) {
                divname.style.color = "red";
                divname.innerHTML = "Name can only contain letters";
                return false;
            } else {
                divname.style.color = "green";
                divname.innerHTML = "Name looks good!";
                return true;
            }
        }

        function Family_name_vaild() {
            var family_name = document.getElementById("family_name").value;
            var divfamily = document.getElementById("divfamily");

            // Only letters and spaces allowed
            if (family_name.length < 4) {
                divfamily.style.color = "red";
                divfamily.innerHTML = "Family name must have at least 4 characters";
                return false;
            }
            if (/[^a-zA-Z\s]/.test(family_name)) {
                divfamily.style.color = "red";
                divfamily.innerHTML = "Family name can only contain letters";
                return false;
            } else {
                divfamily.style.color = "green";
                divfamily.innerHTML = "Family name looks good!";
                return true;
            }
        }
        function Email_valid() {
            var email = document.getElementById("email").value;
            var divemail = document.getElementById("divemail");

            if (email.length === 0) {
                divemail.style.color = "red";
                divemail.innerHTML = "Email cannot be empty";
                return false;
            }

            if (!email.includes("@") || !email.includes(".")) {
                divemail.style.color = "red";
                divemail.innerHTML = "Email must contain '@' and '.'";
                return false;
            } 

            // Make sure '.' comes after '@'
            var atIndex = email.indexOf("@");
            var dotIndex = email.lastIndexOf(".");

            if (dotIndex < atIndex + 2) {
                divemail.style.color = "red";
                divemail.innerHTML = "'.' must come after '@'";
                return false;
            }

            divemail.style.color = "green";
            divemail.innerHTML = "Email looks good!";
            return true;
        }

        function Phone_valid() {
            var phone = document.getElementById("phone").value;
            var divphone = document.getElementById("divphone");

            if (phone.length !== 10) {
                divphone.style.color = "red";
                divphone.innerHTML = "Phone number must have exactly 10 digits";
                return false;
            }
            else if (phone / 1000000000  ===0)
            {
                divphone.style.color = "red";
                divphone.innerHTML = "Phone number must start with 0";
                return false;

            }
            else {
                divphone.style.color = "green";
                divphone.innerHTML = "Phone number looks good!";
                return true;
            }
        }

        function City_valid() {
            var city = document.getElementById("city").value;
            var divcity = document.getElementById("divcity");

            if (city === "") {
                divcity.style.color = "red";
                divcity.innerHTML = "You must choose a city";
                return false;
            }
            else {
                divcity.style.color = "green";
                divcity.innerHTML = "City chosen!";
                return true;
            }
        }
    </script>
    </asp:Content>