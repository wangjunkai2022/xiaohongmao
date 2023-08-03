.class public Liamutkarshtiwari/github/io/ananas/editimage/utils/f;
.super Ljava/lang/Object;
.source "Matrix3.java"


# instance fields
.field private a:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->f([F)V

    return-void
.end method


# virtual methods
.method public a()Liamutkarshtiwari/github/io/ananas/editimage/utils/f;
    .locals 2

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;

    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->b()[F

    move-result-object v1

    invoke-direct {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;-><init>([F)V

    return-object v0
.end method

.method public b()[F
    .locals 4

    const/16 v0, 0x9

    new-array v1, v0, [F

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public c()Liamutkarshtiwari/github/io/ananas/editimage/utils/f;
    .locals 9

    .line 1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a()Liamutkarshtiwari/github/io/ananas/editimage/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->b()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    const/4 v3, 0x4

    .line 3
    aget v4, v0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v2

    .line 4
    aput v6, v0, v1

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 5
    aput v6, v0, v1

    .line 6
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v7, 0x2

    aget v8, v1, v7

    div-float/2addr v8, v2

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v8, v8, v2

    aput v8, v0, v7

    const/4 v7, 0x3

    .line 7
    aput v6, v0, v7

    div-float v7, v5, v4

    .line 8
    aput v7, v0, v3

    const/4 v3, 0x5

    .line 9
    aget v1, v1, v3

    div-float/2addr v1, v4

    mul-float v1, v1, v2

    aput v1, v0, v3

    const/4 v1, 0x6

    .line 10
    aput v6, v0, v1

    const/4 v1, 0x7

    .line 11
    aput v6, v0, v1

    const/16 v1, 0x8

    .line 12
    aput v5, v0, v1

    .line 13
    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;

    invoke-direct {v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;-><init>([F)V

    return-object v1
.end method

.method public d(Liamutkarshtiwari/github/io/ananas/editimage/utils/f;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a()Liamutkarshtiwari/github/io/ananas/editimage/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->b()[F

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a()Liamutkarshtiwari/github/io/ananas/editimage/utils/f;

    move-result-object p1

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->b()[F

    move-result-object p1

    .line 3
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, p1, v2

    mul-float v3, v3, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    mul-float v5, v5, v7

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v7, v0, v5

    const/4 v8, 0x6

    aget v9, p1, v8

    mul-float v7, v7, v9

    add-float/2addr v3, v7

    aput v3, v1, v2

    .line 4
    aget v3, v0, v2

    aget v7, p1, v4

    mul-float v3, v3, v7

    aget v7, v0, v4

    const/4 v9, 0x4

    aget v10, p1, v9

    mul-float v7, v7, v10

    add-float/2addr v3, v7

    aget v7, v0, v5

    const/4 v10, 0x7

    aget v11, p1, v10

    mul-float v7, v7, v11

    add-float/2addr v3, v7

    aput v3, v1, v4

    .line 5
    aget v3, v0, v2

    aget v7, p1, v5

    mul-float v3, v3, v7

    aget v7, v0, v4

    const/4 v11, 0x5

    aget v12, p1, v11

    mul-float v7, v7, v12

    add-float/2addr v3, v7

    aget v7, v0, v5

    const/16 v12, 0x8

    aget v13, p1, v12

    mul-float v7, v7, v13

    add-float/2addr v3, v7

    aput v3, v1, v5

    .line 6
    aget v3, v0, v6

    aget v7, p1, v2

    mul-float v3, v3, v7

    aget v7, v0, v9

    aget v13, p1, v6

    mul-float v7, v7, v13

    add-float/2addr v3, v7

    aget v7, v0, v11

    aget v13, p1, v8

    mul-float v7, v7, v13

    add-float/2addr v3, v7

    aput v3, v1, v6

    .line 7
    aget v3, v0, v6

    aget v7, p1, v4

    mul-float v3, v3, v7

    aget v7, v0, v9

    aget v13, p1, v9

    mul-float v7, v7, v13

    add-float/2addr v3, v7

    aget v7, v0, v11

    aget v13, p1, v10

    mul-float v7, v7, v13

    add-float/2addr v3, v7

    aput v3, v1, v9

    .line 8
    aget v3, v0, v6

    aget v7, p1, v5

    mul-float v3, v3, v7

    aget v7, v0, v9

    aget v13, p1, v11

    mul-float v7, v7, v13

    add-float/2addr v3, v7

    aget v7, v0, v11

    aget v13, p1, v12

    mul-float v7, v7, v13

    add-float/2addr v3, v7

    aput v3, v1, v11

    .line 9
    aget v3, v0, v8

    aget v2, p1, v2

    mul-float v3, v3, v2

    aget v2, v0, v10

    aget v6, p1, v6

    mul-float v2, v2, v6

    add-float/2addr v3, v2

    aget v2, v0, v12

    aget v6, p1, v8

    mul-float v2, v2, v6

    add-float/2addr v3, v2

    aput v3, v1, v8

    .line 10
    aget v2, v0, v8

    aget v3, p1, v4

    mul-float v2, v2, v3

    aget v3, v0, v10

    aget v4, p1, v9

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aget v3, v0, v12

    aget v4, p1, v10

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v10

    .line 11
    aget v2, v0, v8

    aget v3, p1, v5

    mul-float v2, v2, v3

    aget v3, v0, v10

    aget v4, p1, v11

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aget v0, v0, v12

    aget p1, p1, v12

    mul-float v0, v0, p1

    add-float/2addr v2, v0

    aput v2, v1, v12

    return-void
.end method

.method public e()V
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "              "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public f([F)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->a:[F

    aget v3, p1, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
