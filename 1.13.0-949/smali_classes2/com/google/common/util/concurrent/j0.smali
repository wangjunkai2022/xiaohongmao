.class public final Lcom/google/common/util/concurrent/j0;
.super Lcom/google/common/util/concurrent/m0;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/j0$h;,
        Lcom/google/common/util/concurrent/j0$d;,
        Lcom/google/common/util/concurrent/j0$g;,
        Lcom/google/common/util/concurrent/j0$f;,
        Lcom/google/common/util/concurrent/j0$i;,
        Lcom/google/common/util/concurrent/j0$e;
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m0;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/j0$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/j0$e<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/j0$e;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/j0$e;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/j0$a;)V

    return-object v0
.end method

.method public static varargs B([Lcom/google/common/util/concurrent/q0;)Lcom/google/common/util/concurrent/j0$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/j0$e<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/j0$e;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/j0$e;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/j0$a;)V

    return-object v0
.end method

.method public static C(Lcom/google/common/util/concurrent/q0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/k1;->b0(Lcom/google/common/util/concurrent/q0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/q0;

    move-result-object p0

    return-object p0
.end method

.method private static D(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lcom/google/common/util/concurrent/q0;Lcom/google/common/util/concurrent/i0;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/i0<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/j0$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/j0$d;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/i0;)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/q0<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/r$b;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/r$b;-><init>(Lcom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static varargs c([Lcom/google/common/util/concurrent/q0;)Lcom/google/common/util/concurrent/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/q0<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/r$b;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/r$b;-><init>(Lcom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static d(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 0
    .annotation build Lcom/google/common/util/concurrent/y0$a;
        value = "AVAILABLE but requires exceptionType to be Throwable.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/base/q<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/a;->Y(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/util/concurrent/n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 0
    .annotation build Lcom/google/common/util/concurrent/y0$a;
        value = "AVAILABLE but requires exceptionType to be Throwable.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/n<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/a;->Z(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/util/concurrent/n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/k0;->e(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/k0;->f(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcom/google/common/util/concurrent/n1;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/n1;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/j0;->D(Ljava/lang/Throwable;)V

    .line 4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static j()Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/n0$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/n0$a;-><init>()V

    return-object v0
.end method

.method public static k(Ljava/lang/Object;)Lcom/google/common/util/concurrent/q;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/q<",
            "TV;TX;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/n0$d;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/n0$d;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static l(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TX;)",
            "Lcom/google/common/util/concurrent/q<",
            "TV;TX;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/n0$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/n0$b;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static m(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/n0$c;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/n0$c;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static n(Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/common/util/concurrent/n0$e;->c:Lcom/google/common/util/concurrent/n0$e;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/n0$e;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/n0$e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "+TT;>;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/q0<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/common/util/concurrent/q0;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/util/concurrent/q0;

    check-cast p0, [Lcom/google/common/util/concurrent/q0;

    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/j0$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/j0$g;-><init>([Lcom/google/common/util/concurrent/q0;Lcom/google/common/util/concurrent/j0$a;)V

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 8
    new-instance v5, Lcom/google/common/util/concurrent/j0$f;

    invoke-direct {v5, v0, v1}, Lcom/google/common/util/concurrent/j0$f;-><init>(Lcom/google/common/util/concurrent/j0$g;Lcom/google/common/util/concurrent/j0$a;)V

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 10
    :goto_2
    array-length v2, p0

    if-ge v3, v2, :cond_2

    .line 11
    aget-object v2, p0, v3

    new-instance v4, Lcom/google/common/util/concurrent/j0$c;

    invoke-direct {v4, v0, v1, v3}, Lcom/google/common/util/concurrent/j0$c;-><init>(Lcom/google/common/util/concurrent/j0$g;Lcom/google/common/collect/ImmutableList;I)V

    .line 12
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 13
    invoke-interface {v2, v4, v5}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public static p(Ljava/util/concurrent/Future;Lcom/google/common/base/q;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TI;>;",
            "Lcom/google/common/base/q<",
            "-TI;+TO;>;)",
            "Ljava/util/concurrent/Future<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/j0$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/j0$b;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/base/q;)V

    return-object v0
.end method

.method public static q(Lcom/google/common/util/concurrent/q0;Lcom/google/common/base/q;)Lcom/google/common/util/concurrent/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;",
            "Lcom/google/common/base/q<",
            "-",
            "Ljava/lang/Exception;",
            "TX;>;)",
            "Lcom/google/common/util/concurrent/q<",
            "TV;TX;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/j0$h;

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/q0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/j0$h;-><init>(Lcom/google/common/util/concurrent/q0;Lcom/google/common/base/q;)V

    return-object v0
.end method

.method public static r(Lcom/google/common/util/concurrent/q0;)Lcom/google/common/util/concurrent/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/j0$i;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/j0$i;-><init>(Lcom/google/common/util/concurrent/q0;)V

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static s(Lcom/google/common/util/concurrent/m;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/q0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/m<",
            "TO;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/l1;->Y(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/l1;

    move-result-object p0

    .line 2
    invoke-interface {p4, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/google/common/util/concurrent/j0$a;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/j0$a;-><init>(Ljava/util/concurrent/Future;)V

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/common/util/concurrent/x$a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method

.method public static t(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/m<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/l1;->Y(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/l1;

    move-result-object p0

    .line 2
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static u(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/q0<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/r$b;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/r$b;-><init>(Lcom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static varargs v([Lcom/google/common/util/concurrent/q0;)Lcom/google/common/util/concurrent/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/q0<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/r$b;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/r$b;-><init>(Lcom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static w(Lcom/google/common/util/concurrent/q0;Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "TI;>;",
            "Lcom/google/common/base/q<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/j;->Y(Lcom/google/common/util/concurrent/q0;Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lcom/google/common/util/concurrent/q0;Lcom/google/common/util/concurrent/n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "TI;>;",
            "Lcom/google/common/util/concurrent/n<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/j;->Z(Lcom/google/common/util/concurrent/q0;Lcom/google/common/util/concurrent/n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/j0$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/j0$e<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/j0$e;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/j0$e;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/j0$a;)V

    return-object v0
.end method

.method public static varargs z([Lcom/google/common/util/concurrent/q0;)Lcom/google/common/util/concurrent/j0$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/j0$e<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/j0$e;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/j0$e;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/j0$a;)V

    return-object v0
.end method
