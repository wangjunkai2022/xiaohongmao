.class public Lf8/a$c;
.super Ljava/lang/Object;
.source "IRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final v:I = -0x1


# instance fields
.field public a:Z

.field public b:Lmaster/flame/danmaku/danmaku/model/f;

.field public c:I

.field public d:I

.field public e:Lmaster/flame/danmaku/danmaku/model/d;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:J

.field public p:Z

.field public q:J

.field public r:J

.field public s:J

.field private t:Lmaster/flame/danmaku/danmaku/model/m;

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/f;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/f;-><init>()V

    iput-object v0, p0, Lf8/a$c;->b:Lmaster/flame/danmaku/danmaku/model/f;

    .line 3
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lf8/a$c;->t:Lmaster/flame/danmaku/danmaku/model/m;

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget p1, p0, Lf8/a$c;->j:I

    add-int/2addr p1, p2

    iput p1, p0, Lf8/a$c;->j:I

    return p1

    .line 2
    :cond_1
    iget p1, p0, Lf8/a$c;->g:I

    add-int/2addr p1, p2

    iput p1, p0, Lf8/a$c;->g:I

    return p1

    .line 3
    :cond_2
    iget p1, p0, Lf8/a$c;->h:I

    add-int/2addr p1, p2

    iput p1, p0, Lf8/a$c;->h:I

    return p1

    .line 4
    :cond_3
    iget p1, p0, Lf8/a$c;->i:I

    add-int/2addr p1, p2

    iput p1, p0, Lf8/a$c;->i:I

    return p1

    .line 5
    :cond_4
    iget p1, p0, Lf8/a$c;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Lf8/a$c;->f:I

    return p1
.end method

.method public b(I)I
    .locals 1

    iget v0, p0, Lf8/a$c;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lf8/a$c;->k:I

    return v0
.end method

.method public c(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf8/a$c;->u:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf8/a$c;->t:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/m;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_0
    return-void
.end method

.method public d()Lmaster/flame/danmaku/danmaku/model/m;
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf8/a$c;->u:Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lf8/a$c;->t:Lmaster/flame/danmaku/danmaku/model/m;

    .line 4
    new-instance v1, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v1, p0, Lf8/a$c;->t:Lmaster/flame/danmaku/danmaku/model/m;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lf8/a$c;->u:Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget v0, p0, Lf8/a$c;->k:I

    iput v0, p0, Lf8/a$c;->l:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf8/a$c;->k:I

    iput v0, p0, Lf8/a$c;->j:I

    iput v0, p0, Lf8/a$c;->i:I

    iput v0, p0, Lf8/a$c;->h:I

    iput v0, p0, Lf8/a$c;->g:I

    iput v0, p0, Lf8/a$c;->f:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lf8/a$c;->m:J

    iput-wide v1, p0, Lf8/a$c;->o:J

    iput-wide v1, p0, Lf8/a$c;->n:J

    iput-wide v1, p0, Lf8/a$c;->q:J

    .line 4
    iput-boolean v0, p0, Lf8/a$c;->p:Z

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lf8/a$c;->t:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->clear()V

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(Lf8/a$c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lf8/a$c;->l:I

    iput v0, p0, Lf8/a$c;->l:I

    .line 2
    iget v0, p1, Lf8/a$c;->f:I

    iput v0, p0, Lf8/a$c;->f:I

    .line 3
    iget v0, p1, Lf8/a$c;->g:I

    iput v0, p0, Lf8/a$c;->g:I

    .line 4
    iget v0, p1, Lf8/a$c;->h:I

    iput v0, p0, Lf8/a$c;->h:I

    .line 5
    iget v0, p1, Lf8/a$c;->i:I

    iput v0, p0, Lf8/a$c;->i:I

    .line 6
    iget v0, p1, Lf8/a$c;->j:I

    iput v0, p0, Lf8/a$c;->j:I

    .line 7
    iget v0, p1, Lf8/a$c;->k:I

    iput v0, p0, Lf8/a$c;->k:I

    .line 8
    iget-wide v0, p1, Lf8/a$c;->m:J

    iput-wide v0, p0, Lf8/a$c;->m:J

    .line 9
    iget-wide v0, p1, Lf8/a$c;->n:J

    iput-wide v0, p0, Lf8/a$c;->n:J

    .line 10
    iget-wide v0, p1, Lf8/a$c;->o:J

    iput-wide v0, p0, Lf8/a$c;->o:J

    .line 11
    iget-boolean v0, p1, Lf8/a$c;->p:Z

    iput-boolean v0, p0, Lf8/a$c;->p:Z

    .line 12
    iget-wide v0, p1, Lf8/a$c;->q:J

    iput-wide v0, p0, Lf8/a$c;->q:J

    .line 13
    iget-wide v0, p1, Lf8/a$c;->r:J

    iput-wide v0, p0, Lf8/a$c;->r:J

    .line 14
    iget-wide v0, p1, Lf8/a$c;->s:J

    iput-wide v0, p0, Lf8/a$c;->s:J

    return-void
.end method
