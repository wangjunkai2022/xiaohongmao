.class public Lcom/facebook/imagepipeline/producers/f1;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/f1$b;
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
.field public static final f:Ljava/lang/String; = "ThrottlingProducer"


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

.field private c:I
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Lcom/facebook/imagepipeline/producers/l<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ">;>;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;


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
    iput p1, p0, Lcom/facebook/imagepipeline/producers/f1;->b:I

    .line 3
    invoke-static {p2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/f1;->e:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p3}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/q0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/f1;->a:Lcom/facebook/imagepipeline/producers/q0;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/f1;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/facebook/imagepipeline/producers/f1;->c:I

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/f1;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/f1;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/f1;)I
    .locals 2

    iget v0, p0, Lcom/facebook/imagepipeline/producers/f1;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/imagepipeline/producers/f1;->c:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/producers/f1;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/f1;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 3
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
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    const-string v1, "ThrottlingProducer"

    .line 2
    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/producers/f1;->c:I

    iget v1, p0, Lcom/facebook/imagepipeline/producers/f1;->b:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f1;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/producers/f1;->c:I

    const/4 v2, 0x0

    .line 7
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/f1;->f(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method f(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    const-string v1, "ThrottlingProducer"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f1;->a:Lcom/facebook/imagepipeline/producers/q0;

    new-instance v1, Lcom/facebook/imagepipeline/producers/f1$b;

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/imagepipeline/producers/f1$b;-><init>(Lcom/facebook/imagepipeline/producers/f1;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/f1$a;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method
