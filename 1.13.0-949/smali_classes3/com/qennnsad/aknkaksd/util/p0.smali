.class public Lcom/qennnsad/aknkaksd/util/p0;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-gt p1, v0, :cond_a

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 4
    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, p1, :cond_1

    .line 5
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v2, p0, p1}, Lcom/qennnsad/aknkaksd/util/p0;->d([I[II)[I

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_3

    .line 7
    aget v6, v2, v4

    if-ne v6, v5, :cond_2

    add-int/lit8 v6, v4, 0x1

    aget v7, v2, v6

    if-nez v7, :cond_2

    .line 8
    aput v3, v2, v4

    .line 9
    aput v5, v2, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v4, :cond_5

    .line 10
    aget v8, v2, v6

    if-ne v8, v5, :cond_4

    add-int/lit8 v7, v7, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_7

    if-ge v6, v7, :cond_6

    .line 11
    aput v5, v2, v6

    goto :goto_6

    .line 12
    :cond_6
    aput v3, v2, v6

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    sub-int v4, v0, p1

    :goto_7
    if-ge v4, v0, :cond_9

    .line 13
    aget v6, v2, v4

    if-nez v6, :cond_8

    const/4 v4, 0x0

    goto :goto_8

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x1

    :goto_8
    xor-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 14
    invoke-static {v2, p0, p1}, Lcom/qennnsad/aknkaksd/util/p0;->d([I[II)[I

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 15
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9519\u8bef\uff01\u6570\u7ec4a\u4e2d\u53ea\u6709"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u5143\u7d20\u3002"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u5927\u4e8e"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!!!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    div-float/2addr v0, v1

    .line 2
    new-instance p0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "W"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/p0;->a([II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private static d([I[II)[I
    .locals 4

    .line 1
    new-array p2, p2, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 3
    aget v2, p0, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4
    aget v2, p1, v0

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static e(F)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p0

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
