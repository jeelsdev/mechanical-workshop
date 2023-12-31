<%-- 
    Document   : index
    Created on : 27 ago. 2023, 19:38:30
    Author     : User
--%>

<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("admin") != null) {

%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Taller mecanico</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="../assets/img/machanicalicon.png" rel="icon">
        <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="./../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="../assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="../assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="../assets/vendor/simple-datatables/style.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="../assets/css/style.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: NiceAdmin
        * Updated: Aug 30 2023 with Bootstrap v5.3.1
        * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>

        <jsp:include page="../layaout/navigation.html"/>

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Historial del vehiculo</h1>

            </div>

            <section class="section profile">
                <div class="row">
                    <div class="col-xl-4">

                        <div class="card">
                            <div class="card-body profile-card pt-4 d-flex flex-column">

                                <div class="tab-content pt-2">

                                    <div class="tab-pane fade show active profile-overview" id="profile-overview">

                                        <h5 class="card-title text-center">Propietario</h5>

                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 label">Nombre</div>
                                            <div class="col-lg-6 col-md-8">${user.getNameBusiness()}</div>
                                        </div>

                                        <div class="row ">
                                            <div class="col-lg-6 col-md-4 label ">${user.getDocumentType()}</div>
                                            <div class="col-lg-6 col-md-8">${user.getDocumentNumber()}</div>
                                        </div>

                                        <div class="row ">
                                            <div class="col-lg-6 col-md-4 label ">Dirección</div>
                                            <div class="col-lg-6 col-md-8">${user.getDirection()}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 label ">Teléfono</div>
                                            <div class="col-lg-6 col-md-8">${user.getPhono()}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 label ">Email</div>
                                            <div class="col-lg-6 col-md-8">${user.getEmail()}</div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-xl-8">

                        <div class="card">
                            <div class="card-body pt-3">
                                <div class="tab-content pt-2">

                                    <div class="tab-pane fade show active profile-overview" id="profile-overview">

                                        <h5 class="card-title text-center">Detalles del vehiculo</h5>

                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 label ">Tipo de vehiculo</div>
                                            <div class="col-lg-6 col-md-8">${vehicle.getTypeVehicle()}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 label ">Marca</div>
                                            <div class="col-lg-6 col-md-8">${vehicle.getBrand()}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 label ">Model</div>
                                            <div class="col-lg-6 col-md-8">${vehicle.getModel()}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 label ">Placa</div>
                                            <div class="col-lg-6 col-md-8">${vehicle.getPlate()}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 label ">KM</div>
                                            <div class="col-lg-6 col-md-8">${vehicle.getKm()}</div>
                                        </div>



                                    </div>


                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </main>

        <main class="main" id="main" style="margin-top: -0.25rem;">
            <section class="section profile d-flex justify-content-between">
                <div class="pagetitle">
                    <h1>Historias</h1>

                </div>
                <a href="histories?action=create&id=<c:out value="${idVehicle}" />" class="btn btn-success">Crear nuevo historial</a>
            </section>
        </main>


        <main id="main" class="main" style="margin-top: -0.25rem;">
            <section class="section profile">
                <div class="row">
                    <section class="section dashboard">
                        <div class="row">

                            <!-- Right side columns -->
                            <div class="col-lg-12">

                                <!-- Recent Activity -->
                                <div class="card">

                                    <div class="card-body">
                                        <h5 class="card-title">Actividades <span>| todos</span></h5>

                                        <div class="activity">
                                            <% int count = 1;

                                                ArrayList<String> colors = new ArrayList<String>(19);

                                                colors.add("");
                                                colors.add("danger");
                                                colors.add("dark");
                                                colors.add("primary");
                                                colors.add("success");
                                                colors.add("warning");
                                                colors.add("muted");
                                                colors.add("danger");
                                                colors.add("dark");
                                                colors.add("primary");
                                                colors.add("success");
                                                colors.add("warning");
                                                colors.add("muted");
                                                colors.add("danger");
                                                colors.add("dark");
                                                colors.add("primary");
                                                colors.add("success");
                                                colors.add("warning");
                                                colors.add("muted");
                                            %>
                                            
                                            <c:forEach var="history" items="${listHistories}"> 
                                                <div class="activity-item d-flex justify-content-start">
                                                    <div class="activite-label"><%= count%></div>
                                                    <i class='bi bi-circle-fill activity-badge text-<%= colors.get(count)%> align-self-start'></i>
                                                    <div class="activity-content" style="margin-left: 15%">

                                                        <div class="row" sty>
                                                            <div class="col-lg-6 col-md-6 ">
                                                                <h5 class="card-title"><span>Servicio brindado:</span> ${history.getNameService()}</h5>
                                                                <div class="card-title"><span>Metodo de pago:</span> ${history.getMethodPay()}</div>
                                                                <div class="card-title"><span>Monto de pago:</span> ${history.getNameUser()}</div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6">
                                                                <div class="card-title"><span>Fechad de entrada:</span> ${history.getEntryDate()}</div>
                                                                <div class="card-title"><span>Fechad de salida:</span> ${history.getOutputDate()}</div>
                                                                <div class="card-title"><span>Descripción:</span> ${history.getBrandVehicle()}</div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div><!-- End activity item-->
                                                <% count += 1; %>
                                            </c:forEach>
                                            

                                        </div>

                                    </div>
                                </div><!-- End Recent Activity -->


                            </div><!-- End Right side columns -->

                        </div>
                    </section>
                </div>
            </section>
        </main>


        <jsp:include page="../layaout/footer.jsp"/>


        <!-- Vendor JS Files -->
        <script src="./../assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="./../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="./../assets/vendor/chart.js/chart.umd.js"></script>
        <script src="./../assets/vendor/echarts/echarts.min.js"></script>
        <script src="./../assets/vendor/quill/quill.min.js"></script>
        <script src="./../assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="./../assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="./../assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="./../assets/js/main.js"></script>


    </body>

</html>


<%    } else {
        response.sendRedirect("./../index.jsp");
    }
%>