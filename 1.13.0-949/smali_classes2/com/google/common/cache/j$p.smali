.class Lcom/google/common/cache/j$p;
.super Lcom/google/common/cache/g;
.source "LocalCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/g<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final n:J = 0x1L


# instance fields
.field final a:Lcom/google/common/cache/j$t;

.field final b:Lcom/google/common/cache/j$t;

.field final c:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:J

.field final f:J

.field final g:J

.field final h:Lcom/google/common/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/r<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Lcom/google/common/cache/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/o<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field final k:Lcom/google/common/base/l0;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final l:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field transient m:Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/cache/j$t;Lcom/google/common/cache/j$t;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJJLcom/google/common/cache/r;ILcom/google/common/cache/o;Lcom/google/common/base/l0;Lcom/google/common/cache/CacheLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j$t;",
            "Lcom/google/common/cache/j$t;",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Lcom/google/common/cache/r<",
            "TK;TV;>;I",
            "Lcom/google/common/cache/o<",
            "-TK;-TV;>;",
            "Lcom/google/common/base/l0;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/cache/g;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/cache/j$p;->a:Lcom/google/common/cache/j$t;

    .line 4
    iput-object p2, p0, Lcom/google/common/cache/j$p;->b:Lcom/google/common/cache/j$t;

    .line 5
    iput-object p3, p0, Lcom/google/common/cache/j$p;->c:Lcom/google/common/base/Equivalence;

    .line 6
    iput-object p4, p0, Lcom/google/common/cache/j$p;->d:Lcom/google/common/base/Equivalence;

    .line 7
    iput-wide p5, p0, Lcom/google/common/cache/j$p;->e:J

    .line 8
    iput-wide p7, p0, Lcom/google/common/cache/j$p;->f:J

    .line 9
    iput-wide p9, p0, Lcom/google/common/cache/j$p;->g:J

    .line 10
    iput-object p11, p0, Lcom/google/common/cache/j$p;->h:Lcom/google/common/cache/r;

    .line 11
    iput p12, p0, Lcom/google/common/cache/j$p;->i:I

    .line 12
    iput-object p13, p0, Lcom/google/common/cache/j$p;->j:Lcom/google/common/cache/o;

    .line 13
    invoke-static {}, Lcom/google/common/base/l0;->b()Lcom/google/common/base/l0;

    move-result-object p1

    if-eq p14, p1, :cond_0

    sget-object p1, Lcom/google/common/cache/d;->x:Lcom/google/common/base/l0;

    if-ne p14, p1, :cond_1

    :cond_0
    const/4 p14, 0x0

    :cond_1
    iput-object p14, p0, Lcom/google/common/cache/j$p;->k:Lcom/google/common/base/l0;

    .line 14
    iput-object p15, p0, Lcom/google/common/cache/j$p;->l:Lcom/google/common/cache/CacheLoader;

    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/j;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j<",
            "TK;TV;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/google/common/cache/j;->g:Lcom/google/common/cache/j$t;

    iget-object v2, v0, Lcom/google/common/cache/j;->h:Lcom/google/common/cache/j$t;

    iget-object v3, v0, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    iget-object v4, v0, Lcom/google/common/cache/j;->f:Lcom/google/common/base/Equivalence;

    iget-wide v5, v0, Lcom/google/common/cache/j;->l:J

    iget-wide v7, v0, Lcom/google/common/cache/j;->k:J

    iget-wide v9, v0, Lcom/google/common/cache/j;->i:J

    iget-object v11, v0, Lcom/google/common/cache/j;->j:Lcom/google/common/cache/r;

    iget v12, v0, Lcom/google/common/cache/j;->d:I

    iget-object v13, v0, Lcom/google/common/cache/j;->o:Lcom/google/common/cache/o;

    iget-object v14, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    iget-object v15, v0, Lcom/google/common/cache/j;->s:Lcom/google/common/cache/CacheLoader;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/google/common/cache/j$p;-><init>(Lcom/google/common/cache/j$t;Lcom/google/common/cache/j$t;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJJLcom/google/common/cache/r;ILcom/google/common/cache/o;Lcom/google/common/base/l0;Lcom/google/common/cache/CacheLoader;)V

    return-void
.end method

.method private N(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/j$p;->P()Lcom/google/common/cache/d;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/common/cache/d;->a()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/j$p;->m:Lcom/google/common/cache/c;

    return-void
.end method

.method private O()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/j$p;->m:Lcom/google/common/cache/c;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/j$p;->M()Lcom/google/common/cache/c;

    move-result-object v0

    return-object v0
.end method

.method protected M()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$p;->m:Lcom/google/common/cache/c;

    return-object v0
.end method

.method P()Lcom/google/common/cache/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/cache/d;->D()Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/j$p;->a:Lcom/google/common/cache/j$t;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->H(Lcom/google/common/cache/j$t;)Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/j$p;->b:Lcom/google/common/cache/j$t;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->I(Lcom/google/common/cache/j$t;)Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/j$p;->c:Lcom/google/common/base/Equivalence;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->z(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/j$p;->d:Lcom/google/common/base/Equivalence;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->L(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/d;

    move-result-object v0

    iget v1, p0, Lcom/google/common/cache/j$p;->i:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->e(I)Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/j$p;->j:Lcom/google/common/cache/o;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->G(Lcom/google/common/cache/o;)Lcom/google/common/cache/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/google/common/cache/d;->a:Z

    .line 9
    iget-wide v1, p0, Lcom/google/common/cache/j$p;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/common/cache/d;->g(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    .line 11
    :cond_0
    iget-wide v1, p0, Lcom/google/common/cache/j$p;->f:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 12
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/d;->f(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/j$p;->h:Lcom/google/common/cache/r;

    sget-object v2, Lcom/google/common/cache/d$e;->a:Lcom/google/common/cache/d$e;

    const-wide/16 v3, -0x1

    if-eq v1, v2, :cond_2

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->O(Lcom/google/common/cache/r;)Lcom/google/common/cache/d;

    .line 15
    iget-wide v1, p0, Lcom/google/common/cache/j$p;->g:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/d;->C(J)Lcom/google/common/cache/d;

    goto :goto_0

    .line 17
    :cond_2
    iget-wide v1, p0, Lcom/google/common/cache/j$p;->g:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/d;->B(J)Lcom/google/common/cache/d;

    .line 19
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/j$p;->k:Lcom/google/common/base/l0;

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->K(Lcom/google/common/base/l0;)Lcom/google/common/cache/d;

    :cond_4
    return-object v0
.end method
