.class public final Lcom/google/common/primitives/e;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/e$a;,
        Lcom/google/common/primitives/e$c;,
        Lcom/google/common/primitives/e$b;
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# static fields
.field public static final a:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([FFII)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/e;->k([FFII)I

    move-result p0

    return p0
.end method

.method static synthetic b([FFII)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/e;->p([FFII)I

    move-result p0

    return p0
.end method

.method public static varargs c([F)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/primitives/e$a;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/e$a;-><init>([F)V

    return-object v0
.end method

.method public static d(FF)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static varargs e([[F)[F
    .locals 7

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 2
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-array v0, v3, [F

    .line 4
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, p0, v3

    .line 5
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static f(FFF)F
    .locals 4
    .annotation build Lh3/a;
    .end annotation

    cmpg-float v0, p1, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "min (%s) must be less than or equal to max (%s)"

    invoke-static {v0, v3, v1, v2}, Lcom/google/common/base/a0;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static g([FF)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    cmpl-float v3, v3, p1

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static h([FII)[F
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Invalid minLength: %s"

    .line 1
    invoke-static {v2, v3, p1}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Invalid padding: %s"

    .line 2
    invoke-static {v0, v1, p2}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 3
    array-length v0, p0

    if-ge v0, p1, :cond_2

    add-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static i(F)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->hashCode()I

    move-result p0

    return p0
.end method

.method public static j([FF)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/e;->k([FFII)I

    move-result p0

    return p0
.end method

.method private static k([FFII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    aget v0, p0, p2

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static l([F[F)I
    .locals 5

    const-string v0, "array"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "target"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    .line 5
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    add-int v3, v0, v2

    .line 6
    aget v3, p0, v3

    aget v4, p1, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static m(F)Z
    .locals 1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float v0, v0, p0

    if-gez v0, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs n(Ljava/lang/String;[F)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 4
    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o([FF)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/e;->p([FFII)I

    move-result p0

    return p0
.end method

.method private static p([FFII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    aget v0, p0, p3

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static q()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[F>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/primitives/e$c;->a:Lcom/google/common/primitives/e$c;

    return-object v0
.end method

.method public static varargs r([F)F
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    aget v0, p0, v1

    .line 3
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_1

    .line 4
    aget v1, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static varargs s([F)F
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    aget v0, p0, v1

    .line 3
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_1

    .line 4
    aget v1, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static t([F)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/e;->u([FII)V

    return-void
.end method

.method public static u([FII)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/a0;->f0(III)V

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 3
    aget v0, p0, p1

    .line 4
    aget v1, p0, p2

    aput v1, p0, p1

    .line 5
    aput v0, p0, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static v([F)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/e;->w([FII)V

    return-void
.end method

.method public static w([FII)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/a0;->f0(III)V

    .line 3
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([FII)V

    .line 4
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/e;->u([FII)V

    return-void
.end method

.method public static x()Lcom/google/common/base/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    sget-object v0, Lcom/google/common/primitives/e$b;->c:Lcom/google/common/primitives/e$b;

    return-object v0
.end method

.method public static y(Ljava/util/Collection;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[F"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/primitives/e$a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/primitives/e$a;

    invoke-virtual {p0}, Lcom/google/common/primitives/e$a;->c()[F

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 4
    array-length v0, p0

    .line 5
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static z(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .annotation build Lh3/a;
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/primitives/d;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
