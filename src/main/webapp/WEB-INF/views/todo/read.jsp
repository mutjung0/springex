<%--
  Created by IntelliJ IDEA.
  User: mutjung0
  Date: 2024-11-20
  Time: 오후 5:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body>
<div class="container-fluid">
    <!--header-->
    <div class="row">
        <div class="row">
            <div class="col">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">Navbar</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Link</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Dropdown
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link disabled">Disabled</a>
                                </li>
                            </ul>
                            <form class="d-flex">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success" type="submit">Search</button>
                            </form>
                        </div>
                    </div>
                </nav>
            </div><!--col-->
        </div><!--row2-->
    </div><!--row1-->
    <!--/header-->

    <div class="row content">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    Featured
                </div>
                <div class="card-body">
                    <div class="input-group mb-3">
                        <span class="input-group-text">Tno</span>
                        <input type="text" name="tno" class="form-control" value="${dto.tno}" readonly>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">Title</span>
                        <input type="text" name="title" class="form-control" value="${dto.title}" readonly>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">DueDate</span>
                        <input type="date" name="dueDate" class="form-control" value="${dto.dueDate}" readonly>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">Writer</span>
                        <input type="text" name="writer" class="form-control" value="${dto.writer}" readonly>
                    </div>

                    <div class="form-check">
                        <label class="form-check-label">Finished &nbsp;</label>
                        <input class="form-check-input" type="checkbox" name="finished" ${dto.finished?"checked":""} disabled>
                    </div>

                    <div class="my-4">
                        <div class="float-end">
                            <button type="button" class="btn btn-primary">modify</button>
                            <button type="button" class="btn btn-secondary">list</button>
                        </div>
                    </div>
                    <script>
                        document.querySelector(".btn-primary").addEventListener("click", function(e) {
                            self.location = "/todo/modify?tno=" + ${dto.tno};

                        }, false);
                        document.querySelector(".btn-secondary").addEventListener("click", function(e) {
                            self.location = "/todo/list";

                        }, false);
                    </script>
                </div>
            </div><!--card-->
        </div><!--col-->

    </div>
    <div class="row content">
        content
    </div>

    <div class="row footer">
        <div class="row fixed-bottom" stlye="z-index:-100">
            <footer class="py-1 my-1">
                <p class="text-center text-muted">Footer</p>
            </footer>
        </div>
    </div>
</div><!--container-fluid-->


<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>