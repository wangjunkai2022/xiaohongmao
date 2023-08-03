.class public Lmaster/flame/danmaku/ui/widget/DanmakuView;
.super Landroid/view/View;
.source "DanmakuView.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/f;
.implements Lmaster/flame/danmaku/controller/g;


# static fields
.field public static final v:Ljava/lang/String; = "DanmakuView"

.field private static final w:I = 0x32

.field private static final x:I = 0x3e8


# instance fields
.field private a:Lmaster/flame/danmaku/controller/c$d;

.field private b:Landroid/os/HandlerThread;

.field protected volatile c:Lmaster/flame/danmaku/controller/c;

.field private d:Z

.field private e:Z

.field private f:Lmaster/flame/danmaku/controller/f$a;

.field private g:F

.field private h:F

.field private i:Landroid/view/View$OnClickListener;

.field private j:Lmaster/flame/danmaku/ui/widget/a;

.field private k:Z

.field private l:Z

.field protected m:I

.field private n:Ljava/lang/Object;

.field private o:Z

.field protected p:Z

.field private q:J

.field private r:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected s:Z

.field private t:I

.field private u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->e:Z

    .line 3
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->m:I

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Ljava/lang/Object;

    .line 6
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Z

    .line 7
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 8
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:I

    .line 9
    new-instance p1, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;

    invoke-direct {p1, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->u:Ljava/lang/Runnable;

    .line 10
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->D()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->e:Z

    .line 13
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->m:I

    .line 15
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Ljava/lang/Object;

    .line 16
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Z

    .line 17
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 18
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:I

    .line 19
    new-instance p1, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;

    invoke-direct {p1, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->u:Ljava/lang/Runnable;

    .line 20
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->D()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->e:Z

    .line 23
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->m:I

    .line 25
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Ljava/lang/Object;

    .line 26
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Z

    .line 27
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 28
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:I

    .line 29
    new-instance p1, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;

    invoke-direct {p1, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->u:Ljava/lang/Runnable;

    .line 30
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->D()V

    return-void
.end method

.method static synthetic A(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    return p0
.end method

.method private B()F
    .locals 6

    .line 1
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 4
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-float v0, v0

    .line 5
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 7
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float v3, v1, v0

    :cond_2
    return v3
.end method

.method private D()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->q:J

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lmaster/flame/danmaku/controller/d;->f(ZZ)V

    .line 5
    invoke-static {p0}, Lmaster/flame/danmaku/ui/widget/a;->j(Lmaster/flame/danmaku/controller/f;)Lmaster/flame/danmaku/ui/widget/a;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->j:Lmaster/flame/danmaku/ui/widget/a;

    return-void
.end method

.method private F()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:Z

    .line 2
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->E()V

    return-void
.end method

.method private G()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmaster/flame/danmaku/controller/c;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->m:I

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->C(I)Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    invoke-direct {v0, v1, p0, v2}, Lmaster/flame/danmaku/controller/c;-><init>(Landroid/os/Looper;Lmaster/flame/danmaku/controller/g;Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    :cond_0
    return-void
.end method

.method private declared-synchronized J()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    .line 5
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->K()V

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->R()V

    .line 7
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:Landroid/os/HandlerThread;

    .line 8
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:Landroid/os/HandlerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    :try_start_2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 11
    :goto_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Z

    .line 3
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic y(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I
    .locals 0

    iget p0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:I

    return p0
.end method

.method static synthetic z(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:I

    return v0
.end method


# virtual methods
.method protected declared-synchronized C(I)Landroid/os/Looper;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:Landroid/os/HandlerThread;

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x13

    goto :goto_0

    :cond_2
    const/4 p1, -0x8

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DFM Handler Thread #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 7
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 8
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected E()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->G()V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 5
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    iget-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v1}, Lmaster/flame/danmaku/controller/c;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public I()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->stop()V

    .line 2
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->start()V

    return-void
.end method

.method public a()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 3
    :cond_1
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->E()V

    .line 5
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/c;->u(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method

.method public c(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/c;->J(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->q:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->F()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:Z

    .line 5
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->G()V

    :goto_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/c;->V(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->W()V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->e:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->k:Z

    return-void
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->C()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->D()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->E()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnDanmakuClickListener()Lmaster/flame/danmaku/controller/f$a;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Lmaster/flame/danmaku/controller/f$a;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXOff()F
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->g:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h:F

    return v0
.end method

.method public h(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->H()V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    .line 2
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/controller/c;->H(Z)J

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->L()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Ljava/lang/Long;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/c;->Y(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:I

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->I()V

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Lmaster/flame/danmaku/danmaku/parser/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->H()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/controller/c;->a0(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 3
    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {p2, p1}, Lmaster/flame/danmaku/controller/c;->c0(Lmaster/flame/danmaku/danmaku/parser/a;)V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/controller/c$d;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/controller/c;->Z(Lmaster/flame/danmaku/controller/c$d;)V

    .line 5
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {p1}, Lmaster/flame/danmaku/controller/c;->P()V

    return-void
.end method

.method public m()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/c;->H(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public n(Lmaster/flame/danmaku/controller/f$a;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Lmaster/flame/danmaku/controller/f$a;

    .line 2
    iput p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->g:F

    .line 3
    iput p3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lmaster/flame/danmaku/controller/d;->a(Landroid/graphics/Canvas;)V

    .line 5
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/c;->y(Landroid/graphics/Canvas;)Lf8/a$c;

    move-result-object v0

    .line 8
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->k:Z

    if-eqz v2, :cond_3

    .line 9
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    if-nez v2, :cond_2

    .line 10
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    .line 11
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->B()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, v0, Lf8/a$c;->r:J

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, v0, Lf8/a$c;->s:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "fps %.2f,time:%d s,cache:%d,miss:%d"

    .line 14
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lmaster/flame/danmaku/controller/d;->d(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 16
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 17
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->K()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, p5}, Lmaster/flame/danmaku/controller/c;->M(II)V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->d:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->j:Lmaster/flame/danmaku/ui/widget/a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/ui/widget/a;->k(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public p(Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:Z

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/c;->d0(Ljava/lang/Long;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->O()V

    :cond_0
    return-void
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->stop()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->A()V

    return-void
.end method

.method public setCallback(Lmaster/flame/danmaku/controller/c$d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/controller/c$d;

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/c;->Z(Lmaster/flame/danmaku/controller/c$d;)V

    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0

    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->m:I

    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/controller/f$a;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Lmaster/flame/danmaku/controller/f$a;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p(Ljava/lang/Long;)V

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h(J)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->J()V

    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->w()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->d:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->start()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->k()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->d:Z

    return v0
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->e:Z

    return-void
.end method
