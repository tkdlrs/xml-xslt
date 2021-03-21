<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/>
        <title>Pokemon with XML and Bootstrap</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1>Pokemon Type Tabs with XML and Bootstrap</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="pills-normal-tab" data-bs-toggle="pill" data-bs-target="#pills-normal" type="button" role="tab" aria-controls="pills-normal" aria-selected="true">normal</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-fire-tab" data-bs-toggle="pill" data-bs-target="#pills-fire" type="button" role="tab" aria-controls="pills-fire" aria-selected="false">fire</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-water-tab" data-bs-toggle="pill" data-bs-target="#pills-water" type="button" role="tab" aria-controls="pills-water" aria-selected="false">water</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-grass-tab" data-bs-toggle="pill" data-bs-target="#pills-grass" type="button" role="tab" aria-controls="pills-grass" aria-selected="false">grass</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-electric-tab" data-bs-toggle="pill" data-bs-target="#pills-electric" type="button" role="tab" aria-controls="pills-electric" aria-selected="false">electric</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-ice-tab" data-bs-toggle="pill" data-bs-target="#pills-ice" type="button" role="tab" aria-controls="pills-ice" aria-selected="false">ice</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-fighting-tab" data-bs-toggle="pill" data-bs-target="#pills-fighting" type="button" role="tab" aria-controls="pills-fighting" aria-selected="false">fighting</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-poison-tab" data-bs-toggle="pill" data-bs-target="#pills-poison" type="button" role="tab" aria-controls="pills-poison" aria-selected="false">poison</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-ground-tab" data-bs-toggle="pill" data-bs-target="#pills-ground" type="button" role="tab" aria-controls="pills-ground" aria-selected="false">ground</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-flying-tab" data-bs-toggle="pill" data-bs-target="#pills-flying" type="button" role="tab" aria-controls="pills-flying" aria-selected="false">flying</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-psychic-tab" data-bs-toggle="pill" data-bs-target="#pills-psychic" type="button" role="tab" aria-controls="pills-psychic" aria-selected="false">psychic</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-bug-tab" data-bs-toggle="pill" data-bs-target="#pills-bug" type="button" role="tab" aria-controls="pills-bug" aria-selected="false">bug</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-rock-tab" data-bs-toggle="pill" data-bs-target="#pills-rock" type="button" role="tab" aria-controls="pills-rock" aria-selected="false">rock</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-ghost-tab" data-bs-toggle="pill" data-bs-target="#pills-ghost" type="button" role="tab" aria-controls="pills-ghost" aria-selected="false">ghost</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-dark-tab" data-bs-toggle="pill" data-bs-target="#pills-dark" type="button" role="tab" aria-controls="pills-dark" aria-selected="false">dark</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-dragon-tab" data-bs-toggle="pill" data-bs-target="#pills-dragon" type="button" role="tab" aria-controls="pills-dragon" aria-selected="false">dragon</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-steel-tab" data-bs-toggle="pill" data-bs-target="#pills-steel" type="button" role="tab" aria-controls="pills-steel" aria-selected="false">steel</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-fairy-tab" data-bs-toggle="pill" data-bs-target="#pills-fairy" type="button" role="tab" aria-controls="pills-fairy" aria-selected="false">fairy</button>
                        </li>
                    </ul>
                    
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-normal" role="tabpanel" aria-labelledby="pills-normal-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'normal'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-fire" role="tabpanel" aria-labelledby="pills-fire-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'fire'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-water" role="tabpanel" aria-labelledby="pills-water-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'water'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-grass" role="tabpanel" aria-labelledby="pills-grass-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'grass'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-electric" role="tabpanel" aria-labelledby="pills-electric-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'electric'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-ice" role="tabpanel" aria-labelledby="pills-ice-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'ice'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-fighting" role="tabpanel" aria-labelledby="pills-fighting-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'fighting'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-poison" role="tabpanel" aria-labelledby="pills-poison-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'poison'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-ground" role="tabpanel" aria-labelledby="pills-ground-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'ground'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-flying" role="tabpanel" aria-labelledby="pills-flying-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'flying'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-psychic" role="tabpanel" aria-labelledby="pills-psychic-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'psychic'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-bug" role="tabpanel" aria-labelledby="pills-bug-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'bug'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-rock" role="tabpanel" aria-labelledby="pills-rock-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'rock'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-ghost" role="tabpanel" aria-labelledby="pills-ghost-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'ghost'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-dark" role="tabpanel" aria-labelledby="pills-dark-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'dark'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-dragon" role="tabpanel" aria-labelledby="pills-dragon-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'dragon'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-steel" role="tabpanel" aria-labelledby="pills-steel-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'steel'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-fairy" role="tabpanel" aria-labelledby="pills-fairy-tab">
                            <div class="row align-content-stretch">
                                <xsl:for-each select="/pokemans/pokemon">
                                <xsl:sort select="number" order="ascending" data-type="number"/>
                                    <xsl:choose>
                                        <xsl:when test="type = 'fairy'">
                                            <div class="col-12 col-md-3 mb-3">
                                                <div class="card h-100">
                                                    <img>
                                                        <xsl:attribute name="class">
                                                            card-img-top
                                                        </xsl:attribute>
                                                        <xsl:attribute name="src">
                                                            <xsl:value-of select="sprite" />
                                                        </xsl:attribute>
                                                        <xsl:attribute name="alt">
                                                            <xsl:value-of select="name" />
                                                        </xsl:attribute>
                                                    </img>
                                                    <div class="card-body">
                                                        <h2 class="h4 card-title">
                                                            <xsl:value-of select="name" />
                                                            #<xsl:value-of select="number" />
                                                        </h2>
                                                        <p class="card-text">
                                                            <!-- <strong>Type</strong>: <xsl:value-of select="type" /> -->
                                                            <br />
                                                            <xsl:value-of select="substring(description,1,300)" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    </body>
</html>
</xsl:template>

</xsl:stylesheet>