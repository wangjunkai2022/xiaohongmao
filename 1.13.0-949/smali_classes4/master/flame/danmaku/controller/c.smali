.class public Lmaster/flame/danmaku/controller/c;
.super Landroid/os/Handler;
.source "DrawHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/c$e;,
        Lmaster/flame/danmaku/controller/c$d;
    }
.end annotation


# static fields
.field public static final D:I = 0x1

.field public static final E:I = 0x2

.field public static final F:I = 0x3

.field public static final G:I = 0x4

.field public static final H:I = 0x5

.field private static final I:I = 0x6

.field private static final J:I = 0x7

.field private static final K:I = 0x8

.field private static final L:I = 0x9

.field private static final M:I = 0xa

.field private static final N:I = 0xb

.field private static final O:I = 0xc

.field private static final P:I = 0xd

.field private static final Q:I = 0xe

.field private static final R:J = 0x989680L

.field private static final S:I = 0x1f4


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private b:Lmaster/flame/danmaku/controller/c$e;

.field private c:J

.field private d:Z

.field private e:J

.field private f:Z

.field private g:Lmaster/flame/danmaku/controller/c$d;

.field private h:Lmaster/flame/danmaku/danmaku/model/f;

.field private i:Lmaster/flame/danmaku/danmaku/parser/a;

.field public j:Lmaster/flame/danmaku/controller/h;

.field private k:Lmaster/flame/danmaku/controller/g;

.field private l:Z

.field private m:Lmaster/flame/danmaku/danmaku/model/b;

.field private final n:Lf8/a$c;

.field private o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lmaster/flame/danmaku/controller/i;

.field private q:Z

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lmaster/flame/danmaku/controller/g;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->c:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    .line 4
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/f;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/f;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    .line 5
    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    .line 6
    new-instance v0, Lf8/a$c;

    invoke-direct {v0}, Lf8/a$c;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    const-wide/16 v0, 0x1e

    .line 8
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->r:J

    const-wide/16 v0, 0x3c

    .line 9
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->s:J

    const-wide/16 v0, 0x10

    .line 10
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->t:J

    .line 11
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->g()Z

    move-result v0

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/c;->B:Z

    .line 12
    invoke-direct {p0, p2}, Lmaster/flame/danmaku/controller/c;->v(Lmaster/flame/danmaku/controller/g;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/c;->d0(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/c;->H(Z)J

    .line 15
    :goto_0
    iput-boolean p3, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    return-void
.end method

.method private declared-synchronized B()J
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    if-gtz v0, :cond_0

    .line 2
    monitor-exit p0

    return-wide v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v3, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 4
    iget-object v4, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    int-to-long v3, v0

    .line 6
    div-long/2addr v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 7
    :cond_2
    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private I()V
    .locals 8

    const-wide/16 v0, 0x10

    long-to-float v2, v0

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    float-to-long v4, v2

    const-wide/16 v6, 0x21

    .line 1
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lmaster/flame/danmaku/controller/c;->r:J

    long-to-float v2, v4

    mul-float v2, v2, v3

    float-to-long v2, v2

    .line 2
    iput-wide v2, p0, Lmaster/flame/danmaku/controller/c;->s:J

    const-wide/16 v2, 0xf

    .line 3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->t:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    .line 4
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->u:J

    return-void
.end method

.method private N()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->A:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/h;->h()V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->q:Z

    if-eqz v0, :cond_2

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    monitor-enter v0

    .line 9
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 11
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 12
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x2

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->A:Z

    return-void
.end method

.method private Q(Ljava/lang/Runnable;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/g;->f()Z

    move-result v2

    iget-object v3, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    .line 3
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/g;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/g;->getViewWidth()I

    move-result v5

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/g;->getViewHeight()I

    move-result v6

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    .line 4
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/g;->isHardwareAccelerated()Z

    move-result v7

    new-instance v8, Lmaster/flame/danmaku/controller/c$c;

    invoke-direct {v8, p0, p1}, Lmaster/flame/danmaku/controller/c$c;-><init>(Lmaster/flame/danmaku/controller/c;Ljava/lang/Runnable;)V

    move-object v1, p0

    .line 5
    invoke-direct/range {v1 .. v8}, Lmaster/flame/danmaku/controller/c;->x(ZLmaster/flame/danmaku/danmaku/model/f;Landroid/content/Context;IIZLmaster/flame/danmaku/controller/h$a;)Lmaster/flame/danmaku/controller/h;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private declared-synchronized S()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->p:Lmaster/flame/danmaku/controller/i;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lmaster/flame/danmaku/controller/c;->p:Lmaster/flame/danmaku/controller/i;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v2, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/i;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v1, 0x7d0

    .line 7
    :try_start_3
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 10
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized T()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private U()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x64

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/controller/c;J)J
    .locals 0

    iput-wide p1, p0, Lmaster/flame/danmaku/controller/c;->c:J

    return-wide p1
.end method

.method static synthetic b(Lmaster/flame/danmaku/controller/c;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic c(Lmaster/flame/danmaku/controller/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/c;->f:Z

    return p1
.end method

.method static synthetic d(Lmaster/flame/danmaku/controller/c;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    return p0
.end method

.method static synthetic e(Lmaster/flame/danmaku/controller/c;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/c;->j0(J)V

    return-void
.end method

.method private final e0(J)J
    .locals 11

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->w:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->z:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->z:Z

    .line 3
    iget-wide v3, p0, Lmaster/flame/danmaku/controller/c;->e:J

    sub-long/2addr p1, v3

    .line 4
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->C:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->g:Lmaster/flame/danmaku/controller/c$d;

    if-eqz p1, :cond_8

    .line 6
    iget-object p2, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/controller/c$d;->q(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 7
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/f;->b()J

    move-result-wide v1

    goto/16 :goto_2

    .line 8
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    iget-boolean v0, v0, Lf8/a$c;->p:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->A:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v3, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long/2addr p1, v3

    .line 10
    iget-wide v3, p0, Lmaster/flame/danmaku/controller/c;->t:J

    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->B()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    cmp-long v0, p1, v5

    if-gtz v0, :cond_5

    .line 11
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    iget-wide v5, v0, Lf8/a$c;->m:J

    iget-wide v7, p0, Lmaster/flame/danmaku/controller/c;->r:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_5

    cmp-long v0, v3, v7

    if-lez v0, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/c;->t:J

    div-long v5, p1, v0

    add-long/2addr v3, v5

    .line 13
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/c;->r:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/c;->v:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x3

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    const-wide/16 v6, 0x8

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    .line 16
    iget-wide v4, p0, Lmaster/flame/danmaku/controller/c;->t:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    iget-wide v4, p0, Lmaster/flame/danmaku/controller/c;->r:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    move-wide v0, v2

    :cond_4
    sub-long/2addr p1, v0

    .line 17
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->v:J

    move-wide v9, p1

    move-wide p1, v0

    move-wide v1, v9

    .line 18
    :cond_5
    :goto_0
    iput-wide v1, p0, Lmaster/flame/danmaku/controller/c;->y:J

    .line 19
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 20
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->g:Lmaster/flame/danmaku/controller/c$d;

    if-eqz v0, :cond_6

    .line 21
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/c$d;->q(Lmaster/flame/danmaku/danmaku/model/f;)V

    :cond_6
    move-wide v1, p1

    goto :goto_2

    .line 22
    :cond_7
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 23
    iput-wide v1, p0, Lmaster/flame/danmaku/controller/c;->y:J

    .line 24
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->g:Lmaster/flame/danmaku/controller/c$d;

    if-eqz p1, :cond_8

    .line 25
    iget-object p2, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/controller/c$d;->q(Lmaster/flame/danmaku/danmaku/model/f;)V

    :cond_8
    :goto_2
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/c;->z:Z

    :cond_9
    :goto_3
    return-wide v1
.end method

.method static synthetic f(Lmaster/flame/danmaku/controller/c;)Lf8/a$c;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    return-object p0
.end method

.method private f0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->A:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/c;->e0(J)J

    :cond_0
    return-void
.end method

.method static synthetic g(Lmaster/flame/danmaku/controller/c;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/controller/c;->B:Z

    return p0
.end method

.method private g0()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->b:Lmaster/flame/danmaku/controller/c$e;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 3
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    .line 4
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/c;->e0(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/g;->a()J

    move-result-wide v0

    .line 7
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/c;->s:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 9
    iget-object v2, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v2, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 10
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 11
    :cond_2
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    if-nez v0, :cond_3

    const-wide/32 v0, 0x989680

    .line 12
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/c;->j0(J)V

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    iget-boolean v1, v0, Lf8/a$c;->p:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lmaster/flame/danmaku/controller/c;->B:Z

    if-eqz v1, :cond_4

    .line 14
    iget-wide v0, v0, Lf8/a$c;->o:J

    iget-object v2, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    .line 15
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/c;->j0(J)V

    :cond_4
    return-void
.end method

.method static synthetic h(Lmaster/flame/danmaku/controller/c;)V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->N()V

    return-void
.end method

.method private h0()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/c;->e0(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    .line 4
    iget-boolean v2, p0, Lmaster/flame/danmaku/controller/c;->C:Z

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x3c

    sub-long/2addr v2, v0

    .line 6
    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/g;->a()J

    move-result-wide v0

    .line 8
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/c;->s:J

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    .line 10
    iget-object v2, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v2, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 11
    iget-object v2, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 12
    :cond_2
    iget-boolean v2, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    if-nez v2, :cond_3

    const-wide/32 v0, 0x989680

    .line 13
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/c;->j0(J)V

    return-void

    .line 14
    :cond_3
    iget-object v2, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    iget-boolean v3, v2, Lf8/a$c;->p:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lmaster/flame/danmaku/controller/c;->B:Z

    if-eqz v3, :cond_4

    .line 15
    iget-wide v2, v2, Lf8/a$c;->o:J

    iget-object v5, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v5, v5, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x1f4

    cmp-long v7, v2, v5

    if-lez v7, :cond_4

    const-wide/16 v0, 0xa

    sub-long/2addr v2, v0

    .line 16
    invoke-direct {p0, v2, v3}, Lmaster/flame/danmaku/controller/c;->j0(J)V

    return-void

    .line 17
    :cond_4
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/c;->t:J

    cmp-long v5, v0, v2

    if-gez v5, :cond_5

    sub-long/2addr v2, v0

    .line 18
    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 19
    :cond_5
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic i(Lmaster/flame/danmaku/controller/c;)V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->I()V

    return-void
.end method

.method private i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->p:Lmaster/flame/danmaku/controller/i;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lmaster/flame/danmaku/controller/c$b;

    const-string v1, "DFM Update"

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/controller/c$b;-><init>(Lmaster/flame/danmaku/controller/c;Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/c;->p:Lmaster/flame/danmaku/controller/i;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic j(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method private j0(J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/c;->L()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/c;->K()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->w:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    invoke-static {}, Lg8/c;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lf8/a$c;->q:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->A:Z

    .line 4
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->q:Z

    const-wide/32 v1, 0x989680

    const/16 v3, 0xb

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->p:Lmaster/flame/danmaku/controller/i;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, p1, v1

    if-nez v4, :cond_2

    .line 7
    :try_start_1
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 9
    :goto_0
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    cmp-long v4, p1, v1

    if-nez v4, :cond_4

    .line 12
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    invoke-virtual {p0, v3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic k(Lmaster/flame/danmaku/controller/c;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/controller/c;->A:Z

    return p0
.end method

.method static synthetic l(Lmaster/flame/danmaku/controller/c;)V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->U()V

    return-void
.end method

.method static synthetic m(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/controller/c$d;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/controller/c;->g:Lmaster/flame/danmaku/controller/c$d;

    return-object p0
.end method

.method static synthetic n(Lmaster/flame/danmaku/controller/c;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    return p0
.end method

.method static synthetic o(Lmaster/flame/danmaku/controller/c;)J
    .locals 2

    iget-wide v0, p0, Lmaster/flame/danmaku/controller/c;->t:J

    return-wide v0
.end method

.method static synthetic p(Lmaster/flame/danmaku/controller/c;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/controller/c;->C:Z

    return p0
.end method

.method static synthetic q(Lmaster/flame/danmaku/controller/c;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/c;->e0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic r(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/controller/g;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    return-object p0
.end method

.method static synthetic s(Lmaster/flame/danmaku/controller/c;)J
    .locals 2

    iget-wide v0, p0, Lmaster/flame/danmaku/controller/c;->s:J

    return-wide v0
.end method

.method static synthetic t(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/danmaku/model/f;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method

.method private v(Lmaster/flame/danmaku/controller/g;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    return-void
.end method

.method private x(ZLmaster/flame/danmaku/danmaku/model/f;Landroid/content/Context;IIZLmaster/flame/danmaku/controller/h$a;)Lmaster/flame/danmaku/controller/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    .line 2
    invoke-interface {v0, p4, p5}, Lmaster/flame/danmaku/danmaku/model/n;->h(II)V

    .line 3
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 4
    iget-object p4, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    iget p5, p3, Landroid/util/DisplayMetrics;->density:F

    iget v0, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-interface {p4, p5, v0, p3}, Lmaster/flame/danmaku/danmaku/model/n;->d(FIF)V

    .line 5
    iget-object p3, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object p4, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget p4, p4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    invoke-interface {p3, p4}, Lmaster/flame/danmaku/danmaku/model/n;->a(F)V

    .line 6
    iget-object p3, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-interface {p3, p6}, Lmaster/flame/danmaku/danmaku/model/n;->q(Z)V

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lmaster/flame/danmaku/controller/a;

    iget-object p3, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {p1, p2, p3, p7}, Lmaster/flame/danmaku/controller/a;-><init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/h$a;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lmaster/flame/danmaku/controller/e;

    iget-object p3, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {p1, p2, p3, p7}, Lmaster/flame/danmaku/controller/e;-><init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/h$a;)V

    .line 8
    :goto_0
    iget-object p2, p0, Lmaster/flame/danmaku/controller/c;->i:Lmaster/flame/danmaku/danmaku/parser/a;

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/controller/h;->j(Lmaster/flame/danmaku/danmaku/parser/a;)V

    .line 9
    invoke-interface {p1}, Lmaster/flame/danmaku/controller/h;->a()V

    const/16 p2, 0xa

    .line 10
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method


# virtual methods
.method public A()V
    .locals 1

    const/16 v0, 0xe

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public C()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method

.method public D()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->f:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->w:Z

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/c;->x:J

    return-wide v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->A:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lmaster/flame/danmaku/controller/c;->e:J

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-wide v2, p0, Lmaster/flame/danmaku/controller/c;->y:J

    goto :goto_0
.end method

.method public E()Lmaster/flame/danmaku/danmaku/model/m;
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/c;->D()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lmaster/flame/danmaku/controller/h;->g(J)Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Lmaster/flame/danmaku/danmaku/model/n;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    return-object v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    return v0
.end method

.method public H(Z)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x9

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 7
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    return-wide v0
.end method

.method public J(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lmaster/flame/danmaku/controller/h;->c(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->U()V

    return-void
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->f:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    return v0
.end method

.method public M(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-interface {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/n;->h(II)V

    const/16 p1, 0xa

    .line 4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public O()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->f0()V

    const/4 v0, 0x7

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public P()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->f:Z

    .line 2
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->D:B

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lmaster/flame/danmaku/controller/c$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmaster/flame/danmaku/controller/c$e;-><init>(Lmaster/flame/danmaku/controller/c;Lmaster/flame/danmaku/controller/c$a;)V

    iput-object v1, p0, Lmaster/flame/danmaku/controller/c;->b:Lmaster/flame/danmaku/controller/c$e;

    .line 4
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->D:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->q:Z

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public R()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public V(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/h;->d(Z)V

    :cond_0
    return-void
.end method

.method public W()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/h;->e()V

    :cond_0
    return-void
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public Y(Ljava/lang/Long;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->w:Z

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->x:J

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public Z(Lmaster/flame/danmaku/controller/c$d;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/c;->g:Lmaster/flame/danmaku/controller/c$d;

    return-void
.end method

.method public a0(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-void
.end method

.method public b0(Z)V
    .locals 0

    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/c;->B:Z

    return-void
.end method

.method public c0(Lmaster/flame/danmaku/danmaku/parser/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/c;->i:Lmaster/flame/danmaku/danmaku/parser/a;

    .line 2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/parser/a;->c()Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    :cond_0
    return-void
.end method

.method public d0(Ljava/lang/Long;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x9

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x64

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 2
    :pswitch_0
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz p1, :cond_16

    .line 3
    invoke-interface {p1}, Lmaster/flame/danmaku/controller/h;->l()V

    goto/16 :goto_4

    .line 4
    :pswitch_1
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz p1, :cond_16

    .line 5
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/c;->D()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lmaster/flame/danmaku/controller/h;->o(J)V

    goto/16 :goto_4

    .line 6
    :pswitch_2
    iget-boolean p1, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    if-eqz p1, :cond_16

    .line 7
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-interface {p1}, Lmaster/flame/danmaku/controller/h;->h()V

    .line 8
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    invoke-interface {p1}, Lmaster/flame/danmaku/controller/g;->a()J

    .line 9
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->N()V

    goto/16 :goto_4

    .line 10
    :pswitch_3
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->N()V

    goto/16 :goto_4

    .line 11
    :pswitch_4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->j(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_16

    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 14
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->e()V

    .line 15
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->h()V

    .line 16
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-interface {p1}, Lmaster/flame/danmaku/controller/h;->m()V

    goto/16 :goto_4

    .line 17
    :pswitch_5
    iput-boolean v5, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    .line 18
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v1}, Lmaster/flame/danmaku/controller/g;->clear()V

    .line 20
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v1, :cond_1

    .line 21
    invoke-interface {v1}, Lmaster/flame/danmaku/controller/h;->h()V

    .line 22
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-interface {v1}, Lmaster/flame/danmaku/controller/h;->p()V

    .line 23
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v1, :cond_2

    .line 25
    invoke-interface {v1}, Lmaster/flame/danmaku/controller/h;->k()V

    .line 26
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_4

    .line 27
    :pswitch_6
    iput-boolean v6, p0, Lmaster/flame/danmaku/controller/c;->l:Z

    .line 28
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 29
    iget-object v8, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v8, :cond_4

    if-nez v7, :cond_3

    .line 30
    iget-object v7, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/c;->D()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 31
    iget-object v7, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-interface {v7}, Lmaster/flame/danmaku/controller/h;->h()V

    goto :goto_0

    .line 32
    :cond_3
    invoke-interface {v8}, Lmaster/flame/danmaku/controller/h;->start()V

    .line 33
    iget-object v8, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lmaster/flame/danmaku/controller/h;->i(J)V

    .line 34
    iget-object v7, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-interface {v7}, Lmaster/flame/danmaku/controller/h;->h()V

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v7, 0x0

    .line 35
    :goto_1
    iget-boolean v8, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    if-eqz v8, :cond_5

    .line 36
    invoke-interface {v8}, Lmaster/flame/danmaku/controller/g;->a()J

    .line 37
    :cond_5
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->N()V

    if-nez v7, :cond_11

    goto/16 :goto_4

    .line 38
    :cond_6
    :pswitch_7
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz p1, :cond_7

    .line 41
    invoke-interface {p1, v4}, Lmaster/flame/danmaku/controller/h;->f(I)V

    :cond_7
    :pswitch_8
    const/4 p1, 0x6

    if-ne v0, p1, :cond_8

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    :cond_8
    iput-boolean v6, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    .line 44
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->f0()V

    .line 45
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iput-wide v1, p0, Lmaster/flame/danmaku/controller/c;->c:J

    .line 46
    iget-boolean v1, p0, Lmaster/flame/danmaku/controller/c;->q:Z

    if-eqz v1, :cond_9

    .line 47
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->N()V

    .line 48
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->S()V

    .line 49
    :cond_9
    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->b:Lmaster/flame/danmaku/controller/c$e;

    if-eqz v1, :cond_a

    .line 50
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/c;->b:Lmaster/flame/danmaku/controller/c$e;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_a
    if-ne v0, p1, :cond_16

    .line 51
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz p1, :cond_b

    .line 52
    invoke-interface {p1}, Lmaster/flame/danmaku/controller/h;->k()V

    .line 53
    :cond_b
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->i:Lmaster/flame/danmaku/danmaku/parser/a;

    if-eqz p1, :cond_c

    .line 54
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/parser/a;->g()V

    .line 55
    :cond_c
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_16

    .line 56
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_4

    .line 57
    :pswitch_9
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lmaster/flame/danmaku/controller/c;->e:J

    .line 58
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->i:Lmaster/flame/danmaku/danmaku/parser/a;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->k:Lmaster/flame/danmaku/controller/g;

    invoke-interface {p1}, Lmaster/flame/danmaku/controller/g;->u()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2

    .line 59
    :cond_d
    new-instance p1, Lmaster/flame/danmaku/controller/c$a;

    invoke-direct {p1, p0}, Lmaster/flame/danmaku/controller/c$a;-><init>(Lmaster/flame/danmaku/controller/c;)V

    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/c;->Q(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_e
    :goto_2
    const/4 p1, 0x5

    .line 60
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 61
    :pswitch_a
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->D:B

    if-nez p1, :cond_f

    .line 62
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->g0()V

    goto/16 :goto_4

    :cond_f
    if-ne p1, v6, :cond_10

    .line 63
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->i0()V

    goto/16 :goto_4

    :cond_10
    if-ne p1, v4, :cond_16

    .line 64
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->h0()V

    goto/16 :goto_4

    .line 65
    :cond_11
    :pswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_12

    .line 66
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lmaster/flame/danmaku/controller/c;->c:J

    goto :goto_3

    :cond_12
    const-wide/16 v7, 0x0

    .line 67
    iput-wide v7, p0, Lmaster/flame/danmaku/controller/c;->c:J

    :goto_3
    :pswitch_c
    const/4 v7, 0x4

    if-ne v0, v7, :cond_14

    .line 68
    iput-boolean v6, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    .line 69
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->S()V

    .line 70
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v9, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long/2addr v7, v9

    .line 72
    iget-wide v9, p0, Lmaster/flame/danmaku/controller/c;->e:J

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lmaster/flame/danmaku/controller/c;->e:J

    .line 73
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 74
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->e()V

    .line 75
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v0, :cond_13

    .line 76
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v0, v7, v8}, Lmaster/flame/danmaku/controller/h;->i(J)V

    .line 77
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lmaster/flame/danmaku/controller/c;->c:J

    :cond_14
    :pswitch_d
    const/4 p1, 0x7

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iput-boolean v5, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    .line 80
    iget-boolean p1, p0, Lmaster/flame/danmaku/controller/c;->f:Z

    if-eqz p1, :cond_15

    .line 81
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    invoke-virtual {p1}, Lf8/a$c;->e()V

    .line 82
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->o:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 83
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    iget-wide v7, p0, Lmaster/flame/danmaku/controller/c;->c:J

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->e:J

    .line 84
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p1, v7, v8}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 85
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-interface {p1}, Lmaster/flame/danmaku/controller/h;->start()V

    .line 88
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->N()V

    .line 89
    iput-boolean v5, p0, Lmaster/flame/danmaku/controller/c;->w:Z

    .line 90
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz p1, :cond_16

    .line 91
    invoke-interface {p1, v6}, Lmaster/flame/danmaku/controller/h;->f(I)V

    goto :goto_4

    .line 92
    :cond_15
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_16
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/d;->I(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/h;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    const/16 p1, 0xb

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public y(Landroid/graphics/Canvas;)Lf8/a$c;
    .locals 14

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->A:Z

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->m:Lmaster/flame/danmaku/danmaku/model/a;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-boolean v2, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/a;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 8
    iget-object v2, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v4, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 9
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/a;->c()J

    move-result-wide v10

    sub-long v12, v10, v4

    .line 10
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/a;->b()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    if-eqz v1, :cond_2

    .line 11
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/c;->X()V

    .line 13
    :cond_2
    iget-object v3, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    move-wide v6, v10

    move-wide v8, v12

    invoke-interface/range {v3 .. v9}, Lmaster/flame/danmaku/controller/h;->q(JJJ)V

    .line 14
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->h:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v0, v10, v11}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 15
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/c;->e:J

    sub-long/2addr v0, v12

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->e:J

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/c;->y:J

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_4

    .line 17
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/c;->d:Z

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/c;->O()V

    .line 19
    :cond_4
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/b;->z(Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c;->j:Lmaster/flame/danmaku/controller/h;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/h;->n(Lmaster/flame/danmaku/danmaku/model/b;)Lf8/a$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf8/a$c;->f(Lf8/a$c;)V

    .line 21
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/c;->T()V

    .line 22
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c;->n:Lf8/a$c;

    return-object p1
.end method

.method public z(Z)V
    .locals 0

    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/c;->C:Z

    return-void
.end method
