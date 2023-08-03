.class public abstract Lcom/google/common/util/concurrent/x;
.super Lcom/google/common/util/concurrent/l0;
.source "FluentFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/l0<",
        "TV;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/l0;-><init>()V

    return-void
.end method

.method public static U(Lcom/google/common/util/concurrent/q0;)Lcom/google/common/util/concurrent/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/x<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/util/concurrent/x;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/x;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/d0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/d0;-><init>(Lcom/google/common/util/concurrent/q0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final R(Lcom/google/common/util/concurrent/i0;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/i0<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/j0;->a(Lcom/google/common/util/concurrent/q0;Lcom/google/common/util/concurrent/i0;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final S(Ljava/lang/Class;Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/x;
    .locals 0
    .annotation build Lcom/google/common/util/concurrent/y0$a;
        value = "AVAILABLE but requires exceptionType to be Throwable.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/base/q<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/x<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/j0;->d(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/x;

    return-object p1
.end method

.method public final T(Ljava/lang/Class;Lcom/google/common/util/concurrent/n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/x;
    .locals 0
    .annotation build Lcom/google/common/util/concurrent/y0$a;
        value = "AVAILABLE but requires exceptionType to be Throwable.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/n<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/x<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/j0;->e(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/util/concurrent/n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/x;

    return-object p1
.end method

.method public final V(Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/q<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/x<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/j0;->w(Lcom/google/common/util/concurrent/q0;Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/x;

    return-object p1
.end method

.method public final W(Lcom/google/common/util/concurrent/n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/n<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/x<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/j0;->x(Lcom/google/common/util/concurrent/q0;Lcom/google/common/util/concurrent/n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/x;

    return-object p1
.end method

.method public final X(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/x<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/j0;->C(Lcom/google/common/util/concurrent/q0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/x;

    return-object p1
.end method
