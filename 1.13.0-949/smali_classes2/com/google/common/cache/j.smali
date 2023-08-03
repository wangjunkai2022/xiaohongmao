.class Lcom/google/common/cache/j;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/j$n;,
        Lcom/google/common/cache/j$o;,
        Lcom/google/common/cache/j$l;,
        Lcom/google/common/cache/j$p;,
        Lcom/google/common/cache/j$h;,
        Lcom/google/common/cache/j$b0;,
        Lcom/google/common/cache/j$k;,
        Lcom/google/common/cache/j$c;,
        Lcom/google/common/cache/j$g;,
        Lcom/google/common/cache/j$l0;,
        Lcom/google/common/cache/j$z;,
        Lcom/google/common/cache/j$j;,
        Lcom/google/common/cache/j$i;,
        Lcom/google/common/cache/j$e;,
        Lcom/google/common/cache/j$k0;,
        Lcom/google/common/cache/j$m;,
        Lcom/google/common/cache/j$r;,
        Lcom/google/common/cache/j$i0;,
        Lcom/google/common/cache/j$h0;,
        Lcom/google/common/cache/j$j0;,
        Lcom/google/common/cache/j$x;,
        Lcom/google/common/cache/j$s;,
        Lcom/google/common/cache/j$f0;,
        Lcom/google/common/cache/j$d0;,
        Lcom/google/common/cache/j$g0;,
        Lcom/google/common/cache/j$c0;,
        Lcom/google/common/cache/j$e0;,
        Lcom/google/common/cache/j$v;,
        Lcom/google/common/cache/j$y;,
        Lcom/google/common/cache/j$u;,
        Lcom/google/common/cache/j$w;,
        Lcom/google/common/cache/j$d;,
        Lcom/google/common/cache/j$q;,
        Lcom/google/common/cache/j$a0;,
        Lcom/google/common/cache/j$f;,
        Lcom/google/common/cache/j$t;
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
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# static fields
.field static final A:I = 0x10

.field static final B:Ljava/util/logging/Logger;

.field static final C:Lcom/google/common/cache/j$a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j$a0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final D:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "*>;"
        }
    .end annotation
.end field

.field static final w:I = 0x40000000

.field static final x:I = 0x10000

.field static final y:I = 0x3

.field static final z:I = 0x3f


# instance fields
.field final a:I

.field final b:I

.field final c:[Lcom/google/common/cache/j$r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/cache/j$r<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/cache/j$t;

.field final h:Lcom/google/common/cache/j$t;

.field final i:J

.field final j:Lcom/google/common/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/r<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final k:J

.field final l:J

.field final m:J

.field final n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/RemovalNotification<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final o:Lcom/google/common/cache/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/o<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final p:Lcom/google/common/base/l0;

.field final q:Lcom/google/common/cache/j$f;

.field final r:Lcom/google/common/cache/a$b;

.field final s:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field u:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/cache/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/j;->B:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/google/common/cache/j$a;

    invoke-direct {v0}, Lcom/google/common/cache/j$a;-><init>()V

    sput-object v0, Lcom/google/common/cache/j;->C:Lcom/google/common/cache/j$a0;

    .line 3
    new-instance v0, Lcom/google/common/cache/j$b;

    invoke-direct {v0}, Lcom/google/common/cache/j$b;-><init>()V

    sput-object v0, Lcom/google/common/cache/j;->D:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V
    .locals 11
    .param p2    # Lcom/google/common/cache/CacheLoader;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/d<",
            "-TK;-TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/cache/d;->j()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/cache/j;->d:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/cache/d;->o()Lcom/google/common/cache/j$t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/j;->g:Lcom/google/common/cache/j$t;

    .line 4
    invoke-virtual {p1}, Lcom/google/common/cache/d;->v()Lcom/google/common/cache/j$t;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/cache/j;->h:Lcom/google/common/cache/j$t;

    .line 5
    invoke-virtual {p1}, Lcom/google/common/cache/d;->n()Lcom/google/common/base/Equivalence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    .line 6
    invoke-virtual {p1}, Lcom/google/common/cache/d;->u()Lcom/google/common/base/Equivalence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/cache/j;->f:Lcom/google/common/base/Equivalence;

    .line 7
    invoke-virtual {p1}, Lcom/google/common/cache/d;->p()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/cache/j;->i:J

    .line 8
    invoke-virtual {p1}, Lcom/google/common/cache/d;->w()Lcom/google/common/cache/r;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/j;->j:Lcom/google/common/cache/r;

    .line 9
    invoke-virtual {p1}, Lcom/google/common/cache/d;->k()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/j;->k:J

    .line 10
    invoke-virtual {p1}, Lcom/google/common/cache/d;->l()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/j;->l:J

    .line 11
    invoke-virtual {p1}, Lcom/google/common/cache/d;->q()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/j;->m:J

    .line 12
    invoke-virtual {p1}, Lcom/google/common/cache/d;->r()Lcom/google/common/cache/o;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/j;->o:Lcom/google/common/cache/o;

    .line 13
    sget-object v4, Lcom/google/common/cache/d$d;->a:Lcom/google/common/cache/d$d;

    if-ne v3, v4, :cond_0

    .line 14
    invoke-static {}, Lcom/google/common/cache/j;->h()Ljava/util/Queue;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v3, p0, Lcom/google/common/cache/j;->n:Ljava/util/Queue;

    .line 15
    invoke-virtual {p0}, Lcom/google/common/cache/j;->L()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/common/cache/d;->t(Z)Lcom/google/common/base/l0;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    .line 16
    invoke-virtual {p0}, Lcom/google/common/cache/j;->T()Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/common/cache/j;->X()Z

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/google/common/cache/j$f;->d(Lcom/google/common/cache/j$t;ZZ)Lcom/google/common/cache/j$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/j;->q:Lcom/google/common/cache/j$f;

    .line 17
    invoke-virtual {p1}, Lcom/google/common/cache/d;->s()Lcom/google/common/base/i0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/a$b;

    iput-object v0, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    .line 18
    iput-object p2, p0, Lcom/google/common/cache/j;->s:Lcom/google/common/cache/CacheLoader;

    .line 19
    invoke-virtual {p1}, Lcom/google/common/cache/d;->m()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 20
    invoke-virtual {p0}, Lcom/google/common/cache/j;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->g()Z

    move-result v0

    if-nez v0, :cond_1

    int-to-long v3, p2

    .line 21
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22
    :goto_1
    iget v4, p0, Lcom/google/common/cache/j;->d:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/common/cache/j;->i()Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/google/common/cache/j;->i:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    .line 23
    iput v3, p0, Lcom/google/common/cache/j;->b:I

    add-int/lit8 v3, v2, -0x1

    .line 24
    iput v3, p0, Lcom/google/common/cache/j;->a:I

    .line 25
    invoke-virtual {p0, v2}, Lcom/google/common/cache/j;->C(I)[Lcom/google/common/cache/j$r;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    .line 26
    div-int v3, p2, v2

    mul-int v4, v3, v2

    if-ge v4, p2, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_2
    if-ge v1, v3, :cond_5

    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 27
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/cache/j;->i()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 28
    iget-wide v3, p0, Lcom/google/common/cache/j;->i:J

    int-to-long v5, v2

    div-long v7, v3, v5

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 29
    rem-long/2addr v3, v5

    .line 30
    :goto_3
    iget-object p2, p0, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    array-length v2, p2

    if-ge v0, v2, :cond_8

    int-to-long v5, v0

    cmp-long v2, v5, v3

    if-nez v2, :cond_6

    sub-long/2addr v7, v9

    .line 31
    :cond_6
    invoke-virtual {p1}, Lcom/google/common/cache/d;->s()Lcom/google/common/base/i0;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/a$b;

    invoke-virtual {p0, v1, v7, v8, v2}, Lcom/google/common/cache/j;->f(IJLcom/google/common/cache/a$b;)Lcom/google/common/cache/j$r;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 32
    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    array-length v2, p2

    if-ge v0, v2, :cond_8

    const-wide/16 v2, -0x1

    .line 33
    invoke-virtual {p1}, Lcom/google/common/cache/d;->s()Lcom/google/common/base/i0;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/a$b;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/common/cache/j;->f(IJLcom/google/common/cache/a$b;)Lcom/google/common/cache/j$r;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method static E()Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/j$q;->a:Lcom/google/common/cache/j$q;

    return-object v0
.end method

.method static F(Lcom/google/common/cache/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/cache/j;->E()Lcom/google/common/cache/n;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/common/cache/n;->q(Lcom/google/common/cache/n;)V

    .line 3
    invoke-interface {p0, v0}, Lcom/google/common/cache/n;->i(Lcom/google/common/cache/n;)V

    return-void
.end method

.method static G(Lcom/google/common/cache/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/cache/j;->E()Lcom/google/common/cache/n;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/common/cache/n;->r(Lcom/google/common/cache/n;)V

    .line 3
    invoke-interface {p0, v0}, Lcom/google/common/cache/n;->s(Lcom/google/common/cache/n;)V

    return-void
.end method

.method static P(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private static R(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/x2;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method static S()Lcom/google/common/cache/j$a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/j;->C:Lcom/google/common/cache/j$a0;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/google/common/cache/j;->R(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/google/common/cache/n;->q(Lcom/google/common/cache/n;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/common/cache/n;->i(Lcom/google/common/cache/n;)V

    return-void
.end method

.method static d(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/google/common/cache/n;->r(Lcom/google/common/cache/n;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/common/cache/n;->s(Lcom/google/common/cache/n;)V

    return-void
.end method

.method static h()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/j;->D:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method A()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 3
    aget-object v5, v0, v4

    iget v5, v5, Lcom/google/common/cache/j$r;->b:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method B(Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .locals 1
    .param p3    # Lcom/google/common/cache/n;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/d;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/cache/j$r;->F(Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw p1
.end method

.method final C(I)[Lcom/google/common/cache/j$r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/cache/j$r<",
            "TK;TV;>;"
        }
    .end annotation

    new-array p1, p1, [Lcom/google/common/cache/j$r;

    return-object p1
.end method

.method D(Lcom/google/common/cache/n;Ljava/lang/Object;I)Lcom/google/common/cache/j$a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/d;
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->b()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/j;->h:Lcom/google/common/cache/j$t;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v0

    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/common/cache/j$t;->b(Lcom/google/common/cache/j$r;Lcom/google/common/cache/n;Ljava/lang/Object;I)Lcom/google/common/cache/j$a0;

    move-result-object p1

    return-object p1
.end method

.method H()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/j;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalNotification;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/j;->o:Lcom/google/common/cache/o;

    invoke-interface {v1, v0}, Lcom/google/common/cache/o;->a(Lcom/google/common/cache/RemovalNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/google/common/cache/j;->B:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method I(Lcom/google/common/cache/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->b()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/j$r;->L(Lcom/google/common/cache/n;I)Z

    return-void
.end method

.method J(Lcom/google/common/cache/j$a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/j$a0;->c()Lcom/google/common/cache/n;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/common/cache/n;->b()I

    move-result v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/cache/j$r;->M(Ljava/lang/Object;ILcom/google/common/cache/j$a0;)Z

    return-void
.end method

.method K()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->k()Z

    move-result v0

    return v0
.end method

.method L()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->M()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method M()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method N(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/cache/j;->s:Lcom/google/common/cache/CacheLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/google/common/cache/j$r;->Q(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    return-void
.end method

.method O()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/j;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Q(I)Lcom/google/common/cache/j$r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/j$r<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    iget v1, p0, Lcom/google/common/cache/j;->b:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lcom/google/common/cache/j;->a:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method T()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->U()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method U()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method V()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/j;->g:Lcom/google/common/cache/j$t;

    sget-object v1, Lcom/google/common/cache/j$t;->a:Lcom/google/common/cache/j$t;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method W()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/j;->h:Lcom/google/common/cache/j$t;

    sget-object v1, Lcom/google/common/cache/j$t;->a:Lcom/google/common/cache/j$t;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method X()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->Y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method Y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->l()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/common/cache/j$r;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/common/cache/j$r;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/j$r;->h(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1
    :cond_0
    iget-object v3, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v3}, Lcom/google/common/base/l0;->a()J

    move-result-wide v3

    .line 2
    iget-object v5, v0, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    const-wide/16 v9, 0x0

    .line 3
    array-length v11, v5

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v5, v12

    .line 4
    iget v14, v13, Lcom/google/common/cache/j$r;->b:I

    .line 5
    iget-object v14, v13, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v15, 0x0

    .line 6
    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 7
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/n;

    :goto_3
    if-eqz v2, :cond_2

    move-object/from16 v16, v5

    .line 8
    invoke-virtual {v13, v2, v3, v4}, Lcom/google/common/cache/j$r;->y(Lcom/google/common/cache/n;J)Ljava/lang/Object;

    move-result-object v5

    move-wide/from16 v17, v3

    if-eqz v5, :cond_1

    .line 9
    iget-object v3, v0, Lcom/google/common/cache/j;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v3, v1, v5}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    .line 10
    :cond_1
    invoke-interface {v2}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v2

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    goto :goto_3

    :cond_2
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    .line 11
    iget v2, v13, Lcom/google/common/cache/j$r;->d:I

    int-to-long v2, v2

    add-long/2addr v9, v2

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    cmp-long v2, v9, v6

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method e(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/d;
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->b()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/cache/j$r;->j(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1

    return-object p1
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

    .annotation build Lh3/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j;->v:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/cache/j$h;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/j$h;-><init>(Lcom/google/common/cache/j;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/j;->v:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method f(IJLcom/google/common/cache/a$b;)Lcom/google/common/cache/j$r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/google/common/cache/a$b;",
            ")",
            "Lcom/google/common/cache/j$r<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/common/cache/j$r;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/j$r;-><init>(Lcom/google/common/cache/j;IJLcom/google/common/cache/a$b;)V

    return-object v6
.end method

.method g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/j;->j:Lcom/google/common/cache/r;

    sget-object v1, Lcom/google/common/cache/d$e;->a:Lcom/google/common/cache/d$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/j$r;->s(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method i()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/j;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 2
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 3
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/j$r;->b:I

    if-eqz v7, :cond_0

    return v3

    .line 4
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/j$r;->d:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v5, v1

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 5
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_3

    .line 6
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/j$r;->b:I

    if-eqz v7, :cond_2

    return v3

    .line 7
    :cond_2
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/j$r;->d:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-eqz v0, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/j;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method k()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/j;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    iget-object v0, p0, Lcom/google/common/cache/j;->t:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/cache/j$k;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/j$k;-><init>(Lcom/google/common/cache/j;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/j;->t:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method l()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/j;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method m(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/j$r;->t(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method n(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/f3;->c0()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/common/collect/o4;->A()Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v4}, Lcom/google/common/cache/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 5
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 7
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    .line 9
    :try_start_1
    iget-object p1, p0, Lcom/google/common/cache/j;->s:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v1, p1}, Lcom/google/common/cache/j;->y(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object p1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 11
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 12
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAll failed to return a value for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :catch_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, -0x1

    .line 15
    iget-object v4, p0, Lcom/google/common/cache/j;->s:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v1, v4}, Lcom/google/common/cache/j;->m(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v2}, Lcom/google/common/cache/a$b;->a(I)V

    .line 18
    iget-object v0, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v3}, Lcom/google/common/cache/a$b;->b(I)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    iget-object v0, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v2}, Lcom/google/common/cache/a$b;->a(I)V

    .line 20
    iget-object v0, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v3}, Lcom/google/common/cache/a$b;->b(I)V

    .line 21
    throw p1
.end method

.method o(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/f3;->c0()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    invoke-virtual {p0, v3}, Lcom/google/common/cache/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    invoke-interface {p1, v1}, Lcom/google/common/cache/a$b;->a(I)V

    .line 6
    iget-object p1, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    invoke-interface {p1, v2}, Lcom/google/common/cache/a$b;->b(I)V

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method p(Ljava/lang/Object;)Lcom/google/common/cache/n;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/j$r;->v(Ljava/lang/Object;I)Lcom/google/common/cache/n;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/j$r;->K(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/cache/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/j$r;->K(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/j$r;->s(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    invoke-interface {v1, v0}, Lcom/google/common/cache/a$b;->b(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    invoke-interface {v1, v0}, Lcom/google/common/cache/a$b;->a(I)V

    :goto_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/j$r;->R(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/j$r;->S(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/j$r;->Y(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j;->u(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/cache/j$r;->Z(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method s(Lcom/google/common/cache/n;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/j;->w(Lcom/google/common/cache/n;J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/j;->A()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->x(J)I

    move-result v0

    return v0
.end method

.method t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j;->s:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/j;->m(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method u(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->h(Ljava/lang/Object;)I

    move-result p1

    .line 2
    invoke-static {p1}, Lcom/google/common/cache/j;->P(I)I

    move-result p1

    return p1
.end method

.method v(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j;->u:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/cache/j$b0;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/j$b0;-><init>(Lcom/google/common/cache/j;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/j;->u:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method

.method w(Lcom/google/common/cache/n;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/j;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/n;->o()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/j;->k:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/j;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/common/cache/n;->m()J

    move-result-wide v2

    sub-long/2addr p2, v2

    iget-wide v2, p0, Lcom/google/common/cache/j;->l:J

    cmp-long p1, p2, v2

    if-ltz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method x(Lcom/google/common/cache/n;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .annotation build Lh3/d;
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/n;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/j;->Q(I)Lcom/google/common/cache/j$r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/cache/j$r;->y(Lcom/google/common/cache/n;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method y(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TK;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/common/base/g0;->c()Lcom/google/common/base/g0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->e(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/g0;->l()Lcom/google/common/base/g0;

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v5, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0, v5, v4}, Lcom/google/common/cache/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/g0;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/a$b;->e(J)V

    return-object p1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/g0;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/a$b;->d(J)V

    .line 12
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " returned null keys or values from loadAll"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/g0;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/a$b;->d(J)V

    .line 14
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " returned null map from loadAll"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    new-instance p2, Lcom/google/common/util/concurrent/ExecutionError;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p2

    :catch_1
    move-exception p1

    .line 16
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 17
    new-instance p2, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 19
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_4
    move-exception p1

    .line 20
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_2
    if-nez v1, :cond_5

    .line 21
    iget-object p2, p0, Lcom/google/common/cache/j;->r:Lcom/google/common/cache/a$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/g0;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/a$b;->d(J)V

    .line 22
    :cond_5
    throw p1
.end method
