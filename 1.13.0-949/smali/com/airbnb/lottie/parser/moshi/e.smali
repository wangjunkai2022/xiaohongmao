.class final Lcom/airbnb/lottie/parser/moshi/e;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/parser/moshi/e$e;,
        Lcom/airbnb/lottie/parser/moshi/e$d;,
        Lcom/airbnb/lottie/parser/moshi/e$f;,
        Lcom/airbnb/lottie/parser/moshi/e$b;,
        Lcom/airbnb/lottie/parser/moshi/e$c;,
        Lcom/airbnb/lottie/parser/moshi/e$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic j:Z


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field b:[Lcom/airbnb/lottie/parser/moshi/e$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/airbnb/lottie/parser/moshi/e$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:I

.field private g:Lcom/airbnb/lottie/parser/moshi/e$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/e<",
            "TK;TV;>.d;"
        }
    .end annotation
.end field

.field private h:Lcom/airbnb/lottie/parser/moshi/e$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/e<",
            "TK;TV;>.e;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/parser/moshi/e;

    .line 2
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$a;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/moshi/e$a;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/e;->i:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/e;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    .line 4
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/airbnb/lottie/parser/moshi/e;->i:Ljava/util/Comparator;

    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->a:Ljava/util/Comparator;

    .line 6
    new-instance p1, Lcom/airbnb/lottie/parser/moshi/e$g;

    invoke-direct {p1}, Lcom/airbnb/lottie/parser/moshi/e$g;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/16 p1, 0x10

    new-array p1, p1, [Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 7
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 8
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->f:I

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/e;->b([Lcom/airbnb/lottie/parser/moshi/e$g;)[Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 2
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/e;->f:I

    return-void
.end method

.method static b([Lcom/airbnb/lottie/parser/moshi/e$g;)[Lcom/airbnb/lottie/parser/moshi/e$g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;)[",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 3
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/e$c;

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/e$c;-><init>()V

    .line 4
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/e$b;

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/moshi/e$b;-><init>()V

    .line 5
    new-instance v4, Lcom/airbnb/lottie/parser/moshi/e$b;

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/e$b;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_7

    .line 6
    aget-object v7, p0, v6

    if-nez v7, :cond_0

    goto :goto_4

    .line 7
    :cond_0
    invoke-virtual {v2, v7}, Lcom/airbnb/lottie/parser/moshi/e$c;->b(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    :goto_1
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/e$c;->a()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 9
    iget v10, v10, Lcom/airbnb/lottie/parser/moshi/e$g;->g:I

    and-int/2addr v10, v0

    if-nez v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v3, v8}, Lcom/airbnb/lottie/parser/moshi/e$b;->b(I)V

    .line 11
    invoke-virtual {v4, v9}, Lcom/airbnb/lottie/parser/moshi/e$b;->b(I)V

    .line 12
    invoke-virtual {v2, v7}, Lcom/airbnb/lottie/parser/moshi/e$c;->b(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 13
    :goto_2
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/e$c;->a()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 14
    iget v10, v7, Lcom/airbnb/lottie/parser/moshi/e$g;->g:I

    and-int/2addr v10, v0

    if-nez v10, :cond_3

    .line 15
    invoke-virtual {v3, v7}, Lcom/airbnb/lottie/parser/moshi/e$b;->a(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/parser/moshi/e$b;->a(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    if-lez v8, :cond_5

    .line 17
    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/e$b;->c()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v8

    goto :goto_3

    :cond_5
    move-object v8, v7

    :goto_3
    aput-object v8, v1, v6

    add-int v8, v6, v0

    if-lez v9, :cond_6

    .line 18
    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/e$b;->c()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v7

    :cond_6
    aput-object v7, v1, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private i(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_e

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 2
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget v3, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 4
    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    .line 5
    iget-object v0, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 6
    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v3, :cond_2

    .line 7
    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_3

    .line 8
    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    .line 9
    :cond_4
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/e;->n(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->m(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    goto :goto_5

    .line 11
    :cond_5
    :goto_4
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->m(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    :goto_5
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    .line 12
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 13
    iget-object v3, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v3, :cond_7

    .line 14
    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-eqz v1, :cond_8

    .line 15
    iget v2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_7

    .line 16
    :cond_9
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/e;->m(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->n(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    goto :goto_8

    .line 18
    :cond_a
    :goto_7
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->n(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    :goto_8
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    .line 19
    iput v3, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-eqz p2, :cond_d

    goto :goto_9

    .line 20
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-nez p2, :cond_d

    goto :goto_9

    .line 21
    :cond_d
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_0

    :cond_e
    :goto_9
    return-void
.end method

.method private l(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz p2, :cond_0

    .line 3
    iput-object v0, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    :cond_0
    if-eqz v0, :cond_2

    .line 4
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-ne v1, p1, :cond_1

    .line 5
    iput-object p2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_0

    .line 6
    :cond_1
    iput-object p2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->g:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    .line 8
    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method private m(Lcom/airbnb/lottie/parser/moshi/e$g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 2
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 3
    iget-object v2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 4
    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 5
    iput-object v2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v2, :cond_0

    .line 6
    iput-object p1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 7
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->l(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 8
    iput-object p1, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 9
    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 10
    iget v0, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 11
    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 12
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-eqz v3, :cond_3

    .line 13
    iget v4, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 14
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    return-void
.end method

.method private n(Lcom/airbnb/lottie/parser/moshi/e$g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 2
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 3
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 4
    iget-object v3, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 5
    iput-object v3, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v3, :cond_0

    .line 6
    iput-object p1, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 7
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/e;->l(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 8
    iput-object p1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 9
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 10
    iget v1, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 11
    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 12
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-eqz v2, :cond_3

    .line 13
    iget v4, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 14
    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    return-void
.end method

.method private static o(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method private p()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    .line 3
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 5
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    :goto_0
    if-eq v2, v0, :cond_0

    .line 6
    iget-object v3, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 7
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    move-object v2, v3

    goto :goto_0

    .line 8
    :cond_0
    iput-object v0, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v0, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->h(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method d(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->a:Ljava/util/Comparator;

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/parser/moshi/e;->o(I)I

    move-result v6

    .line 4
    array-length v2, v1

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    and-int/2addr v2, v6

    .line 5
    aget-object v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 6
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/e;->i:Ljava/util/Comparator;

    if-ne v0, v5, :cond_0

    .line 7
    move-object v5, p1

    check-cast v5, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_1

    .line 8
    iget-object v7, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->f:Ljava/lang/Object;

    invoke-interface {v5, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    goto :goto_1

    .line 9
    :cond_1
    iget-object v7, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->f:Ljava/lang/Object;

    invoke-interface {v0, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    :goto_1
    if-nez v7, :cond_2

    return-object v3

    :cond_2
    if-gez v7, :cond_3

    .line 10
    iget-object v8, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_2

    :cond_3
    iget-object v8, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    :goto_2
    if-nez v8, :cond_4

    move-object v10, v3

    move v11, v7

    goto :goto_3

    :cond_4
    move-object v3, v8

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    move-object v10, v3

    const/4 v11, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v4

    .line 11
    :cond_6
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/e;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-nez v10, :cond_9

    .line 12
    sget-object p2, Lcom/airbnb/lottie/parser/moshi/e;->i:Ljava/util/Comparator;

    if-ne v0, p2, :cond_8

    instance-of p2, p1, Ljava/lang/Comparable;

    if-eqz p2, :cond_7

    goto :goto_4

    .line 13
    :cond_7
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_8
    :goto_4
    new-instance p2, Lcom/airbnb/lottie/parser/moshi/e$g;

    iget-object v8, v7, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    move-object v3, p2

    move-object v4, v10

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/parser/moshi/e$g;-><init>(Lcom/airbnb/lottie/parser/moshi/e$g;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 15
    aput-object p2, v1, v2

    goto :goto_6

    .line 16
    :cond_9
    new-instance p2, Lcom/airbnb/lottie/parser/moshi/e$g;

    iget-object v8, v7, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    move-object v3, p2

    move-object v4, v10

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/parser/moshi/e$g;-><init>(Lcom/airbnb/lottie/parser/moshi/e$g;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    if-gez v11, :cond_a

    .line 17
    iput-object p2, v10, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_5

    .line 18
    :cond_a
    iput-object p2, v10, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 19
    :goto_5
    invoke-direct {p0, v10, v9}, Lcom/airbnb/lottie/parser/moshi/e;->i(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    .line 20
    :goto_6
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->f:I

    if-le p1, v0, :cond_b

    .line 21
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/e;->a()V

    .line 22
    :cond_b
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    return-object p2
.end method

.method e(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/e$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/e;->h(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/airbnb/lottie/parser/moshi/e;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->g:Lcom/airbnb/lottie/parser/moshi/e$d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$d;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/e$d;-><init>(Lcom/airbnb/lottie/parser/moshi/e;)V

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->g:Lcom/airbnb/lottie/parser/moshi/e$d;

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->h(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method h(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/e$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->d(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-object v0
.end method

.method j(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 2
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 3
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 4
    :cond_0
    iget-object p2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 5
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 6
    iget-object v2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    .line 7
    iget v2, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-le v2, v4, :cond_1

    invoke-virtual {p2}, Lcom/airbnb/lottie/parser/moshi/e$g;->b()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/e$g;->a()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p2

    .line 8
    :goto_0
    invoke-virtual {p0, p2, v3}, Lcom/airbnb/lottie/parser/moshi/e;->j(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    .line 9
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v1, :cond_2

    .line 10
    iget v2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 11
    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 12
    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 13
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 14
    :goto_1
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v1, :cond_3

    .line 15
    iget v3, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 16
    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 17
    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 18
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 19
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/parser/moshi/e;->l(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/parser/moshi/e;->l(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 22
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 23
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->l(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 24
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_2

    .line 25
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/e;->l(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 26
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/airbnb/lottie/parser/moshi/e;->i(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    .line 27
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    .line 28
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    return-void
.end method

.method k(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/e$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/airbnb/lottie/parser/moshi/e$g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->h(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/e;->j(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    :cond_0
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->h:Lcom/airbnb/lottie/parser/moshi/e$e;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$e;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/e$e;-><init>(Lcom/airbnb/lottie/parser/moshi/e;)V

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->h:Lcom/airbnb/lottie/parser/moshi/e$e;

    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const-string v0, "key == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/e;->d(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    .line 4
    iput-object p2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->k(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    return v0
.end method
