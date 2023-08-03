.class public Lcom/ksyun/media/streamer/logstats/b;
.super Ljava/lang/Object;
.source "StatsTimer.java"


# static fields
.field private static o:Lcom/ksyun/media/streamer/logstats/b;


# instance fields
.field public volatile a:I

.field public volatile b:I

.field public volatile c:I

.field public volatile d:I

.field public volatile e:J

.field public volatile f:I

.field public volatile g:I

.field public volatile h:I

.field public volatile i:I

.field public volatile j:F

.field public volatile k:J

.field public volatile l:J

.field public volatile m:I

.field public volatile n:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksyun/media/streamer/logstats/b;->h:I

    return-void
.end method

.method private B()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksyun/media/streamer/logstats/b;->i:I

    return-void
.end method

.method private C()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksyun/media/streamer/logstats/b;->j:F

    return-void
.end method

.method private D()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/logstats/b;->k:J

    return-void
.end method

.method private E()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/logstats/b;->l:J

    return-void
.end method

.method private F()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksyun/media/streamer/logstats/b;->m:I

    return-void
.end method

.method private G()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/logstats/b;->n:J

    return-void
.end method

.method public static a()Lcom/ksyun/media/streamer/logstats/b;
    .locals 2

    .line 1
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/ksyun/media/streamer/logstats/b;->o:Lcom/ksyun/media/streamer/logstats/b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/ksyun/media/streamer/logstats/b;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/logstats/b;-><init>()V

    sput-object v1, Lcom/ksyun/media/streamer/logstats/b;->o:Lcom/ksyun/media/streamer/logstats/b;

    .line 4
    :cond_0
    sget-object v1, Lcom/ksyun/media/streamer/logstats/b;->o:Lcom/ksyun/media/streamer/logstats/b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/ksyun/media/streamer/logstats/b;->o:Lcom/ksyun/media/streamer/logstats/b;

    return-void
.end method

.method private w()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksyun/media/streamer/logstats/b;->d:I

    return-void
.end method

.method private x()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/logstats/b;->e:J

    return-void
.end method

.method private y()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksyun/media/streamer/logstats/b;->f:I

    return-void
.end method

.method private z()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksyun/media/streamer/logstats/b;->g:I

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/b;->j:F

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 6
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 7
    :try_start_0
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/b;->d:I

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(J)V
    .locals 1

    .line 9
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 10
    :try_start_0
    iput-wide p1, p0, Lcom/ksyun/media/streamer/logstats/b;->e:J

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(I)V
    .locals 1

    .line 2
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 3
    :try_start_0
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/b;->f:I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/ksyun/media/streamer/logstats/b;->k:J

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ksyun/media/streamer/logstats/b;->a:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(I)V
    .locals 1

    .line 4
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 5
    :try_start_0
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/b;->g:I

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/ksyun/media/streamer/logstats/b;->l:J

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ksyun/media/streamer/logstats/b;->a:I

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 2
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 3
    :try_start_0
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/b;->h:I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/ksyun/media/streamer/logstats/b;->n:J

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ksyun/media/streamer/logstats/b;->b:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(I)V
    .locals 1

    .line 4
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 5
    :try_start_0
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/b;->i:I

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/logstats/b;->b:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/logstats/b;->m:I

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksyun/media/streamer/logstats/b;->b:I

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    const-class v0, Lcom/ksyun/media/streamer/logstats/b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/ksyun/media/streamer/logstats/b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ksyun/media/streamer/logstats/b;->c:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/b;->c:I

    return v0
.end method

.method public j()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/logstats/b;->e:J

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/b;->d:I

    return v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/logstats/b;->e:J

    return-wide v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/b;->f:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/b;->g:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/b;->h:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/b;->i:I

    return v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/b;->j:F

    return v0
.end method

.method public r()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/logstats/b;->k:J

    return-wide v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/logstats/b;->l:J

    return-wide v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/logstats/b;->m:I

    return v0
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/logstats/b;->n:J

    return-wide v0
.end method

.method public v()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/logstats/b;->g()V

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/logstats/b;->d()V

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->w()V

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->x()V

    .line 5
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/logstats/b;->j()V

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->B()V

    .line 7
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->y()V

    .line 8
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->z()V

    .line 9
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->A()V

    .line 10
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->C()V

    .line 11
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->D()V

    .line 12
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->E()V

    .line 13
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->F()V

    .line 14
    invoke-direct {p0}, Lcom/ksyun/media/streamer/logstats/b;->G()V

    return-void
.end method
