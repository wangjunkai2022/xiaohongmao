.class public final Lcom/google/common/util/concurrent/p;
.super Ljava/lang/Object;
.source "Callables.java"


# annotations
.annotation build Lh3/b;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Thread;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/p;->f(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/u0;)Lcom/google/common/util/concurrent/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/common/util/concurrent/u0;",
            ")",
            "Lcom/google/common/util/concurrent/m<",
            "TT;>;"
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
    new-instance v0, Lcom/google/common/util/concurrent/p$b;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/p$b;-><init>(Lcom/google/common/util/concurrent/u0;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/p$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/p$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static d(Ljava/lang/Runnable;Lcom/google/common/base/i0;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/google/common/base/i0<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/p$d;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/p$d;-><init>(Lcom/google/common/base/i0;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static e(Ljava/util/concurrent/Callable;Lcom/google/common/base/i0;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/common/base/i0<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/p$c;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/p$c;-><init>(Lcom/google/common/base/i0;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/Thread;)Z
    .locals 0
    .annotation build Lh3/c;
    .end annotation

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
