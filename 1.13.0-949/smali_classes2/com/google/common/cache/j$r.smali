.class Lcom/google/common/cache/j$r;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/j;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:J
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field d:I

.field e:I

.field volatile f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final g:J

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field final l:Ljava/util/Queue;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final m:Ljava/util/Queue;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final n:Lcom/google/common/cache/a$b;


# direct methods
.method constructor <init>(Lcom/google/common/cache/j;IJLcom/google/common/cache/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j<",
            "TK;TV;>;IJ",
            "Lcom/google/common/cache/a$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/j$r;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p1, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    .line 4
    iput-wide p3, p0, Lcom/google/common/cache/j$r;->g:J

    .line 5
    invoke-static {p5}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/common/cache/a$b;

    iput-object p3, p0, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/common/cache/j$r;->G(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/common/cache/j$r;->A(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/common/cache/j;->V()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Lcom/google/common/cache/j$r;->h:Ljava/lang/ref/ReferenceQueue;

    .line 8
    invoke-virtual {p1}, Lcom/google/common/cache/j;->W()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_1
    iput-object p3, p0, Lcom/google/common/cache/j$r;->i:Ljava/lang/ref/ReferenceQueue;

    .line 9
    invoke-virtual {p1}, Lcom/google/common/cache/j;->U()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lcom/google/common/cache/j;->h()Ljava/util/Queue;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/google/common/cache/j$r;->j:Ljava/util/Queue;

    .line 11
    invoke-virtual {p1}, Lcom/google/common/cache/j;->Y()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/google/common/cache/j$k0;

    invoke-direct {p2}, Lcom/google/common/cache/j$k0;-><init>()V

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {}, Lcom/google/common/cache/j;->h()Ljava/util/Queue;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lcom/google/common/cache/j$r;->l:Ljava/util/Queue;

    .line 13
    invoke-virtual {p1}, Lcom/google/common/cache/j;->U()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/common/cache/j$e;

    invoke-direct {p1}, Lcom/google/common/cache/j$e;-><init>()V

    goto :goto_3

    .line 14
    :cond_4
    invoke-static {}, Lcom/google/common/cache/j;->h()Ljava/util/Queue;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method A(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/j$r;->e:I

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/cache/j$r;->e:I

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/common/cache/j$r;->g:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/common/cache/j$r;->e:I

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method B(Ljava/lang/Object;IZ)Lcom/google/common/cache/j$m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lcom/google/common/cache/j$m<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/j$r;->J(J)V

    .line 4
    iget-object v2, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/n;

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_3

    .line 7
    invoke-interface {v5}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 8
    invoke-interface {v5}, Lcom/google/common/cache/n;->b()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v7, v7, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    .line 9
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    invoke-interface {v5}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/google/common/cache/j$a0;->b()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    .line 12
    invoke-interface {v5}, Lcom/google/common/cache/n;->m()J

    move-result-wide p2

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-wide p2, p2, Lcom/google/common/cache/j;->m:J

    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    iget p2, p0, Lcom/google/common/cache/j$r;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/cache/j$r;->d:I

    .line 14
    new-instance p2, Lcom/google/common/cache/j$m;

    invoke-direct {p2, p1}, Lcom/google/common/cache/j$m;-><init>(Lcom/google/common/cache/j$a0;)V

    .line 15
    invoke-interface {v5, p2}, Lcom/google/common/cache/n;->l(Lcom/google/common/cache/j$a0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return-object p2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return-object p1

    .line 20
    :cond_2
    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v5

    goto :goto_0

    .line 21
    :cond_3
    iget p3, p0, Lcom/google/common/cache/j$r;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/common/cache/j$r;->d:I

    .line 22
    new-instance p3, Lcom/google/common/cache/j$m;

    invoke-direct {p3}, Lcom/google/common/cache/j$m;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/common/cache/j$r;->F(Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1

    .line 24
    invoke-interface {p1, p3}, Lcom/google/common/cache/n;->l(Lcom/google/common/cache/j$a0;)V

    .line 25
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return-object p3

    :catchall_0
    move-exception p1

    .line 28
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 29
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    .line 30
    throw p1
.end method

.method C(Ljava/lang/Object;ILcom/google/common/cache/j$m;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/q0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/j$m<",
            "TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/j$m;->k(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/q0;

    move-result-object p4

    .line 2
    new-instance v6, Lcom/google/common/cache/j$r$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/j$r$a;-><init>(Lcom/google/common/cache/j$r;Ljava/lang/Object;ILcom/google/common/cache/j$m;Lcom/google/common/util/concurrent/q0;)V

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 4
    invoke-interface {p4, v6, p1}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p4
.end method

.method D(Ljava/lang/Object;ILcom/google/common/cache/j$m;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/j$m<",
            "TK;TV;>;",
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
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/j$m;->k(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/q0;

    move-result-object p4

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/cache/j$r;->u(Ljava/lang/Object;ILcom/google/common/cache/j$m;Lcom/google/common/util/concurrent/q0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method E(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, v7, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v1}, Lcom/google/common/base/l0;->a()J

    move-result-wide v1

    .line 3
    invoke-virtual {v7, v1, v2}, Lcom/google/common/cache/j$r;->J(J)V

    .line 4
    iget v3, v7, Lcom/google/common/cache/j$r;->b:I

    const/4 v9, 0x1

    add-int/lit8 v10, v3, -0x1

    .line 5
    iget-object v11, v7, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    sub-int/2addr v3, v9

    and-int v12, v8, v3

    .line 7
    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/common/cache/n;

    move-object v14, v13

    :goto_0
    const/4 v15, 0x0

    if-eqz v14, :cond_4

    .line 8
    invoke-interface {v14}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-interface {v14}, Lcom/google/common/cache/n;->b()I

    move-result v4

    if-ne v4, v8, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, v7, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v4, v4, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    .line 10
    invoke-virtual {v4, v0, v3}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v14}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v16

    .line 12
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/j$a0;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    move-object/from16 v2, v16

    goto :goto_3

    .line 13
    :cond_0
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 14
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/j$a0;->e()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v1, p0

    move-object v2, v3

    move/from16 v3, p2

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v5, v7, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v5, v14, v1, v2}, Lcom/google/common/cache/j;->w(Lcom/google/common/cache/n;J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/j$a0;->e()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v1, p0

    move-object v2, v3

    move/from16 v3, p2

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 19
    :goto_1
    iget-object v1, v7, Lcom/google/common/cache/j$r;->l:Ljava/util/Queue;

    invoke-interface {v1, v14}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, v7, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {v1, v14}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 21
    iput v10, v7, Lcom/google/common/cache/j$r;->b:I

    move-object/from16 v2, v16

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v7, v14, v1, v2}, Lcom/google/common/cache/j$r;->N(Lcom/google/common/cache/n;J)V

    .line 23
    iget-object v0, v7, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v9}, Lcom/google/common/cache/a$b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/j$r;->I()V

    return-object v4

    .line 26
    :cond_3
    :try_start_1
    invoke-interface {v14}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v14

    goto :goto_0

    :cond_4
    move-object v2, v15

    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_6

    .line 27
    new-instance v15, Lcom/google/common/cache/j$m;

    invoke-direct {v15}, Lcom/google/common/cache/j$m;-><init>()V

    if-nez v14, :cond_5

    .line 28
    invoke-virtual {v7, v0, v8, v13}, Lcom/google/common/cache/j$r;->F(Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object v14

    .line 29
    invoke-interface {v14, v15}, Lcom/google/common/cache/n;->l(Lcom/google/common/cache/j$a0;)V

    .line 30
    invoke-virtual {v11, v12, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    .line 31
    :cond_5
    invoke-interface {v14, v15}, Lcom/google/common/cache/n;->l(Lcom/google/common/cache/j$a0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/j$r;->I()V

    if-eqz v1, :cond_7

    .line 34
    :try_start_2
    monitor-enter v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p3

    .line 35
    :try_start_3
    invoke-virtual {v7, v0, v8, v15, v1}, Lcom/google/common/cache/j$r;->D(Ljava/lang/Object;ILcom/google/common/cache/j$m;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    iget-object v1, v7, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    invoke-interface {v1, v9}, Lcom/google/common/cache/a$b;->b(I)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 37
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 38
    iget-object v1, v7, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    invoke-interface {v1, v9}, Lcom/google/common/cache/a$b;->b(I)V

    .line 39
    throw v0

    .line 40
    :cond_7
    invoke-virtual {v7, v14, v0, v2}, Lcom/google/common/cache/j$r;->h0(Lcom/google/common/cache/n;Ljava/lang/Object;Lcom/google/common/cache/j$a0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v0

    .line 41
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/j$r;->I()V

    .line 43
    throw v0
.end method

.method F(Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .locals 1
    .param p3    # Lcom/google/common/cache/n;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->q:Lcom/google/common/cache/j$f;

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/cache/j$f;->e(Lcom/google/common/cache/j$r;Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1

    return-object p1
.end method

.method G(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->a()V

    :cond_0
    return-void
.end method

.method I()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->b0()V

    return-void
.end method

.method J(J)V
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/j$r;->a0(J)V

    return-void
.end method

.method K(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move/from16 v3, p2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, v7, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v1}, Lcom/google/common/base/l0;->a()J

    move-result-wide v8

    .line 3
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/j$r;->J(J)V

    .line 4
    iget v1, v7, Lcom/google/common/cache/j$r;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    iget v2, v7, Lcom/google/common/cache/j$r;->e:I

    if-le v1, v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->q()V

    .line 7
    :cond_0
    iget-object v10, v7, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v11, v3, v1

    .line 9
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/n;

    move-object v12, v1

    :goto_0
    const/4 v13, 0x0

    if-eqz v12, :cond_5

    .line 10
    invoke-interface {v12}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-interface {v12}, Lcom/google/common/cache/n;->b()I

    move-result v4

    if-ne v4, v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v4, v7, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v4, v4, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    .line 12
    invoke-virtual {v4, p1, v2}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-interface {v12}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    .line 15
    iget v2, v7, Lcom/google/common/cache/j$r;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/common/cache/j$r;->d:I

    .line 16
    invoke-interface {v1}, Lcom/google/common/cache/j$a0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-interface {v1}, Lcom/google/common/cache/j$a0;->e()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object v4, v10

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->d0(Lcom/google/common/cache/n;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 20
    iget v0, v7, Lcom/google/common/cache/j$r;->b:I

    goto :goto_1

    :cond_1
    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->d0(Lcom/google/common/cache/n;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 22
    iget v0, v7, Lcom/google/common/cache/j$r;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 23
    :goto_1
    iput v0, v7, Lcom/google/common/cache/j$r;->b:I

    .line 24
    invoke-virtual {p0, v12}, Lcom/google/common/cache/j$r;->p(Lcom/google/common/cache/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return-object v13

    :cond_2
    if-eqz p4, :cond_3

    .line 27
    :try_start_1
    invoke-virtual {p0, v12, v8, v9}, Lcom/google/common/cache/j$r;->N(Lcom/google/common/cache/n;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 29
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return-object v10

    .line 30
    :cond_3
    :try_start_2
    iget v2, v7, Lcom/google/common/cache/j$r;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/common/cache/j$r;->d:I

    .line 31
    invoke-interface {v1}, Lcom/google/common/cache/j$a0;->e()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object v4, v10

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->d0(Lcom/google/common/cache/n;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 34
    invoke-virtual {p0, v12}, Lcom/google/common/cache/j$r;->p(Lcom/google/common/cache/n;)V

    goto :goto_3

    .line 35
    :cond_4
    invoke-interface {v12}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v12

    goto/16 :goto_0

    .line 36
    :cond_5
    iget v2, v7, Lcom/google/common/cache/j$r;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/common/cache/j$r;->d:I

    .line 37
    invoke-virtual {p0, p1, v3, v1}, Lcom/google/common/cache/j$r;->F(Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object v12

    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    .line 38
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->d0(Lcom/google/common/cache/n;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 39
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 40
    iget v0, v7, Lcom/google/common/cache/j$r;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 41
    iput v0, v7, Lcom/google/common/cache/j$r;->b:I

    .line 42
    invoke-virtual {p0, v12}, Lcom/google/common/cache/j$r;->p(Lcom/google/common/cache/n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 43
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    .line 45
    throw v0
.end method

.method L(Lcom/google/common/cache/n;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/n;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    .line 5
    iget p1, p0, Lcom/google/common/cache/j$r;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/j$r;->d:I

    .line 6
    invoke-interface {v6}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 7
    invoke-interface {v6}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v9

    .line 8
    invoke-interface {v6}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v10

    sget-object v11, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v4, p0

    move v8, p2

    .line 9
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/j$r;->X(Lcom/google/common/cache/n;Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/j$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/n;

    move-result-object p1

    .line 10
    iget p2, p0, Lcom/google/common/cache/j$r;->b:I

    sub-int/2addr p2, v2

    .line 11
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 12
    iput p2, p0, Lcom/google/common/cache/j$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return v2

    .line 15
    :cond_0
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return p1

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    .line 20
    throw p1
.end method

.method M(Ljava/lang/Object;ILcom/google/common/cache/j$a0;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/n;

    move-object v6, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v6, :cond_4

    .line 5
    invoke-interface {v6}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 6
    invoke-interface {v6}, Lcom/google/common/cache/n;->b()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v7, :cond_3

    iget-object v4, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v4, v4, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    .line 7
    invoke-virtual {v4, p1, v7}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-interface {v6}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object p1

    if-ne p1, p3, :cond_1

    .line 9
    iget p1, p0, Lcom/google/common/cache/j$r;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/j$r;->d:I

    .line 10
    invoke-interface {p3}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v4, p0

    move v8, p2

    move-object v10, p3

    .line 11
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/j$r;->X(Lcom/google/common/cache/n;Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/j$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/n;

    move-result-object p1

    .line 12
    iget p2, p0, Lcom/google/common/cache/j$r;->b:I

    sub-int/2addr p2, v2

    .line 13
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 14
    iput p2, p0, Lcom/google/common/cache/j$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    :cond_0
    return v2

    .line 18
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    :cond_2
    return v3

    .line 21
    :cond_3
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_5

    .line 24
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    :cond_5
    return v3

    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p2

    if-nez p2, :cond_6

    .line 27
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    .line 28
    :cond_6
    throw p1
.end method

.method N(Lcom/google/common/cache/n;J)V
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/n;->n(J)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method O(Lcom/google/common/cache/n;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/n;->n(J)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/j$r;->j:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method P(Lcom/google/common/cache/n;IJ)V
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->l()V

    .line 2
    iget-wide v0, p0, Lcom/google/common/cache/j$r;->c:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/j$r;->c:J

    .line 3
    iget-object p2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {p2}, Lcom/google/common/cache/j;->K()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/n;->n(J)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {p2}, Lcom/google/common/cache/j;->M()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/n;->p(J)V

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p2, p0, Lcom/google/common/cache/j$r;->l:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method Q(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;Z)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/j$r;->B(Ljava/lang/Object;IZ)Lcom/google/common/cache/j$m;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/common/cache/j$r;->C(Ljava/lang/Object;ILcom/google/common/cache/j$m;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/n1;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    return-object v0
.end method

.method R(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/j$r;->J(J)V

    .line 4
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/common/cache/n;

    move-object v5, v4

    :goto_0
    const/4 v2, 0x0

    if-eqz v5, :cond_1

    .line 7
    invoke-interface {v5}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 8
    invoke-interface {v5}, Lcom/google/common/cache/n;->b()I

    move-result v3

    if-ne v3, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v3, v3, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    .line 9
    invoke-virtual {v3, p1, v6}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v5}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v9

    .line 11
    invoke-interface {v9}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    :goto_1
    move-object v10, v2

    goto :goto_2

    .line 13
    :cond_0
    invoke-interface {v9}, Lcom/google/common/cache/j$a0;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    sget-object v2, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 15
    :goto_2
    iget v2, p0, Lcom/google/common/cache/j$r;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/j$r;->d:I

    move-object v3, p0

    move v7, p2

    move-object v8, p1

    .line 16
    invoke-virtual/range {v3 .. v10}, Lcom/google/common/cache/j$r;->X(Lcom/google/common/cache/n;Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/j$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/n;

    move-result-object p2

    .line 17
    iget v2, p0, Lcom/google/common/cache/j$r;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 18
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 19
    iput v2, p0, Lcom/google/common/cache/j$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return-object p1

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return-object v2

    .line 24
    :cond_2
    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    .line 27
    throw p1
.end method

.method S(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/j$r;->J(J)V

    .line 4
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/n;

    move-object v6, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v6, :cond_2

    .line 7
    invoke-interface {v6}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 8
    invoke-interface {v6}, Lcom/google/common/cache/n;->b()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v7, :cond_3

    iget-object v4, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v4, v4, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    .line 9
    invoke-virtual {v4, p1, v7}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-interface {v6}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v10

    .line 11
    invoke-interface {v10}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v9

    .line 12
    iget-object p1, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object p1, p1, Lcom/google/common/cache/j;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {p1, p3, v9}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    sget-object p1, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    :cond_0
    if-nez v9, :cond_2

    .line 14
    invoke-interface {v10}, Lcom/google/common/cache/j$a0;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    sget-object p1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 16
    :goto_1
    iget p3, p0, Lcom/google/common/cache/j$r;->d:I

    add-int/2addr p3, v2

    iput p3, p0, Lcom/google/common/cache/j$r;->d:I

    move-object v4, p0

    move v8, p2

    move-object v11, p1

    .line 17
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/j$r;->X(Lcom/google/common/cache/n;Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/j$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/n;

    move-result-object p2

    .line 18
    iget p3, p0, Lcom/google/common/cache/j$r;->b:I

    sub-int/2addr p3, v2

    .line 19
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 20
    iput p3, p0, Lcom/google/common/cache/j$r;->b:I

    .line 21
    sget-object p2, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 22
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return v2

    .line 24
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return v3

    .line 26
    :cond_3
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    .line 29
    throw p1
.end method

.method T(Lcom/google/common/cache/n;)V
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/n;->b()I

    move-result v2

    .line 3
    invoke-interface {p1}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v3

    .line 4
    invoke-interface {p1}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->e()I

    move-result v4

    sget-object v5, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 6
    iget-object v0, p0, Lcom/google/common/cache/j$r;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method U(Lcom/google/common/cache/n;ILcom/google/common/cache/RemovalCause;)Z
    .locals 12
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Lh3/d;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/n;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    .line 4
    iget p1, p0, Lcom/google/common/cache/j$r;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/j$r;->d:I

    .line 5
    invoke-interface {v6}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 6
    invoke-interface {v6}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v9

    .line 7
    invoke-interface {v6}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v10

    move-object v4, p0

    move v8, p2

    move-object v11, p3

    .line 8
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/j$r;->X(Lcom/google/common/cache/n;Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/j$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/n;

    move-result-object p1

    .line 9
    iget p2, p0, Lcom/google/common/cache/j$r;->b:I

    sub-int/2addr p2, v2

    .line 10
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 11
    iput p2, p0, Lcom/google/common/cache/j$r;->b:I

    return v2

    .line 12
    :cond_0
    invoke-interface {v6}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method V(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

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

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/cache/j$r;->b:I

    .line 2
    invoke-interface {p2}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/google/common/cache/j$r;->j(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j$r;->T(Lcom/google/common/cache/n;)V

    add-int/lit8 v0, v0, -0x1

    .line 5
    :goto_1
    invoke-interface {p1}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    iput v0, p0, Lcom/google/common/cache/j$r;->b:I

    return-object v1
.end method

.method W(Ljava/lang/Object;ILcom/google/common/cache/j$m;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/j$m<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/n;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {v4}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 6
    invoke-interface {v4}, Lcom/google/common/cache/n;->b()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v7, v7, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    .line 7
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-interface {v4}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object p1

    if-ne p1, p3, :cond_1

    .line 9
    invoke-virtual {p3}, Lcom/google/common/cache/j$m;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p3}, Lcom/google/common/cache/j$m;->j()Lcom/google/common/cache/j$a0;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/common/cache/n;->l(Lcom/google/common/cache/j$a0;)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/google/common/cache/j$r;->V(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return v2

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return v5

    .line 17
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    .line 20
    throw p1
.end method

.method X(Lcom/google/common/cache/n;Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/j$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/n;
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;TK;ITV;",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-interface {p6}, Lcom/google/common/cache/j$a0;->e()I

    move-result v4

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 2
    iget-object p3, p0, Lcom/google/common/cache/j$r;->l:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p3, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p6}, Lcom/google/common/cache/j$a0;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-interface {p6, p2}, Lcom/google/common/cache/j$a0;->d(Ljava/lang/Object;)V

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/j$r;->V(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1

    return-object p1
.end method

.method Y(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, v9, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v1}, Lcom/google/common/base/l0;->a()J

    move-result-wide v7

    .line 3
    invoke-virtual {v9, v7, v8}, Lcom/google/common/cache/j$r;->J(J)V

    .line 4
    iget-object v10, v9, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v11, v0, v1

    .line 6
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/n;

    move-object v12, v2

    :goto_0
    const/4 v13, 0x0

    if-eqz v12, :cond_0

    .line 7
    invoke-interface {v12}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-interface {v12}, Lcom/google/common/cache/n;->b()I

    move-result v1

    if-ne v1, v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v1, v9, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    move-object/from16 v14, p1

    .line 9
    invoke-virtual {v1, v14, v4}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v12}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v15

    .line 11
    invoke-interface {v15}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_1

    .line 12
    invoke-interface {v15}, Lcom/google/common/cache/j$a0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget v1, v9, Lcom/google/common/cache/j$r;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/google/common/cache/j$r;->d:I

    .line 14
    sget-object v8, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v1, p0

    move-object v3, v12

    move/from16 v5, p2

    move-object/from16 v6, v16

    move-object v7, v15

    .line 15
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/j$r;->X(Lcom/google/common/cache/n;Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/j$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/n;

    move-result-object v0

    .line 16
    iget v1, v9, Lcom/google/common/cache/j$r;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 17
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 18
    iput v1, v9, Lcom/google/common/cache/j$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/j$r;->I()V

    return-object v13

    .line 21
    :cond_1
    :try_start_1
    iget v1, v9, Lcom/google/common/cache/j$r;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/google/common/cache/j$r;->d:I

    .line 22
    invoke-interface {v15}, Lcom/google/common/cache/j$a0;->e()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v16

    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-wide v5, v7

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->d0(Lcom/google/common/cache/n;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 25
    invoke-virtual {v9, v12}, Lcom/google/common/cache/j$r;->p(Lcom/google/common/cache/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/j$r;->I()V

    return-object v16

    :cond_2
    move-object/from16 v14, p1

    .line 28
    :cond_3
    :try_start_2
    invoke-interface {v12}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 29
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/j$r;->I()V

    .line 31
    throw v0
.end method

.method Z(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, v9, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v1}, Lcom/google/common/base/l0;->a()J

    move-result-wide v7

    .line 3
    invoke-virtual {v9, v7, v8}, Lcom/google/common/cache/j$r;->J(J)V

    .line 4
    iget-object v10, v9, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    and-int v12, v0, v1

    .line 6
    invoke-virtual {v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/n;

    move-object v13, v2

    :goto_0
    const/4 v14, 0x0

    if-eqz v13, :cond_0

    .line 7
    invoke-interface {v13}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-interface {v13}, Lcom/google/common/cache/n;->b()I

    move-result v1

    if-ne v1, v0, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, v9, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    move-object/from16 v15, p1

    .line 9
    invoke-virtual {v1, v15, v4}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v13}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v16

    .line 11
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 12
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/j$a0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget v1, v9, Lcom/google/common/cache/j$r;->d:I

    add-int/2addr v1, v11

    iput v1, v9, Lcom/google/common/cache/j$r;->d:I

    .line 14
    sget-object v8, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v1, p0

    move-object v3, v13

    move/from16 v5, p2

    move-object/from16 v7, v16

    .line 15
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/j$r;->X(Lcom/google/common/cache/n;Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/j$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/n;

    move-result-object v0

    .line 16
    iget v1, v9, Lcom/google/common/cache/j$r;->b:I

    sub-int/2addr v1, v11

    .line 17
    invoke-virtual {v10, v12, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 18
    iput v1, v9, Lcom/google/common/cache/j$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/j$r;->I()V

    return v14

    .line 21
    :cond_1
    :try_start_1
    iget-object v1, v9, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->f:Lcom/google/common/base/Equivalence;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v6}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    iget v1, v9, Lcom/google/common/cache/j$r;->d:I

    add-int/2addr v1, v11

    iput v1, v9, Lcom/google/common/cache/j$r;->d:I

    .line 23
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/j$a0;->e()I

    move-result v5

    sget-object v10, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v6

    move-object v6, v10

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v7

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->d0(Lcom/google/common/cache/n;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 26
    invoke-virtual {v9, v13}, Lcom/google/common/cache/j$r;->p(Lcom/google/common/cache/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/j$r;->I()V

    return v11

    .line 29
    :cond_2
    :try_start_2
    invoke-virtual {v9, v13, v7, v8}, Lcom/google/common/cache/j$r;->N(Lcom/google/common/cache/n;J)V

    goto :goto_1

    :cond_3
    move-object/from16 v15, p1

    :cond_4
    move-object/from16 v3, p3

    .line 30
    invoke-interface {v13}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 31
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/j$r;->I()V

    .line 33
    throw v0
.end method

.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/j$r;->a0(J)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->b0()V

    return-void
.end method

.method a0(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->m()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/j$r;->r(J)V

    .line 4
    iget-object p1, p0, Lcom/google/common/cache/j$r;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method b()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/common/cache/j$r;->b:I

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/j$r;->J(J)V

    .line 5
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/n;

    :goto_1
    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v3}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/j$a0;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-interface {v3}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 10
    invoke-interface {v3}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v6, :cond_1

    if-nez v8, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    sget-object v4, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v4, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    :goto_3
    move-object v10, v4

    .line 12
    invoke-interface {v3}, Lcom/google/common/cache/n;->b()I

    move-result v7

    invoke-interface {v3}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/j$a0;->e()I

    move-result v9

    move-object v5, p0

    .line 13
    invoke-virtual/range {v5 .. v10}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 14
    :cond_2
    invoke-interface {v3}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 15
    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->d()V

    .line 18
    iget-object v0, p0, Lcom/google/common/cache/j$r;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 19
    iget-object v0, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 20
    iget-object v0, p0, Lcom/google/common/cache/j$r;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 21
    iget v0, p0, Lcom/google/common/cache/j$r;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/j$r;->d:I

    .line 22
    iput v1, p0, Lcom/google/common/cache/j$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    .line 27
    throw v0

    :cond_6
    :goto_5
    return-void
.end method

.method b0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->H()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method c0(Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;TK;ITV;J",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/n;->m()J

    move-result-wide v0

    sub-long/2addr p5, v0

    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-wide v0, v0, Lcom/google/common/cache/j;->m:J

    cmp-long v2, p5, v0

    if-lez v2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/j$a0;->b()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p2, p3, p7, p1}, Lcom/google/common/cache/j$r;->Q(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p4
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->e()V

    :cond_1
    return-void
.end method

.method d0(Lcom/google/common/cache/n;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->j:Lcom/google/common/cache/r;

    invoke-interface {v1, p2, p3}, Lcom/google/common/cache/r;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Weights must be non-negative"

    .line 3
    invoke-static {v1, v2}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->h:Lcom/google/common/cache/j$t;

    .line 5
    invoke-virtual {v1, p0, p1, p3, p2}, Lcom/google/common/cache/j$t;->b(Lcom/google/common/cache/j$r;Lcom/google/common/cache/n;Ljava/lang/Object;I)Lcom/google/common/cache/j$a0;

    move-result-object v1

    .line 6
    invoke-interface {p1, v1}, Lcom/google/common/cache/n;->l(Lcom/google/common/cache/j$a0;)V

    .line 7
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/google/common/cache/j$r;->P(Lcom/google/common/cache/n;IJ)V

    .line 8
    invoke-interface {v0, p3}, Lcom/google/common/cache/j$a0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method e()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method e0(Ljava/lang/Object;ILcom/google/common/cache/j$m;Ljava/lang/Object;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/j$m<",
            "TK;TV;>;TV;)Z"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p1

    move/from16 v3, p2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, v7, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v1}, Lcom/google/common/base/l0;->a()J

    move-result-wide v8

    .line 3
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/j$r;->J(J)V

    .line 4
    iget v1, v7, Lcom/google/common/cache/j$r;->b:I

    const/4 v10, 0x1

    add-int/2addr v1, v10

    .line 5
    iget v2, v7, Lcom/google/common/cache/j$r;->e:I

    if-le v1, v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->q()V

    .line 7
    iget v1, v7, Lcom/google/common/cache/j$r;->b:I

    add-int/2addr v1, v10

    :cond_0
    move v11, v1

    .line 8
    iget-object v12, v7, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 9
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    sub-int/2addr v1, v10

    and-int v13, v3, v1

    .line 10
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/n;

    move-object v14, v1

    :goto_0
    if-eqz v14, :cond_6

    .line 11
    invoke-interface {v14}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-interface {v14}, Lcom/google/common/cache/n;->b()I

    move-result v4

    if-ne v4, v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v4, v7, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v4, v4, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    .line 13
    invoke-virtual {v4, v0, v2}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-interface {v14}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v2, p3

    if-eq v2, v1, :cond_2

    if-nez v4, :cond_1

    .line 16
    sget-object v5, Lcom/google/common/cache/j;->C:Lcom/google/common/cache/j$a0;

    if-eq v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 17
    sget-object v6, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return v0

    .line 20
    :cond_2
    :goto_1
    :try_start_1
    iget v1, v7, Lcom/google/common/cache/j$r;->d:I

    add-int/2addr v1, v10

    iput v1, v7, Lcom/google/common/cache/j$r;->d:I

    .line 21
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/j$m;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v4, :cond_3

    .line 22
    sget-object v1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    :goto_2
    move-object v6, v1

    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/j$m;->e()I

    move-result v5

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    add-int/lit8 v11, v11, -0x1

    :cond_4
    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v8

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->d0(Lcom/google/common/cache/n;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 25
    iput v11, v7, Lcom/google/common/cache/j$r;->b:I

    .line 26
    invoke-virtual {p0, v14}, Lcom/google/common/cache/j$r;->p(Lcom/google/common/cache/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    return v10

    :cond_5
    move-object/from16 v2, p3

    .line 29
    :try_start_2
    invoke-interface {v14}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v14

    goto :goto_0

    .line 30
    :cond_6
    iget v2, v7, Lcom/google/common/cache/j$r;->d:I

    add-int/2addr v2, v10

    iput v2, v7, Lcom/google/common/cache/j$r;->d:I

    .line 31
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/common/cache/j$r;->F(Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object v14

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v8

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/j$r;->d0(Lcom/google/common/cache/n;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 33
    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 34
    iput v11, v7, Lcom/google/common/cache/j$r;->b:I

    .line 35
    invoke-virtual {p0, v14}, Lcom/google/common/cache/j$r;->p(Lcom/google/common/cache/n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 36
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->I()V

    .line 38
    throw v0
.end method

.method f0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method g0(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/j$r;->r(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method h(Ljava/lang/Object;I)Z
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/j$r;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v2

    .line 3
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/cache/j$r;->x(Ljava/lang/Object;IJ)Lcom/google/common/cache/n;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return v1

    .line 5
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    .line 7
    throw p1
.end method

.method h0(Lcom/google/common/cache/n;Ljava/lang/Object;Lcom/google/common/cache/j$a0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;TK;",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/google/common/cache/j$a0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Recursive load of: %s"

    invoke-static {v0, v2, p2}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    :try_start_0
    invoke-interface {p3}, Lcom/google/common/cache/j$a0;->g()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object p2, p2, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {p2}, Lcom/google/common/base/l0;->a()J

    move-result-wide v2

    .line 5
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/common/cache/j$r;->O(Lcom/google/common/cache/n;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    invoke-interface {p1, v1}, Lcom/google/common/cache/a$b;->b(I)V

    return-object p3

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CacheLoader returned null for key "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    invoke-interface {p2, v1}, Lcom/google/common/cache/a$b;->b(I)V

    .line 9
    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method i(Ljava/lang/Object;)Z
    .locals 9
    .annotation build Lh3/d;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/j$r;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v2

    .line 3
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 5
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/n;

    :goto_1
    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {p0, v6, v2, v3}, Lcom/google/common/cache/j$r;->y(Lcom/google/common/cache/n;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget-object v8, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v8, v8, Lcom/google/common/cache/j;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    .line 11
    throw p1
.end method

.method j(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

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

    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->q:Lcom/google/common/cache/j$f;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/cache/j$f;->b(Lcom/google/common/cache/j$r;Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/google/common/cache/j$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, p2, v2, p1}, Lcom/google/common/cache/j$a0;->f(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/n;)Lcom/google/common/cache/j$a0;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/common/cache/n;->l(Lcom/google/common/cache/j$a0;)V

    return-object p1
.end method

.method k()V
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/j$r;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    check-cast v1, Lcom/google/common/cache/n;

    .line 3
    iget-object v2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/j;->I(Lcom/google/common/cache/n;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method l()V
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/n;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method m()V
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->n()V

    :cond_1
    return-void
.end method

.method n()V
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/j$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    check-cast v1, Lcom/google/common/cache/j$a0;

    .line 3
    iget-object v2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/j;->J(Lcom/google/common/cache/j$a0;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method o(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/j$r;->c:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/j$r;->c:J

    .line 2
    invoke-virtual {p5}, Lcom/google/common/cache/RemovalCause;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    invoke-interface {p2}, Lcom/google/common/cache/a$b;->c()V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object p2, p2, Lcom/google/common/cache/j;->n:Ljava/util/Queue;

    sget-object p4, Lcom/google/common/cache/j;->D:Ljava/util/Queue;

    if-eq p2, p4, :cond_1

    .line 5
    invoke-static {p1, p3, p5}, Lcom/google/common/cache/RemovalNotification;->create(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/RemovalNotification;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object p2, p2, Lcom/google/common/cache/j;->n:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method p(Lcom/google/common/cache/n;)V
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0}, Lcom/google/common/cache/j;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->l()V

    .line 3
    invoke-interface {p1}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->e()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/j$r;->g:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/google/common/cache/n;->b()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/j$r;->U(Lcom/google/common/cache/n;ILcom/google/common/cache/RemovalCause;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/google/common/cache/j$r;->c:J

    iget-wide v2, p0, Lcom/google/common/cache/j$r;->g:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->z()Lcom/google/common/cache/n;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/common/cache/n;->b()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/j$r;->U(Lcom/google/common/cache/n;ILcom/google/common/cache/RemovalCause;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    return-void
.end method

.method q()V
    .locals 11
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget v2, p0, Lcom/google/common/cache/j$r;->b:I

    shl-int/lit8 v3, v1, 0x1

    .line 4
    invoke-virtual {p0, v3}, Lcom/google/common/cache/j$r;->G(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/common/cache/j$r;->e:I

    .line 6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    .line 7
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/n;

    if-eqz v6, :cond_5

    .line 8
    invoke-interface {v6}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v7

    .line 9
    invoke-interface {v6}, Lcom/google/common/cache/n;->b()I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_1

    .line 10
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 11
    invoke-interface {v7}, Lcom/google/common/cache/n;->b()I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 12
    :cond_2
    invoke-interface {v7}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v7

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    .line 14
    invoke-interface {v6}, Lcom/google/common/cache/n;->b()I

    move-result v7

    and-int/2addr v7, v4

    .line 15
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/cache/n;

    .line 16
    invoke-virtual {p0, v6, v8}, Lcom/google/common/cache/j$r;->j(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 17
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {p0, v6}, Lcom/google/common/cache/j$r;->T(Lcom/google/common/cache/n;)V

    add-int/lit8 v2, v2, -0x1

    .line 19
    :goto_3
    invoke-interface {v6}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    :cond_6
    iput-object v3, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 21
    iput v2, p0, Lcom/google/common/cache/j$r;->b:I

    return-void
.end method

.method r(J)V
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->l()V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/n;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/j;->w(Lcom/google/common/cache/n;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/n;->b()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/j$r;->U(Lcom/google/common/cache/n;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/n;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/j;->w(Lcom/google/common/cache/n;J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v0}, Lcom/google/common/cache/n;->b()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/j$r;->U(Lcom/google/common/cache/n;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method s(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/j$r;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v7

    .line 3
    invoke-virtual {p0, p1, p2, v7, v8}, Lcom/google/common/cache/j$r;->x(Ljava/lang/Object;IJ)Lcom/google/common/cache/n;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {p0, v3, v7, v8}, Lcom/google/common/cache/j$r;->O(Lcom/google/common/cache/n;J)V

    .line 7
    invoke-interface {v3}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v9, p1, Lcom/google/common/cache/j;->s:Lcom/google/common/cache/CacheLoader;

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/google/common/cache/j$r;->c0(Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return-object p1

    .line 9
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->f0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    .line 11
    throw p1
.end method

.method t(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
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

    .line 2
    invoke-static {p3}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/j$r;->b:I

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/j$r;->v(Ljava/lang/Object;I)Lcom/google/common/cache/n;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v6

    .line 6
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/j$r;->y(Lcom/google/common/cache/n;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/j$r;->O(Lcom/google/common/cache/n;J)V

    .line 8
    iget-object v0, p0, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/common/cache/a$b;->a(I)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    .line 9
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/j$r;->c0(Lcom/google/common/cache/n;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return-object p1

    .line 11
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/common/cache/j$r;->h0(Lcom/google/common/cache/n;Ljava/lang/Object;Lcom/google/common/cache/j$a0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return-object p1

    .line 15
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/j$r;->E(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    :try_start_3
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 18
    instance-of p3, p2, Ljava/lang/Error;

    if-nez p3, :cond_3

    .line 19
    instance-of p3, p2, Ljava/lang/RuntimeException;

    if-eqz p3, :cond_2

    .line 20
    new-instance p1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p1, p2}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 21
    :cond_2
    throw p1

    .line 22
    :cond_3
    new-instance p1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast p2, Ljava/lang/Error;

    invoke-direct {p1, p2}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->H()V

    .line 24
    throw p1
.end method

.method u(Ljava/lang/Object;ILcom/google/common/cache/j$m;Lcom/google/common/util/concurrent/q0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/j$m<",
            "TK;TV;>;",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/n1;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p4, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    invoke-virtual {p3}, Lcom/google/common/cache/j$m;->h()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/a$b;->e(J)V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/cache/j$r;->e0(Ljava/lang/Object;ILcom/google/common/cache/j$m;Ljava/lang/Object;)Z

    return-object p4

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheLoader returned null for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_1
    move-exception v0

    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_1

    .line 5
    iget-object p4, p0, Lcom/google/common/cache/j$r;->n:Lcom/google/common/cache/a$b;

    invoke-virtual {p3}, Lcom/google/common/cache/j$m;->h()J

    move-result-wide v1

    invoke-interface {p4, v1, v2}, Lcom/google/common/cache/a$b;->d(J)V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/j$r;->W(Ljava/lang/Object;ILcom/google/common/cache/j$m;)Z

    .line 7
    :cond_1
    throw v0
.end method

.method v(Ljava/lang/Object;I)Lcom/google/common/cache/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/common/cache/j$r;->w(I)Lcom/google/common/cache/n;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Lcom/google/common/cache/n;->b()I

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->f0()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    iget-object v2, v2, Lcom/google/common/cache/j;->e:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method w(I)Lcom/google/common/cache/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/n;

    return-object p1
.end method

.method x(Ljava/lang/Object;IJ)Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/j$r;->v(Ljava/lang/Object;I)Lcom/google/common/cache/n;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1, p3, p4}, Lcom/google/common/cache/j;->w(Lcom/google/common/cache/n;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/j$r;->g0(J)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method y(Lcom/google/common/cache/n;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->f0()V

    return-object v1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/cache/j$r;->f0()V

    return-object v1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/j$r;->a:Lcom/google/common/cache/j;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/j;->w(Lcom/google/common/cache/n;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/j$r;->g0(J)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method z()Lcom/google/common/cache/n;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$r;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/n;

    .line 2
    invoke-interface {v1}, Lcom/google/common/cache/n;->a()Lcom/google/common/cache/j$a0;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/j$a0;->e()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
