.class public Lcom/facebook/imagepipeline/producers/p0;
.super Ljava/lang/Object;
.source "PriorityStarvingThrottlingProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/p0$d;,
        Lcom/facebook/imagepipeline/producers/p0$c;,
        Lcom/facebook/imagepipeline/producers/p0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/q0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "PriorityStarvingThrottlingProducer"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/facebook/imagepipeline/producers/p0$b<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;

.field private e:I
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "maxSimultaneousRequests",
            "executor",
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/imagepipeline/producers/p0;->b:I

    .line 3
    invoke-static {p2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->d:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p3}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/q0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->a:Lcom/facebook/imagepipeline/producers/q0;

    .line 5
    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/facebook/imagepipeline/producers/p0$c;

    invoke-direct {p2}, Lcom/facebook/imagepipeline/producers/p0$c;-><init>()V

    const/16 p3, 0xb

    invoke-direct {p1, p3, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->c:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/p0;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/p0;->c:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/p0;)I
    .locals 2

    iget v0, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/p0$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/p0;->g(Lcom/facebook/imagepipeline/producers/p0$b;)V

    return-void
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/producers/p0;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/p0;->d:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private g(Lcom/facebook/imagepipeline/producers/p0$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/p0$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/facebook/imagepipeline/producers/p0$b;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/facebook/imagepipeline/producers/p0$b;->b:Lcom/facebook/imagepipeline/producers/s0;

    const-string v2, "PriorityStarvingThrottlingProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0;->a:Lcom/facebook/imagepipeline/producers/q0;

    new-instance v1, Lcom/facebook/imagepipeline/producers/p0$d;

    iget-object v2, p1, Lcom/facebook/imagepipeline/producers/p0$b;->a:Lcom/facebook/imagepipeline/producers/l;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/imagepipeline/producers/p0$d;-><init>(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/p0$a;)V

    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/p0$b;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v2

    const-string v3, "PriorityStarvingThrottlingProducer"

    .line 3
    invoke-interface {v2, p2, v3}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget v2, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    iget v3, p0, Lcom/facebook/imagepipeline/producers/p0;->b:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/p0;->c:Ljava/util/Queue;

    new-instance v3, Lcom/facebook/imagepipeline/producers/p0$b;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/facebook/imagepipeline/producers/p0$b;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;J)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    .line 7
    iput v2, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    const/4 v4, 0x0

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 9
    new-instance v2, Lcom/facebook/imagepipeline/producers/p0$b;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/facebook/imagepipeline/producers/p0$b;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;J)V

    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/producers/p0;->g(Lcom/facebook/imagepipeline/producers/p0$b;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
