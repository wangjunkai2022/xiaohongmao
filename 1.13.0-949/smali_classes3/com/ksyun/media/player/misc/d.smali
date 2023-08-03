.class public Lcom/ksyun/media/player/misc/d;
.super Ljava/lang/Object;
.source "KSYListSourceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/misc/d$a;
    }
.end annotation


# static fields
.field private static final a:I = 0xc

.field private static final b:I = 0xd

.field private static final c:I = 0xe


# instance fields
.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ksyun/media/player/KSYMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/os/Handler;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:I

.field private p:I

.field private q:Z

.field private r:I

.field private s:I

.field private t:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/ksyun/media/player/misc/d;->d:I

    const-string v0, "#KSYFILELIST"

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->e:Ljava/lang/String;

    const-string v0, "#KSY_DURATION:"

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->f:Ljava/lang/String;

    const-string v0, "\r\n"

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ksyun/media/player/misc/d;->q:Z

    .line 7
    new-instance v0, Lcom/ksyun/media/player/misc/d$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/misc/d$1;-><init>(Lcom/ksyun/media/player/misc/d;)V

    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->t:Landroid/os/Handler$Callback;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->i:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->j:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->k:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/player/misc/d;->t:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->l:Landroid/os/Handler;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->m:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/misc/d;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/misc/d;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ksyun/media/player/misc/d;->r:I

    return v0
.end method

.method static synthetic a(Lcom/ksyun/media/player/misc/d;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ksyun/media/player/misc/d;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/player/misc/d;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/misc/d;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ksyun/media/player/misc/d;->s:I

    return v0
.end method

.method private b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/misc/d;->r:I

    .line 5
    iput v0, p0, Lcom/ksyun/media/player/misc/d;->s:I

    const/16 v0, 0xa

    .line 6
    iput v0, p0, Lcom/ksyun/media/player/misc/d;->o:I

    const/16 v0, 0x2710

    .line 7
    iput v0, p0, Lcom/ksyun/media/player/misc/d;->p:I

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->k:Ljava/util/ArrayList;

    .line 11
    iget-object v1, p0, Lcom/ksyun/media/player/misc/d;->h:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 13
    :cond_1
    iput-object v0, p0, Lcom/ksyun/media/player/misc/d;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/player/misc/d;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/player/misc/d;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method private c()V
    .locals 8

    .line 2
    iget v0, p0, Lcom/ksyun/media/player/misc/d;->s:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->prepareSourceList(Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#KSYFILELIST"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/ksyun/media/player/misc/d;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 9
    iget-object v3, p0, Lcom/ksyun/media/player/misc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const-string v5, "#KSY_DURATION:"

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    .line 11
    div-long/2addr v3, v5

    long-to-float v3, v3

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v3, p0, Lcom/ksyun/media/player/misc/d;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/ksyun/media/player/misc/d;->h:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/player/misc/d;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/player/KSYMediaPlayer;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->prepareSourceList(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/player/misc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/player/misc/d;->c()V

    return-void
.end method

.method static synthetic e(Lcom/ksyun/media/player/misc/d;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/misc/d;->r:I

    return p0
.end method

.method static synthetic f(Lcom/ksyun/media/player/misc/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/misc/d;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/ksyun/media/player/misc/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/player/misc/d;->q:Z

    return p0
.end method

.method static synthetic h(Lcom/ksyun/media/player/misc/d;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/misc/d;->o:I

    return p0
.end method

.method static synthetic i(Lcom/ksyun/media/player/misc/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/misc/d;->m:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic j(Lcom/ksyun/media/player/misc/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/player/misc/d;->n:J

    return-wide v0
.end method

.method static synthetic k(Lcom/ksyun/media/player/misc/d;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/misc/d;->p:I

    return p0
.end method

.method static synthetic l(Lcom/ksyun/media/player/misc/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/misc/d;->l:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/ksyun/media/player/misc/d;->q:Z

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 6
    iput p1, p0, Lcom/ksyun/media/player/misc/d;->o:I

    mul-int/lit16 p1, p1, 0x3e8

    .line 7
    iput p1, p0, Lcom/ksyun/media/player/misc/d;->p:I

    :cond_0
    return-void
.end method

.method public a(Lcom/ksyun/media/player/KSYMediaPlayer;J)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    iput-wide p2, p0, Lcom/ksyun/media/player/misc/d;->n:J

    .line 10
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ksyun/media/player/misc/d;->h:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ksyun/media/player/misc/d;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const-string p3, "0"

    invoke-static {p2, p3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/ksyun/media/player/misc/d;->k:Ljava/util/ArrayList;

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/player/misc/d;->j:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/ksyun/media/player/misc/d$a;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/misc/d$a;-><init>(Lcom/ksyun/media/player/misc/d;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/misc/d;->b()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/player/misc/d;->m:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
