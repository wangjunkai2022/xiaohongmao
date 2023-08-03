.class public Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;
.super Ljava/lang/Object;
.source "PriorityNetworkFetcher.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/l0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$NonrecoverableException;,
        Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FETCH_STATE:",
        "Lcom/facebook/imagepipeline/producers/w;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/l0<",
        "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
        "TFETCH_STATE;>;>;"
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/String; = "PriorityNetworkFetcher"

.field static final t:I = -0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final u:I = -0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/l0<",
            "TFETCH_STATE;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:Ls0/c;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;>;"
        }
    .end annotation
.end field

.field private volatile k:Z

.field private final l:Z

.field private final m:I

.field private final n:Z

.field private o:J

.field private final p:J

.field private final q:I

.field private final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l0;ZIIZIZIIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "delegate",
            "isHiPriFifo",
            "maxOutstandingHiPri",
            "maxOutstandingLowPri",
            "inflightFetchesCanBeCancelled",
            "maxNumberOfRequeue",
            "doNotCancelRequests",
            "immediateRequeueCount",
            "requeueDelayTimeInMillis",
            "multipleDequeue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l0<",
            "TFETCH_STATE;>;ZIIZIZIIZ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 2
    invoke-direct/range {v0 .. v11}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;-><init>(Lcom/facebook/imagepipeline/producers/l0;ZIIZIZIIZLs0/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l0;ZIIZIZIIZLs0/c;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "delegate",
            "isHiPriFifo",
            "maxOutstandingHiPri",
            "maxOutstandingLowPri",
            "inflightFetchesCanBeCancelled",
            "maxNumberOfRequeue",
            "doNotCancelRequests",
            "immediateRequeueCount",
            "requeueDelayTimeInMillis",
            "multipleDequeue",
            "clock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l0<",
            "TFETCH_STATE;>;ZIIZIZIIZ",
            "Ls0/c;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->f:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h:Ljava/util/LinkedList;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i:Ljava/util/HashSet;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j:Ljava/util/LinkedList;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->k:Z

    .line 12
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->a:Lcom/facebook/imagepipeline/producers/l0;

    .line 13
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->b:Z

    .line 14
    iput p3, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->c:I

    .line 15
    iput p4, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->d:I

    if-le p3, p4, :cond_0

    .line 16
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->l:Z

    .line 17
    iput p6, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->m:I

    .line 18
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->n:Z

    .line 19
    iput p8, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->q:I

    int-to-long p1, p9

    .line 20
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->p:J

    .line 21
    iput-boolean p10, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->r:Z

    .line 22
    iput-object p11, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->e:Ls0/c;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxOutstandingHiPri should be > maxOutstandingLowPri"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l0;ZIIZZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "delegate",
            "isHiPriFifo",
            "maxOutstandingHiPri",
            "maxOutstandingLowPri",
            "inflightFetchesCanBeCancelled",
            "infiniteRequeue",
            "doNotCancelRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l0<",
            "TFETCH_STATE;>;ZIIZZZ)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    const/4 v0, -0x1

    const/4 v7, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 3
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    .line 4
    invoke-direct/range {v1 .. v12}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;-><init>(Lcom/facebook/imagepipeline/producers/l0;ZIIZIZIIZLs0/c;)V

    return-void
.end method

.method private A(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->e:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->o:J

    .line 3
    :cond_0
    iget v0, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->n:I

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private B(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "isHiPri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    iget-boolean p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->b:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private C(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "reasonForLogging"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->s:Ljava/lang/String;

    const-string v2, "remove: %s %s"

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->h()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, p2, v3}, Lp0/a;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->q()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private D(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->s:Ljava/lang/String;

    const-string v2, "requeue: %s"

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->h()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lp0/a;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget v1, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->m:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->m:I

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->a:Lcom/facebook/imagepipeline/producers/l0;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->a()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->b()Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/imagepipeline/producers/l0;->e(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/producers/w;

    move-result-object v1

    iput-object v1, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->f:Lcom/facebook/imagepipeline/producers/w;

    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    iget v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->q:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v3, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->m:I

    if-le v3, v1, :cond_1

    .line 10
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->A(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->b()Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/s0;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    sget-object v3, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->B(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->q()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->n:Z

    return p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->l:Z

    return p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->C(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->m(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V

    return-void
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)I
    .locals 0

    iget p0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->m:I

    return p0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->D(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V

    return-void
.end method

.method private m(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "isNewHiPri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->f:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h:Ljava/util/LinkedList;

    .line 3
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->n(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    sget-object v1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->s:Ljava/lang/String;

    const-string v2, "change-pri: %s %s"

    if-eqz p2, :cond_2

    const-string v3, "HIPRI"

    goto :goto_2

    :cond_2
    const-string v3, "LOWPRI"

    :goto_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->h()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lp0/a;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget v1, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->o:I

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->B(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->q()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private n(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->o:I

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private p(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fetchState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;-><init>(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->a:Lcom/facebook/imagepipeline/producers/l0;

    iget-object v2, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->f:Lcom/facebook/imagepipeline/producers/w;

    invoke-interface {v1, v2, v0}, Lcom/facebook/imagepipeline/producers/l0;->a(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/l0$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FAIL"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->C(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private q()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->x()V

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 5
    iget v3, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->c:I

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    :cond_1
    if-nez v0, :cond_2

    .line 7
    iget v3, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->d:I

    if-ge v2, v3, :cond_2

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    :cond_2
    if-nez v0, :cond_3

    .line 9
    monitor-exit v1

    return-void

    .line 10
    :cond_3
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->e:Ls0/c;

    invoke-interface {v3}, Ls0/c;->now()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->l:J

    .line 11
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v4, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->s:Ljava/lang/String;

    const-string v5, "fetching: %s (concurrent: %s hi-pri queue: %s low-pri queue: %s)"

    .line 13
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/w;->h()Landroid/net/Uri;

    move-result-object v6

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    .line 15
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h:Ljava/util/LinkedList;

    .line 16
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 17
    invoke-static/range {v4 .. v9}, Lp0/a;->g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->p(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V

    .line 20
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->r:Z

    if-eqz v0, :cond_4

    .line 21
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->q()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->e:Ls0/c;

    .line 2
    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->o:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->p:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/w;->b()Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/s0;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->B(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public E()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->k:Z

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->q()V

    return-void
.end method

.method public F(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->a:Lcom/facebook/imagepipeline/producers/l0;

    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->f:Lcom/facebook/imagepipeline/producers/w;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l0;->c(Lcom/facebook/imagepipeline/producers/w;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "fetchState",
            "callback"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->r(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Lcom/facebook/imagepipeline/producers/l0$a;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/facebook/imagepipeline/producers/w;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->y(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;I)V

    return-void
.end method

.method public bridge synthetic c(Lcom/facebook/imagepipeline/producers/w;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fetchState"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->F(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Lcom/facebook/imagepipeline/producers/w;I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->u(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/producers/w;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->o(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;
    .locals 11
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
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;"
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->a:Lcom/facebook/imagepipeline/producers/l0;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l0;->e(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lcom/facebook/imagepipeline/producers/w;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->e:Ls0/c;

    .line 3
    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v7

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i:Ljava/util/HashSet;

    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v8

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/w;JIIILcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;)V

    return-object v10
.end method

.method public r(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fetchState",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;",
            "Lcom/facebook/imagepipeline/producers/l0$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->b()Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;-><init>(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Lcom/facebook/imagepipeline/producers/l0$a;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/s0;->f(Lcom/facebook/imagepipeline/producers/t0;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object p2, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch state was enqueued twice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lp0/a;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->b()Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/s0;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    sget-object v2, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    sget-object v2, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->s:Ljava/lang/String;

    const-string v3, "enqueue: %s %s"

    if-eqz v1, :cond_2

    const-string v4, "HI-PRI"

    goto :goto_1

    :cond_2
    const-string v4, "LOW-PRI"

    :goto_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/w;->h()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lp0/a;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iput-object p2, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->k:Lcom/facebook/imagepipeline/producers/l0$a;

    .line 10
    invoke-direct {p0, p1, v1}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->B(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->q()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method s()Ljava/util/HashSet;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i:Ljava/util/HashSet;

    return-object v0
.end method

.method t()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j:Ljava/util/LinkedList;

    return-object v0
.end method

.method public u(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;I)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->a:Lcom/facebook/imagepipeline/producers/l0;

    iget-object v1, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->f:Lcom/facebook/imagepipeline/producers/w;

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/l0;->d(Lcom/facebook/imagepipeline/producers/w;I)Ljava/util/Map;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    if-eqz p2, :cond_0

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->l:J

    iget-wide v4, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->g:J

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "pri_queue_time"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->h:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "hipri_queue_size"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->i:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "lowpri_queue_size"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->m:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "requeueCount"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->o:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "priority_changed_count"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->p:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "request_initial_priority_is_high"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->j:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "currently_fetching_size"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->n:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "delay_count"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method v()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g:Ljava/util/LinkedList;

    return-object v0
.end method

.method w()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h:Ljava/util/LinkedList;

    return-object v0
.end method

.method public y(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c<",
            "TFETCH_STATE;>;I)V"
        }
    .end annotation

    const-string v0, "SUCCESS"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->C(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->a:Lcom/facebook/imagepipeline/producers/l0;

    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->f:Lcom/facebook/imagepipeline/producers/w;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l0;->b(Lcom/facebook/imagepipeline/producers/w;I)V

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->k:Z

    return-void
.end method
