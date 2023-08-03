.class public Lcom/facebook/imagepipeline/core/b;
.super Ljava/lang/Object;
.source "DefaultExecutorSupplier.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/f;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final f:I = 0x2

.field private static final g:I = 0x1


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numCpuBoundThreads"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/core/p;

    const/16 v1, 0xa

    const-string v2, "FrescoIoBoundExecutor"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/core/p;-><init>(ILjava/lang/String;Z)V

    const/4 v2, 0x2

    .line 3
    invoke-static {v2, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/b;->a:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/core/p;

    const-string v2, "FrescoDecodeExecutor"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/core/p;-><init>(ILjava/lang/String;Z)V

    .line 5
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/b;->b:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/core/p;

    const-string v2, "FrescoBackgroundExecutor"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/core/p;-><init>(ILjava/lang/String;Z)V

    .line 7
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/b;->c:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v0, Lcom/facebook/imagepipeline/core/p;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/core/p;-><init>(ILjava/lang/String;Z)V

    .line 9
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    new-instance p1, Lcom/facebook/imagepipeline/core/p;

    const-string v0, "FrescoLightWeightBackgroundExecutor"

    invoke-direct {p1, v1, v0, v3}, Lcom/facebook/imagepipeline/core/p;-><init>(ILjava/lang/String;Z)V

    .line 11
    invoke-static {v3, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/b;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/b;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/b;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/b;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public e()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/b;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public f()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/b;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public g()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/b;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method
