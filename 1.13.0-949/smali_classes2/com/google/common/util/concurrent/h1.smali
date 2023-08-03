.class public abstract Lcom/google/common/util/concurrent/h1;
.super Ljava/lang/Object;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/h1$j;,
        Lcom/google/common/util/concurrent/h1$i;,
        Lcom/google/common/util/concurrent/h1$h;,
        Lcom/google/common/util/concurrent/h1$l;,
        Lcom/google/common/util/concurrent/h1$g;,
        Lcom/google/common/util/concurrent/h1$k;,
        Lcom/google/common/util/concurrent/h1$m;,
        Lcom/google/common/util/concurrent/h1$n;,
        Lcom/google/common/util/concurrent/h1$o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final a:I = 0x400

.field private static final b:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h1$e;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h1$e;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/h1;->b:Lcom/google/common/base/i0;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/h1$f;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h1$f;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/h1;->c:Lcom/google/common/base/i0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/h1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/h1;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/h1;->d(I)I

    move-result p0

    return p0
.end method

.method static synthetic b(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/h1;->q(I)I

    move-result p0

    return p0
.end method

.method private static d(I)I
    .locals 1

    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/d;->p(ILjava/math/RoundingMode;)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method static e(ILcom/google/common/base/i0;)Lcom/google/common/util/concurrent/h1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/i0<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/h1<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/h1$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/util/concurrent/h1$g;-><init>(ILcom/google/common/base/i0;Lcom/google/common/util/concurrent/h1$a;)V

    return-object v0
.end method

.method private static i(ILcom/google/common/base/i0;)Lcom/google/common/util/concurrent/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(I",
            "Lcom/google/common/base/i0<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/common/util/concurrent/h1<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x400

    if-ge p0, v0, :cond_0

    new-instance v0, Lcom/google/common/util/concurrent/h1$l;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/h1$l;-><init>(ILcom/google/common/base/i0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/h1$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/h1$h;-><init>(ILcom/google/common/base/i0;)V

    :goto_0
    return-object v0
.end method

.method public static j(I)Lcom/google/common/util/concurrent/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/h1<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/h1$b;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h1$b;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h1;->i(ILcom/google/common/base/i0;)Lcom/google/common/util/concurrent/h1;

    move-result-object p0

    return-object p0
.end method

.method public static k(I)Lcom/google/common/util/concurrent/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/h1<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/h1;->c:Lcom/google/common/base/i0;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h1;->i(ILcom/google/common/base/i0;)Lcom/google/common/util/concurrent/h1;

    move-result-object p0

    return-object p0
.end method

.method public static l(II)Lcom/google/common/util/concurrent/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/h1<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/h1$d;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/h1$d;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h1;->i(ILcom/google/common/base/i0;)Lcom/google/common/util/concurrent/h1;

    move-result-object p0

    return-object p0
.end method

.method public static m(I)Lcom/google/common/util/concurrent/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/h1<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/h1$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h1$a;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h1;->e(ILcom/google/common/base/i0;)Lcom/google/common/util/concurrent/h1;

    move-result-object p0

    return-object p0
.end method

.method public static n(I)Lcom/google/common/util/concurrent/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/h1<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/h1;->b:Lcom/google/common/base/i0;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h1;->e(ILcom/google/common/base/i0;)Lcom/google/common/util/concurrent/h1;

    move-result-object p0

    return-object p0
.end method

.method public static o(II)Lcom/google/common/util/concurrent/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/h1<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/h1$c;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/h1$c;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/h1;->e(ILcom/google/common/base/i0;)Lcom/google/common/util/concurrent/h1;

    move-result-object p0

    return-object p0
.end method

.method private static q(I)I
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


# virtual methods
.method public c(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/collect/w2;->Q(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 6
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/h1;->h(Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 8
    aget v2, v0, v1

    .line 9
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/h1;->g(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    const/4 v1, 0x1

    .line 10
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 11
    aget v3, v0, v1

    if-ne v3, v2, :cond_2

    add-int/lit8 v3, v1, -0x1

    .line 12
    aget-object v3, p1, v3

    aput-object v3, p1, v1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/h1;->g(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    move v2, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public abstract g(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation
.end method

.method abstract h(Ljava/lang/Object;)I
.end method

.method public abstract p()I
.end method
