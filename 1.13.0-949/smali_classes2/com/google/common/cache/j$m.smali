.class Lcom/google/common/cache/j$m;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/j$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/j$a0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:Lcom/google/common/cache/j$a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/e1<",
            "TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/base/g0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/cache/j;->S()Lcom/google/common/cache/j$a0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/j$m;-><init>(Lcom/google/common/cache/j$a0;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/j$a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/e1;->R()Lcom/google/common/util/concurrent/e1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/j$m;->b:Lcom/google/common/util/concurrent/e1;

    .line 4
    invoke-static {}, Lcom/google/common/base/g0;->e()Lcom/google/common/base/g0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/j$m;->c:Lcom/google/common/base/g0;

    .line 5
    iput-object p1, p0, Lcom/google/common/cache/j$m;->a:Lcom/google/common/cache/j$a0;

    return-void
.end method

.method private i(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/q0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/util/concurrent/j0;->m(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/j$m;->a:Lcom/google/common/cache/j$a0;

    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->a()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j$m;->l(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/common/cache/j;->S()Lcom/google/common/cache/j$a0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/j$m;->a:Lcom/google/common/cache/j$a0;

    :goto_0
    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/j$m;->a:Lcom/google/common/cache/j$a0;

    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->e()I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/n;)Lcom/google/common/cache/j$a0;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$m;->b:Lcom/google/common/util/concurrent/e1;

    invoke-static {v0}, Lcom/google/common/util/concurrent/n1;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$m;->a:Lcom/google/common/cache/j$a0;

    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/j$m;->c:Lcom/google/common/base/g0;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/g0;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Lcom/google/common/cache/j$a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$m;->a:Lcom/google/common/cache/j$a0;

    return-object v0
.end method

.method public k(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/j$m;->c:Lcom/google/common/base/g0;

    invoke-virtual {v0}, Lcom/google/common/base/g0;->k()Lcom/google/common/base/g0;

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$m;->a:Lcom/google/common/cache/j$a0;

    invoke-interface {v0}, Lcom/google/common/cache/j$a0;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j$m;->l(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/common/cache/j$m;->b:Lcom/google/common/util/concurrent/e1;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/j0;->n(Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    :goto_0
    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/common/util/concurrent/j0;->n(Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance p2, Lcom/google/common/cache/j$m$a;

    invoke-direct {p2, p0}, Lcom/google/common/cache/j$m$a;-><init>(Lcom/google/common/cache/j$m;)V

    .line 8
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 9
    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/j0;->w(Lcom/google/common/util/concurrent/q0;Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j$m;->m(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/common/cache/j$m;->b:Lcom/google/common/util/concurrent/e1;

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/common/cache/j$m;->i(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/q0;

    move-result-object p2

    .line 11
    :goto_1
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    return-object p2
.end method

.method public l(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$m;->b:Lcom/google/common/util/concurrent/e1;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/e1;->M(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/j$m;->b:Lcom/google/common/util/concurrent/e1;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/e1;->N(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
