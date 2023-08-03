.class public Lcom/google/common/util/concurrent/r0;
.super Ljava/util/concurrent/FutureTask;
.source "ListenableFutureTask.java"

# interfaces
.implements Lcom/google/common/util/concurrent/q0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/q0<",
        "TV;>;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/u;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/google/common/util/concurrent/u;

    invoke-direct {p1}, Lcom/google/common/util/concurrent/u;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/r0;->a:Lcom/google/common/util/concurrent/u;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    new-instance p1, Lcom/google/common/util/concurrent/u;

    invoke-direct {p1}, Lcom/google/common/util/concurrent/u;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/r0;->a:Lcom/google/common/util/concurrent/u;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/r0;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/common/util/concurrent/r0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/r0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/r0;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/r0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/r0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/r0;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/r0;->a:Lcom/google/common/util/concurrent/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/u;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected done()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/r0;->a:Lcom/google/common/util/concurrent/u;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/u;->b()V

    return-void
.end method
