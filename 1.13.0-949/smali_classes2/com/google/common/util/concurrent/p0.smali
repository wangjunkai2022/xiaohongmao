.class public final Lcom/google/common/util/concurrent/p0;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/p0$a;
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/util/concurrent/q0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/util/concurrent/q0;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/p0$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/p0$a;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lcom/google/common/util/concurrent/q0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/common/util/concurrent/q0;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/p0$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/p0$a;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
