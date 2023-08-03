.class public final Lcom/google/android/exoplayer2/offline/r;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/r$b;,
        Lcom/google/android/exoplayer2/offline/r$e;,
        Lcom/google/android/exoplayer2/offline/r$c;,
        Lcom/google/android/exoplayer2/offline/r$d;
    }
.end annotation


# static fields
.field private static final A:I = 0x4

.field private static final B:I = 0x5

.field private static final C:I = 0x6

.field private static final D:I = 0x7

.field private static final E:I = 0x8

.field private static final F:I = 0x9

.field private static final G:I = 0xa

.field private static final H:I = 0xb

.field private static final I:I = 0xc

.field private static final J:Ljava/lang/String; = "DownloadManager"

.field public static final q:I = 0x3

.field public static final r:I = 0x5

.field public static final s:Lcom/google/android/exoplayer2/scheduler/Requirements;

.field private static final t:I = 0x0

.field private static final u:I = 0x1

.field private static final v:I = 0x2

.field private static final w:I = 0x0

.field private static final x:I = 0x1

.field private static final y:I = 0x2

.field private static final z:I = 0x3


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/offline/f0;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/exoplayer2/offline/r$c;

.field private final e:Lcom/google/android/exoplayer2/scheduler/b$c;

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/offline/r$d;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/e;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/android/exoplayer2/scheduler/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/offline/r;->s:Lcom/google/android/exoplayer2/scheduler/Requirements;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/database/a;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v5, Landroidx/window/layout/d;->a:Landroidx/window/layout/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/r;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/database/a;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/database/a;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/offline/c;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/offline/c;-><init>(Lcom/google/android/exoplayer2/database/a;)V

    new-instance p2, Lcom/google/android/exoplayer2/offline/d;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/b$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/cache/b$d;-><init>()V

    .line 3
    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->k(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/b$d;

    move-result-object p3

    .line 4
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->q(Lcom/google/android/exoplayer2/upstream/m$a;)Lcom/google/android/exoplayer2/upstream/cache/b$d;

    move-result-object p3

    invoke-direct {p2, p3, p5}, Lcom/google/android/exoplayer2/offline/d;-><init>(Lcom/google/android/exoplayer2/upstream/cache/b$d;Ljava/util/concurrent/Executor;)V

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/offline/r;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/f0;Lcom/google/android/exoplayer2/offline/z;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/f0;Lcom/google/android/exoplayer2/offline/z;)V
    .locals 10

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/r;->b:Lcom/google/android/exoplayer2/offline/f0;

    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->k:I

    const/4 v0, 0x5

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->l:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/r;->j:Z

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/r;->o:Ljava/util/List;

    .line 13
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    new-instance v1, Lcom/google/android/exoplayer2/offline/p;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/offline/p;-><init>(Lcom/google/android/exoplayer2/offline/r;)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/z0;->C(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v6

    .line 15
    iput-object v6, p0, Lcom/google/android/exoplayer2/offline/r;->c:Landroid/os/Handler;

    .line 16
    new-instance v3, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:DownloadManager"

    invoke-direct {v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v1, Lcom/google/android/exoplayer2/offline/r$c;

    iget v7, p0, Lcom/google/android/exoplayer2/offline/r;->k:I

    iget v8, p0, Lcom/google/android/exoplayer2/offline/r;->l:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/offline/r;->j:Z

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/offline/r$c;-><init>(Landroid/os/HandlerThread;Lcom/google/android/exoplayer2/offline/f0;Lcom/google/android/exoplayer2/offline/z;Landroid/os/Handler;IIZ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    .line 19
    new-instance p2, Lcom/google/android/exoplayer2/offline/q;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/offline/q;-><init>(Lcom/google/android/exoplayer2/offline/r;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/r;->e:Lcom/google/android/exoplayer2/scheduler/b$c;

    .line 21
    new-instance p3, Lcom/google/android/exoplayer2/scheduler/b;

    sget-object v2, Lcom/google/android/exoplayer2/offline/r;->s:Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-direct {p3, p1, p2, v2}, Lcom/google/android/exoplayer2/scheduler/b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/b$c;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/r;->p:Lcom/google/android/exoplayer2/scheduler/b;

    .line 22
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/scheduler/b;->i()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/r;->m:I

    .line 23
    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    const/4 p2, 0x0

    .line 24
    invoke-virtual {v1, p2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private D(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/r;->j:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/r;->j:Z

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/r;->I()Z

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/r$d;

    .line 9
    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/offline/r$d;->d(Lcom/google/android/exoplayer2/offline/r;Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/r;->s()V

    :cond_2
    return-void
.end method

.method private I()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/r;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->m:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/r;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/r;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/e;

    iget v3, v3, Lcom/google/android/exoplayer2/offline/e;->b:I

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/offline/r;->n:Z

    if-eq v3, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/r;->n:Z

    return v1
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/offline/r;Lcom/google/android/exoplayer2/scheduler/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/r;->w(Lcom/google/android/exoplayer2/scheduler/b;I)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/offline/r;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/r;->n(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private n(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/offline/r$b;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/r;->t(Lcom/google/android/exoplayer2/offline/r$b;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 6
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/r;->v(II)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/r;->u(Ljava/util/List;)V

    :goto_0
    return v1
.end method

.method static r(Lcom/google/android/exoplayer2/offline/e;Lcom/google/android/exoplayer2/offline/DownloadRequest;IJ)Lcom/google/android/exoplayer2/offline/e;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/exoplayer2/offline/e;->b:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/offline/e;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lcom/google/android/exoplayer2/offline/e;->c:J

    move-wide v8, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-wide/from16 v8, p3

    :goto_1
    const/4 v3, 0x7

    if-eq v1, v2, :cond_4

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x7

    .line 3
    :goto_3
    new-instance v1, Lcom/google/android/exoplayer2/offline/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/e;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-object/from16 v2, p1

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/offline/DownloadRequest;->copyWithMergedRequest(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v6

    const-wide/16 v12, -0x1

    const/4 v15, 0x0

    move-object v5, v1

    move-wide/from16 v10, p3

    move/from16 v14, p2

    invoke-direct/range {v5 .. v15}, Lcom/google/android/exoplayer2/offline/e;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V

    return-object v1
.end method

.method private s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/r$d;

    .line 2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/offline/r;->n:Z

    invoke-interface {v1, p0, v2}, Lcom/google/android/exoplayer2/offline/r$d;->a(Lcom/google/android/exoplayer2/offline/r;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t(Lcom/google/android/exoplayer2/offline/r$b;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/r$b;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->o:Ljava/util/List;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/r$b;->a:Lcom/google/android/exoplayer2/offline/e;

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/r;->I()Z

    move-result v1

    .line 4
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/offline/r$b;->b:Z

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/r$d;

    .line 6
    invoke-interface {v2, p0, v0}, Lcom/google/android/exoplayer2/offline/r$d;->c(Lcom/google/android/exoplayer2/offline/r;Lcom/google/android/exoplayer2/offline/e;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/r$d;

    .line 8
    iget-object v4, p1, Lcom/google/android/exoplayer2/offline/r$b;->d:Ljava/lang/Exception;

    invoke-interface {v3, p0, v0, v4}, Lcom/google/android/exoplayer2/offline/r$d;->b(Lcom/google/android/exoplayer2/offline/r;Lcom/google/android/exoplayer2/offline/e;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/r;->s()V

    :cond_2
    return-void
.end method

.method private u(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/e;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/r;->i:Z

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/r;->o:Ljava/util/List;

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/r;->I()Z

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/r$d;

    .line 5
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/offline/r$d;->g(Lcom/google/android/exoplayer2/offline/r;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/r;->s()V

    :cond_1
    return-void
.end method

.method private v(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/offline/r;->h:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/r;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/offline/r$d;

    .line 5
    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/offline/r$d;->f(Lcom/google/android/exoplayer2/offline/r;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private w(Lcom/google/android/exoplayer2/scheduler/b;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/scheduler/b;->f()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->m:I

    if-eq v0, p2, :cond_0

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/offline/r;->m:I

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/r;->I()Z

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/r$d;

    .line 10
    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/offline/r$d;->e(Lcom/google/android/exoplayer2/offline/r;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/r;->s()V

    :cond_2
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public B(Lcom/google/android/exoplayer2/offline/r$d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/r;->D(Z)V

    return-void
.end method

.method public E(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget v2, p0, Lcom/google/android/exoplayer2/offline/r;->k:I

    if-ne v2, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/offline/r;->k:I

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public F(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget v2, p0, Lcom/google/android/exoplayer2/offline/r;->l:I

    if-ne v2, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/offline/r;->l:I

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    const/4 v2, 0x5

    .line 6
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public G(Lcom/google/android/exoplayer2/scheduler/Requirements;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->p:Lcom/google/android/exoplayer2/scheduler/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/b;->f()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->p:Lcom/google/android/exoplayer2/scheduler/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/b;->j()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/r;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/r;->e:Lcom/google/android/exoplayer2/scheduler/b$c;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/scheduler/b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/b$c;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->p:Lcom/google/android/exoplayer2/scheduler/b;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/b;->i()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->p:Lcom/google/android/exoplayer2/scheduler/b;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/r;->w(Lcom/google/android/exoplayer2/scheduler/b;I)V

    return-void
.end method

.method public H(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/offline/DownloadRequest;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/r;->d(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/offline/r$d;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->o:Ljava/util/List;

    return-object v0
.end method

.method public h()Lcom/google/android/exoplayer2/offline/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->b:Lcom/google/android/exoplayer2/offline/f0;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/r;->j:Z

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->k:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->l:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->m:I

    return v0
.end method

.method public m()Lcom/google/android/exoplayer2/scheduler/Requirements;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->p:Lcom/google/android/exoplayer2/scheduler/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/b;->f()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/r;->i:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/r;->n:Z

    return v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/r;->D(Z)V

    return-void
.end method

.method public y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/offline/r$c;->a:Z

    if-eqz v2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/16 v2, 0xc

    .line 4
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/offline/r$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/r;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/r;->o:Ljava/util/List;

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 11
    iput v1, p0, Lcom/google/android/exoplayer2/offline/r;->h:I

    .line 12
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/r;->i:Z

    .line 13
    iput v1, p0, Lcom/google/android/exoplayer2/offline/r;->m:I

    .line 14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/r;->n:Z

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public z()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/r;->g:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r;->d:Lcom/google/android/exoplayer2/offline/r$c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
