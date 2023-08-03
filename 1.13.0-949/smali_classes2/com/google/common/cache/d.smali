.class public final Lcom/google/common/cache/d;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/d$e;,
        Lcom/google/common/cache/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# static fields
.field private static final q:I = 0x10

.field private static final r:I = 0x4

.field private static final s:I = 0x0

.field private static final t:I = 0x0

.field static final u:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "+",
            "Lcom/google/common/cache/a$b;",
            ">;"
        }
    .end annotation
.end field

.field static final v:Lcom/google/common/cache/f;

.field static final w:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "Lcom/google/common/cache/a$b;",
            ">;"
        }
    .end annotation
.end field

.field static final x:Lcom/google/common/base/l0;

.field private static final y:Ljava/util/logging/Logger;

.field static final z:I = -0x1


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:J

.field e:J

.field f:Lcom/google/common/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/r<",
            "-TK;-TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field g:Lcom/google/common/cache/j$t;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field h:Lcom/google/common/cache/j$t;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field i:J

.field j:J

.field k:J

.field l:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field m:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field n:Lcom/google/common/cache/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/o<",
            "-TK;-TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field o:Lcom/google/common/base/l0;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field p:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "+",
            "Lcom/google/common/cache/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/common/cache/d$a;

    invoke-direct {v0}, Lcom/google/common/cache/d$a;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/common/base/j0;->d(Ljava/lang/Object;)Lcom/google/common/base/i0;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/d;->u:Lcom/google/common/base/i0;

    .line 3
    new-instance v0, Lcom/google/common/cache/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/f;-><init>(JJJJJJ)V

    sput-object v0, Lcom/google/common/cache/d;->v:Lcom/google/common/cache/f;

    .line 4
    new-instance v0, Lcom/google/common/cache/d$b;

    invoke-direct {v0}, Lcom/google/common/cache/d$b;-><init>()V

    sput-object v0, Lcom/google/common/cache/d;->w:Lcom/google/common/base/i0;

    .line 5
    new-instance v0, Lcom/google/common/cache/d$c;

    invoke-direct {v0}, Lcom/google/common/cache/d$c;-><init>()V

    sput-object v0, Lcom/google/common/cache/d;->x:Lcom/google/common/base/l0;

    .line 6
    const-class v0, Lcom/google/common/cache/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/d;->y:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/common/cache/d;->b:I

    .line 4
    iput v0, p0, Lcom/google/common/cache/d;->c:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/google/common/cache/d;->d:J

    .line 6
    iput-wide v0, p0, Lcom/google/common/cache/d;->e:J

    .line 7
    iput-wide v0, p0, Lcom/google/common/cache/d;->i:J

    .line 8
    iput-wide v0, p0, Lcom/google/common/cache/d;->j:J

    .line 9
    iput-wide v0, p0, Lcom/google/common/cache/d;->k:J

    .line 10
    sget-object v0, Lcom/google/common/cache/d;->u:Lcom/google/common/base/i0;

    iput-object v0, p0, Lcom/google/common/cache/d;->p:Lcom/google/common/base/i0;

    return-void
.end method

.method public static D()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/d;

    invoke-direct {v0}, Lcom/google/common/cache/d;-><init>()V

    return-object v0
.end method

.method private c()V
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/d;->k:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    return-void
.end method

.method private d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-nez v0, :cond_1

    .line 2
    iget-wide v5, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "maximumWeight requires weigher"

    invoke-static {v1, v0}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    if-eqz v0, :cond_3

    .line 4
    iget-wide v5, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v0, "weigher requires maximumWeight"

    invoke-static {v1, v0}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_3
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 6
    sget-object v0, Lcom/google/common/cache/d;->y:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static h(Lcom/google/common/cache/e;)Lcom/google/common/cache/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/e;",
            ")",
            "Lcom/google/common/cache/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/e;->f()Lcom/google/common/cache/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/cache/d;->A()Lcom/google/common/cache/d;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Lcom/google/common/cache/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/cache/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    invoke-static {p0}, Lcom/google/common/cache/e;->e(Ljava/lang/String;)Lcom/google/common/cache/e;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/cache/d;->h(Lcom/google/common/cache/e;)Lcom/google/common/cache/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method A()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    return-object p0
.end method

.method public B(J)Lcom/google/common/cache/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->d:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "maximum size was already set to %s"

    invoke-static {v6, v7, v0, v1}, Lcom/google/common/base/a0;->s0(ZLjava/lang/String;J)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum weight was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/base/a0;->s0(ZLjava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/r;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "maximum size can not be combined with weigher"

    invoke-static {v0, v1}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const-string v0, "maximum size must not be negative"

    .line 4
    invoke-static {v4, v0}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 5
    iput-wide p1, p0, Lcom/google/common/cache/d;->d:J

    return-object p0
.end method

.method public C(J)Lcom/google/common/cache/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "maximum weight was already set to %s"

    invoke-static {v6, v7, v0, v1}, Lcom/google/common/base/a0;->s0(ZLjava/lang/String;J)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/cache/d;->d:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum size was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/base/a0;->s0(ZLjava/lang/String;J)V

    .line 3
    iput-wide p1, p0, Lcom/google/common/cache/d;->e:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const-string p1, "maximum weight must not be negative"

    .line 4
    invoke-static {v4, p1}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    return-object p0
.end method

.method public E()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/d;->w:Lcom/google/common/base/i0;

    iput-object v0, p0, Lcom/google/common/cache/d;->p:Lcom/google/common/base/i0;

    return-object p0
.end method

.method public F(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v0, p0, Lcom/google/common/cache/d;->k:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "refresh was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Lcom/google/common/base/a0;->s0(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration must be positive: %s %s"

    .line 3
    invoke-static {v2, v0, p1, p2, p3}, Lcom/google/common/base/a0;->t(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 4
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/d;->k:J

    return-object p0
.end method

.method public G(Lcom/google/common/cache/o;)Lcom/google/common/cache/d;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/o<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/d<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/o;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/o;

    iput-object p1, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/o;

    return-object p0
.end method

.method H(Lcom/google/common/cache/j$t;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j$t;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/j$t;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Key strength was already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/j$t;

    iput-object p1, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/j$t;

    return-object p0
.end method

.method I(Lcom/google/common/cache/j$t;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j$t;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/j$t;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Value strength was already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/j$t;

    iput-object p1, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/j$t;

    return-object p0
.end method

.method public J()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    sget-object v0, Lcom/google/common/cache/j$t;->b:Lcom/google/common/cache/j$t;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/d;->I(Lcom/google/common/cache/j$t;)Lcom/google/common/cache/d;

    move-result-object v0

    return-object v0
.end method

.method public K(Lcom/google/common/base/l0;)Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/l0;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->o:Lcom/google/common/base/l0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/l0;

    iput-object p1, p0, Lcom/google/common/cache/d;->o:Lcom/google/common/base/l0;

    return-object p0
.end method

.method L(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->m:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "value equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Equivalence;

    iput-object p1, p0, Lcom/google/common/cache/d;->m:Lcom/google/common/base/Equivalence;

    return-object p0
.end method

.method public M()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    sget-object v0, Lcom/google/common/cache/j$t;->c:Lcom/google/common/cache/j$t;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/d;->H(Lcom/google/common/cache/j$t;)Lcom/google/common/cache/d;

    move-result-object v0

    return-object v0
.end method

.method public N()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    sget-object v0, Lcom/google/common/cache/j$t;->c:Lcom/google/common/cache/j$t;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/d;->I(Lcom/google/common/cache/j$t;)Lcom/google/common/cache/d;

    move-result-object v0

    return-object v0
.end method

.method public O(Lcom/google/common/cache/r;)Lcom/google/common/cache/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/r<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/d<",
            "TK1;TV1;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    if-eqz v0, :cond_2

    .line 3
    iget-wide v3, p0, Lcom/google/common/cache/d;->d:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "weigher can not be combined with maximum size"

    invoke-static {v1, v0, v3, v4}, Lcom/google/common/base/a0;->s0(ZLjava/lang/String;J)V

    .line 4
    :cond_2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/r;

    iput-object p1, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/r;

    return-object p0
.end method

.method public a()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/c<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/d;->d()V

    .line 2
    invoke-direct {p0}, Lcom/google/common/cache/d;->c()V

    .line 3
    new-instance v0, Lcom/google/common/cache/j$o;

    invoke-direct {v0, p0}, Lcom/google/common/cache/j$o;-><init>(Lcom/google/common/cache/d;)V

    return-object v0
.end method

.method public b(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK1;TV1;>;)",
            "Lcom/google/common/cache/i<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/d;->d()V

    .line 2
    new-instance v0, Lcom/google/common/cache/j$n;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/j$n;-><init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method public e(I)Lcom/google/common/cache/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/cache/d;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/a0;->n0(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 3
    iput p1, p0, Lcom/google/common/cache/d;->c:I

    return-object p0
.end method

.method public f(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->j:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "expireAfterAccess was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Lcom/google/common/base/a0;->s0(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    .line 2
    invoke-static {v2, v0, p1, p2, p3}, Lcom/google/common/base/a0;->t(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/d;->j:J

    return-object p0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->i:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "expireAfterWrite was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Lcom/google/common/base/a0;->s0(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    .line 2
    invoke-static {v2, v0, p1, p2, p3}, Lcom/google/common/base/a0;->t(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/d;->i:J

    return-object p0
.end method

.method j()I
    .locals 2

    iget v0, p0, Lcom/google/common/cache/d;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method k()J
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/d;->j:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method l()J
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/d;->i:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method m()I
    .locals 2

    iget v0, p0, Lcom/google/common/cache/d;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method n()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->l:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/d;->o()Lcom/google/common/cache/j$t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/j$t;->a()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method o()Lcom/google/common/cache/j$t;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/j$t;

    sget-object v1, Lcom/google/common/cache/j$t;->a:Lcom/google/common/cache/j$t;

    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/j$t;

    return-object v0
.end method

.method p()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v0, p0, Lcom/google/common/cache/d;->j:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/r;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/cache/d;->d:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    :goto_0
    return-wide v0

    :cond_2
    :goto_1
    return-wide v2
.end method

.method q()J
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/d;->k:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method r()Lcom/google/common/cache/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/o<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/o;

    sget-object v1, Lcom/google/common/cache/d$d;->a:Lcom/google/common/cache/d$d;

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/o;

    return-object v0
.end method

.method s()Lcom/google/common/base/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/i0<",
            "+",
            "Lcom/google/common/cache/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->p:Lcom/google/common/base/i0;

    return-object v0
.end method

.method t(Z)Lcom/google/common/base/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->o:Lcom/google/common/base/l0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/google/common/base/l0;->b()Lcom/google/common/base/l0;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/common/cache/d;->x:Lcom/google/common/base/l0;

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/google/common/base/v;->c(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/google/common/cache/d;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    .line 3
    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/v$b;->d(Ljava/lang/String;I)Lcom/google/common/base/v$b;

    .line 4
    :cond_0
    iget v1, p0, Lcom/google/common/cache/d;->c:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/v$b;->d(Ljava/lang/String;I)Lcom/google/common/base/v$b;

    .line 6
    :cond_1
    iget-wide v1, p0, Lcom/google/common/cache/d;->d:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const-string v5, "maximumSize"

    .line 7
    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/base/v$b;->e(Ljava/lang/String;J)Lcom/google/common/base/v$b;

    .line 8
    :cond_2
    iget-wide v1, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-string v5, "maximumWeight"

    .line 9
    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/base/v$b;->e(Ljava/lang/String;J)Lcom/google/common/base/v$b;

    .line 10
    :cond_3
    iget-wide v1, p0, Lcom/google/common/cache/d;->i:J

    const-string v5, "ns"

    cmp-long v6, v1, v3

    if-eqz v6, :cond_4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/google/common/cache/d;->i:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/v$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    .line 12
    :cond_4
    iget-wide v1, p0, Lcom/google/common/cache/d;->j:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_5

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/common/cache/d;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/v$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/j$t;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/v$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/j$t;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/v$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/google/common/cache/d;->l:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    const-string v1, "keyEquivalence"

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/common/base/v$b;->p(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/google/common/cache/d;->m:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_9

    const-string v1, "valueEquivalence"

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/common/base/v$b;->p(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/o;

    if-eqz v1, :cond_a

    const-string v1, "removalListener"

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/common/base/v$b;->p(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    .line 24
    :cond_a
    invoke-virtual {v0}, Lcom/google/common/base/v$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->m:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/d;->v()Lcom/google/common/cache/j$t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/j$t;->a()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method v()Lcom/google/common/cache/j$t;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/j$t;

    sget-object v1, Lcom/google/common/cache/j$t;->a:Lcom/google/common/cache/j$t;

    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/j$t;

    return-object v0
.end method

.method w()Lcom/google/common/cache/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/r<",
            "TK1;TV1;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/r;

    sget-object v1, Lcom/google/common/cache/d$e;->a:Lcom/google/common/cache/d$e;

    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/r;

    return-object v0
.end method

.method public x(I)Lcom/google/common/cache/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/cache/d;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/a0;->n0(ZLjava/lang/String;I)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 3
    iput p1, p0, Lcom/google/common/cache/d;->b:I

    return-object p0
.end method

.method y()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/d;->p:Lcom/google/common/base/i0;

    sget-object v1, Lcom/google/common/cache/d;->w:Lcom/google/common/base/i0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method z(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->l:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "key equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Equivalence;

    iput-object p1, p0, Lcom/google/common/cache/d;->l:Lcom/google/common/base/Equivalence;

    return-object p0
.end method
