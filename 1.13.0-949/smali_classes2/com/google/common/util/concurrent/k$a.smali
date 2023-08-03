.class abstract Lcom/google/common/util/concurrent/k$a;
.super Lcom/google/common/util/concurrent/l;
.source "AggregateFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field private e:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Z

.field final synthetic h:Lcom/google/common/util/concurrent/k;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/k;Lcom/google/common/collect/ImmutableCollection;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/k$a;->h:Lcom/google/common/util/concurrent/k;

    .line 2
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/l;-><init>(I)V

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableCollection;

    iput-object p1, p0, Lcom/google/common/util/concurrent/k$a;->e:Lcom/google/common/collect/ImmutableCollection;

    .line 4
    iput-boolean p3, p0, Lcom/google/common/util/concurrent/k$a;->f:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/common/util/concurrent/k$a;->g:Z

    return-void
.end method

.method static synthetic h(Lcom/google/common/util/concurrent/k$a;)Lcom/google/common/collect/ImmutableCollection;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/k$a;->e:Lcom/google/common/collect/ImmutableCollection;

    return-object p0
.end method

.method static synthetic i(Lcom/google/common/util/concurrent/k$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/k$a;->q()V

    return-void
.end method

.method static synthetic j(Lcom/google/common/util/concurrent/k$a;ILjava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/k$a;->p(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic k(Lcom/google/common/util/concurrent/k$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/k$a;->m()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/l;->f()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Less than 0 remaining futures"

    .line 2
    invoke-static {v1, v2}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/k$a;->s()V

    :cond_1
    return-void
.end method

.method private o(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/k$a;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/k$a;->h:Lcom/google/common/util/concurrent/k;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/d;->N(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/k$a;->t()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/l;->g()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/util/concurrent/k;->R(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 6
    :goto_1
    instance-of v3, p1, Ljava/lang/Error;

    iget-boolean v4, p0, Lcom/google/common/util/concurrent/k$a;->f:Z

    xor-int/2addr v0, v1

    and-int/2addr v0, v4

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const-string v0, "Input Future failed with Error"

    goto :goto_2

    :cond_2
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    .line 7
    :goto_2
    invoke-static {}, Lcom/google/common/util/concurrent/k;->S()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private p(ILjava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/k$a;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/k$a;->h:Lcom/google/common/util/concurrent/k;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d$j;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/k$a;->h:Lcom/google/common/util/concurrent/k;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d$j;->isCancelled()Z

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
    const-string v2, "Future was done before all dependencies completed"

    .line 3
    invoke-static {v0, v2}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    .line 4
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v2, "Tried to set value from future which is not done"

    invoke-static {v0, v2}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/k$a;->f:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/google/common/util/concurrent/k$a;->h:Lcom/google/common/util/concurrent/k;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/k;->T(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/k$a;)Lcom/google/common/util/concurrent/k$a;

    .line 8
    iget-object p1, p0, Lcom/google/common/util/concurrent/k$a;->h:Lcom/google/common/util/concurrent/k;

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/d$j;->cancel(Z)Z

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {p2}, Lcom/google/common/util/concurrent/j0;->h(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/k$a;->g:Z

    if-eqz v0, :cond_4

    .line 11
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/k$a;->f:Z

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/util/concurrent/k$a;->l(ZILjava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_3
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/k$a;->g:Z

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/k$a;->f:Z

    invoke-static {p2}, Lcom/google/common/util/concurrent/j0;->h(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/util/concurrent/k$a;->l(ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 14
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/k$a;->o(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/k$a;->o(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/k$a;->e:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/k$a;->n()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/k$a;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/google/common/util/concurrent/k$a;->e:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/k5;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/q0;

    add-int/lit8 v3, v0, 0x1

    .line 5
    new-instance v4, Lcom/google/common/util/concurrent/k$a$a;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/common/util/concurrent/k$a$a;-><init>(Lcom/google/common/util/concurrent/k$a;ILcom/google/common/util/concurrent/q0;)V

    .line 6
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 7
    invoke-interface {v2, v4, v0}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v3

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/k$a;->e:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/k5;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/q0;

    .line 9
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private s()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/k$a;->g:Z

    iget-boolean v1, p0, Lcom/google/common/util/concurrent/k$a;->f:Z

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/k$a;->e:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/k5;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/q0;

    add-int/lit8 v3, v0, 0x1

    .line 3
    invoke-direct {p0, v0, v2}, Lcom/google/common/util/concurrent/k$a;->p(ILjava/util/concurrent/Future;)V

    move v0, v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/k$a;->n()V

    return-void
.end method


# virtual methods
.method final e(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/k$a;->h:Lcom/google/common/util/concurrent/k;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d$j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/k$a;->h:Lcom/google/common/util/concurrent/k;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/k;->R(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method abstract l(ZILjava/lang/Object;)V
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITInputT;)V"
        }
    .end annotation
.end method

.method abstract n()V
.end method

.method r()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/k$a;->m()V

    return-void
.end method

.method t()V
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/OverridingMethodsMustInvokeSuper;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/k$a;->e:Lcom/google/common/collect/ImmutableCollection;

    return-void
.end method
