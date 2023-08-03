.class public Lmaster/flame/danmaku/controller/e;
.super Ljava/lang/Object;
.source "DrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/h;


# instance fields
.field protected final c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field protected final d:Lmaster/flame/danmaku/danmaku/model/b;

.field protected e:Lmaster/flame/danmaku/danmaku/model/m;

.field protected f:Lmaster/flame/danmaku/danmaku/parser/a;

.field g:Lmaster/flame/danmaku/controller/h$a;

.field final h:Lf8/a;

.field i:Lmaster/flame/danmaku/danmaku/model/f;

.field private j:Lmaster/flame/danmaku/danmaku/model/m;

.field protected k:Z

.field private l:J

.field private final m:Lf8/a$c;

.field protected n:Z

.field private o:J

.field private p:J

.field protected q:I

.field private r:Z

.field private s:Lmaster/flame/danmaku/danmaku/model/d;

.field private t:Lmaster/flame/danmaku/danmaku/model/android/e;

.field private u:Lmaster/flame/danmaku/danmaku/model/m;

.field private v:Z

.field private w:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/h$a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lmaster/flame/danmaku/controller/e;->l:J

    .line 4
    new-instance v0, Lf8/a$c;

    invoke-direct {v0}, Lf8/a$c;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/e;->m:Lf8/a$c;

    .line 5
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/e;->t:Lmaster/flame/danmaku/danmaku/model/android/e;

    .line 6
    new-instance v0, Lmaster/flame/danmaku/controller/e$a;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/controller/e$a;-><init>(Lmaster/flame/danmaku/controller/e;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/e;->w:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;

    if-eqz p2, :cond_4

    .line 7
    iput-object p2, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 8
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    .line 9
    iput-object p3, p0, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    .line 10
    new-instance p3, Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-direct {p3, p2}, Lmaster/flame/danmaku/danmaku/renderer/android/a;-><init>(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    iput-object p3, p0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    .line 11
    new-instance v0, Lmaster/flame/danmaku/controller/e$b;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/controller/e$b;-><init>(Lmaster/flame/danmaku/controller/e;)V

    invoke-interface {p3, v0}, Lf8/a;->g(Lf8/a$b;)V

    .line 12
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p3, v0}, Lf8/a;->d(Z)V

    .line 13
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/e;->v(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 14
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p3, "1017_Filter"

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {p1, p3}, Lmaster/flame/danmaku/controller/b;->f(Ljava/lang/String;)Lmaster/flame/danmaku/controller/b$e;

    goto :goto_2

    .line 17
    :cond_2
    iget-object p1, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {p1, p3}, Lmaster/flame/danmaku/controller/b;->l(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private r(Lf8/a$c;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/m;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lf8/a$c;->e()V

    .line 2
    iget-object v0, p1, Lf8/a$c;->b:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-static {}, Lg8/c;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Lf8/a$c;->c:I

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Lmaster/flame/danmaku/danmaku/model/m;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/m;->size()I

    move-result v0

    :cond_1
    add-int/2addr p2, v0

    iput p2, p1, Lf8/a$c;->d:I

    return-void
.end method

.method private t(Lf8/a$c;)V
    .locals 4

    .line 1
    iget v0, p1, Lf8/a$c;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lf8/a$c;->p:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    iput-wide v1, p1, Lf8/a$c;->n:J

    .line 3
    :cond_1
    iget-object v0, p1, Lf8/a$c;->e:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 v3, 0x0

    .line 4
    iput-object v3, p1, Lf8/a$c;->e:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v1

    :cond_2
    iput-wide v1, p1, Lf8/a$c;->o:J

    .line 6
    iget-object v0, p1, Lf8/a$c;->b:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-static {}, Lg8/c;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    move-result-wide v0

    iput-wide v0, p1, Lf8/a$c;->m:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->f:Lmaster/flame/danmaku/danmaku/parser/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/e;->w(Lmaster/flame/danmaku/danmaku/parser/a;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/e;->p:J

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/e;->o:J

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/h$a;->c()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/e;->n:Z

    :cond_1
    return-void
.end method

.method public declared-synchronized b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->z:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->t:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/e;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    const/16 v0, 0xa

    .line 5
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/e;->z(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->size()I

    move-result v0

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->s:I

    const/4 v0, 0x1

    .line 7
    iget-wide v1, p0, Lmaster/flame/danmaku/controller/e;->o:J

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lmaster/flame/danmaku/controller/e;->p:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 8
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :try_start_2
    iget-object v1, p0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v1, p1}, Lmaster/flame/danmaku/danmaku/model/m;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v1

    .line 10
    monitor-exit v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    .line 11
    :cond_2
    iget-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->z:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 12
    :cond_3
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13
    :try_start_4
    iget-object v2, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v2, p1}, Lmaster/flame/danmaku/danmaku/model/m;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v2

    .line 14
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    if-nez v2, :cond_5

    :cond_4
    const-wide/16 v0, 0x0

    .line 15
    :try_start_5
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/e;->p:J

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/e;->o:J

    :cond_5
    if-eqz v2, :cond_6

    .line 16
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/h$a;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 18
    :cond_6
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->s:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz v0, :cond_7

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    iget-object v2, p0, Lmaster/flame/danmaku/controller/e;->s:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    .line 19
    :cond_7
    iput-object p1, p0, Lmaster/flame/danmaku/controller/e;->s:Lmaster/flame/danmaku/danmaku/model/d;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 20
    :cond_8
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 21
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/b;->w()Lmaster/flame/danmaku/danmaku/model/android/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/b;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 2
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    if-eqz p2, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    .line 3
    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 4
    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    or-int/lit8 p2, v0, 0x1

    .line 5
    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    .line 6
    iget p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->v:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->v:I

    :cond_0
    return-void
.end method

.method public declared-synchronized d(Z)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 3
    :try_start_1
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v3, p1, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    sub-long v5, v1, v3

    const-wide/16 v7, 0x64

    sub-long/2addr v5, v7

    add-long/2addr v1, v3

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {p1, v5, v6, v1, v2}, Lmaster/flame/danmaku/danmaku/model/m;->d(JJ)Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iput-object p1, p0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    .line 6
    :cond_1
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->clear()V

    .line 7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    new-instance v2, Lmaster/flame/danmaku/controller/e$c;

    invoke-direct {v2, p0}, Lmaster/flame/danmaku/controller/e$c;-><init>(Lmaster/flame/danmaku/controller/e;)V

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/danmaku/model/m;->a(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lmaster/flame/danmaku/controller/e;->q:I

    return-void
.end method

.method public g(J)Lmaster/flame/danmaku/danmaku/model/m;
    .locals 6

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x64

    sub-long/2addr v2, v4

    add-long/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0, v2, v3, p1, p2}, Lmaster/flame/danmaku/danmaku/model/m;->d(JJ)Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_1
    new-instance p2, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {p2}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lmaster/flame/danmaku/controller/e$e;

    invoke-direct {v0, p0, p2}, Lmaster/flame/danmaku/controller/e$e;-><init>(Lmaster/flame/danmaku/controller/e;Lmaster/flame/danmaku/danmaku/model/m;)V

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/danmaku/model/m;->a(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    :cond_1
    return-object p2
.end method

.method public h()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/e;->p:J

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/e;->o:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/e;->r:Z

    return-void
.end method

.method public i(J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/e;->reset()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->h()V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->d()V

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->g()V

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->f()V

    .line 6
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/e;->u:Lmaster/flame/danmaku/danmaku/model/m;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    move-wide p1, v0

    .line 7
    :cond_0
    iput-wide p1, p0, Lmaster/flame/danmaku/controller/e;->l:J

    .line 8
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->m:Lf8/a$c;

    invoke-virtual {p1}, Lf8/a$c;->e()V

    .line 9
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->m:Lf8/a$c;

    iget-wide v2, p0, Lmaster/flame/danmaku/controller/e;->l:J

    iput-wide v2, p1, Lf8/a$c;->o:J

    .line 10
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/e;->p:J

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/e;->o:J

    .line 11
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->last()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    iput-object p1, p0, Lmaster/flame/danmaku/controller/e;->s:Lmaster/flame/danmaku/danmaku/model/d;

    :cond_1
    return-void
.end method

.method public j(Lmaster/flame/danmaku/danmaku/parser/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/e;->f:Lmaster/flame/danmaku/danmaku/parser/a;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/e;->n:Z

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b0()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lf8/a;->release()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/e;->v:Z

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/e;->k:Z

    return-void
.end method

.method public declared-synchronized n(Lmaster/flame/danmaku/danmaku/model/b;)Lf8/a$c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/controller/e;->s(Lmaster/flame/danmaku/danmaku/model/b;Lmaster/flame/danmaku/danmaku/model/f;)Lf8/a$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public o(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/e;->reset()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->h()V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->d()V

    .line 4
    iput-wide p1, p0, Lmaster/flame/danmaku/controller/e;->l:J

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/e;->r:Z

    return-void
.end method

.method public q(JJJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->m:Lf8/a$c;

    invoke-virtual {p1}, Lf8/a$c;->d()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lmaster/flame/danmaku/controller/e;->u:Lmaster/flame/danmaku/danmaku/model/m;

    .line 3
    new-instance p2, Lmaster/flame/danmaku/controller/e$g;

    invoke-direct {p2, p0, p5, p6}, Lmaster/flame/danmaku/controller/e$g;-><init>(Lmaster/flame/danmaku/controller/e;J)V

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/danmaku/model/m;->a(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    .line 4
    iput-wide p3, p0, Lmaster/flame/danmaku/controller/e;->l:J

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    .line 3
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lf8/a;->clear()V

    :cond_1
    return-void
.end method

.method protected s(Lmaster/flame/danmaku/danmaku/model/b;Lmaster/flame/danmaku/danmaku/model/f;)Lf8/a$c;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lmaster/flame/danmaku/controller/e;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    invoke-interface {v1}, Lf8/a;->e()V

    .line 3
    iput-boolean v2, v0, Lmaster/flame/danmaku/controller/e;->k:Z

    .line 4
    :cond_0
    iget-object v1, v0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 5
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/b;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    .line 6
    invoke-static {v1}, Lmaster/flame/danmaku/controller/d;->a(Landroid/graphics/Canvas;)V

    .line 7
    iget-boolean v1, v0, Lmaster/flame/danmaku/controller/e;->r:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lmaster/flame/danmaku/controller/e;->v:Z

    if-nez v1, :cond_1

    .line 8
    iget-object v1, v0, Lmaster/flame/danmaku/controller/e;->m:Lf8/a$c;

    return-object v1

    .line 9
    :cond_1
    iput-boolean v2, v0, Lmaster/flame/danmaku/controller/e;->v:Z

    .line 10
    iget-object v1, v0, Lmaster/flame/danmaku/controller/e;->m:Lf8/a$c;

    move-object/from16 v4, p2

    .line 11
    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v6, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v6, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v6, v6, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    sub-long v8, v4, v6

    const-wide/16 v10, 0x64

    sub-long/2addr v8, v10

    add-long/2addr v6, v4

    .line 12
    iget-object v10, v0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    .line 13
    iget-wide v11, v0, Lmaster/flame/danmaku/controller/e;->o:J

    cmp-long v13, v11, v8

    if-gtz v13, :cond_3

    iget-wide v13, v0, Lmaster/flame/danmaku/controller/e;->p:J

    cmp-long v15, v4, v13

    if-lez v15, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, v10

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    iget-object v4, v0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v4, v8, v9, v6, v7}, Lmaster/flame/danmaku/danmaku/model/m;->f(JJ)Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 15
    iput-object v4, v0, Lmaster/flame/danmaku/controller/e;->j:Lmaster/flame/danmaku/danmaku/model/m;

    .line 16
    :cond_4
    iput-wide v8, v0, Lmaster/flame/danmaku/controller/e;->o:J

    .line 17
    iput-wide v6, v0, Lmaster/flame/danmaku/controller/e;->p:J

    move-wide v13, v6

    move-wide v11, v8

    move-object v6, v4

    .line 18
    :goto_1
    iget-object v4, v0, Lmaster/flame/danmaku/controller/e;->u:Lmaster/flame/danmaku/danmaku/model/m;

    .line 19
    invoke-direct {v0, v1, v4, v6}, Lmaster/flame/danmaku/controller/e;->r(Lf8/a$c;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/m;)V

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 20
    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/m;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 21
    iget-object v7, v0, Lmaster/flame/danmaku/controller/e;->m:Lf8/a$c;

    iput-boolean v5, v7, Lf8/a$c;->a:Z

    .line 22
    iget-object v15, v0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    const-wide/16 v18, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, v4

    move-object/from16 v20, v7

    invoke-interface/range {v15 .. v20}, Lf8/a;->a(Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/model/m;JLf8/a$c;)V

    .line 23
    :cond_5
    iget-object v4, v0, Lmaster/flame/danmaku/controller/e;->m:Lf8/a$c;

    iput-boolean v2, v4, Lf8/a$c;->a:Z

    if-eqz v6, :cond_9

    .line 24
    invoke-interface {v6}, Lmaster/flame/danmaku/danmaku/model/m;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 25
    iget-object v4, v0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    iget-object v5, v0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    iget-wide v7, v0, Lmaster/flame/danmaku/controller/e;->l:J

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Lf8/a;->a(Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/model/m;JLf8/a$c;)V

    .line 26
    invoke-direct {v0, v1}, Lmaster/flame/danmaku/controller/e;->t(Lf8/a$c;)V

    .line 27
    iget-boolean v2, v1, Lf8/a$c;->p:Z

    if-eqz v2, :cond_8

    .line 28
    iget-object v2, v0, Lmaster/flame/danmaku/controller/e;->s:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    iput-object v3, v0, Lmaster/flame/danmaku/controller/e;->s:Lmaster/flame/danmaku/danmaku/model/d;

    .line 30
    iget-object v2, v0, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    if-eqz v2, :cond_6

    .line 31
    invoke-interface {v2}, Lmaster/flame/danmaku/controller/h$a;->d()V

    .line 32
    :cond_6
    iget-wide v2, v1, Lf8/a$c;->n:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_7

    .line 33
    iput-wide v11, v1, Lf8/a$c;->n:J

    .line 34
    :cond_7
    iget-wide v2, v1, Lf8/a$c;->o:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_8

    .line 35
    iput-wide v13, v1, Lf8/a$c;->o:J

    :cond_8
    return-object v1

    .line 36
    :cond_9
    iput-boolean v5, v1, Lf8/a$c;->p:Z

    .line 37
    iput-wide v11, v1, Lf8/a$c;->n:J

    .line 38
    iput-wide v13, v1, Lf8/a$c;->o:J

    return-object v1

    :cond_a
    return-object v3
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/e;->w:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;)V

    return-void
.end method

.method protected u(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 1
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_9

    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "1017_Filter"

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {p2, p3}, Lmaster/flame/danmaku/controller/b;->f(Ljava/lang/String;)Lmaster/flame/danmaku/controller/b$e;

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object p2, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {p2, p3}, Lmaster/flame/danmaku/controller/b;->l(Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_2
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_MARGIN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUN_LINES:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->OVERLAPPING_ENABLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->ALIGN_BOTTOM:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 10
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_9

    .line 11
    iget-object p3, p0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    if-eqz p3, :cond_a

    .line 12
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p3, p2}, Lf8/a;->b(Z)V

    goto :goto_2

    .line 13
    :cond_5
    :goto_0
    iget-object p2, p0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    if-eqz p2, :cond_a

    .line 14
    iget-object p3, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r()Z

    move-result p3

    if-eqz p3, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    invoke-interface {p2, v0}, Lf8/a;->d(Z)V

    goto :goto_2

    .line 15
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/e;->m()V

    :cond_9
    const/4 p1, 0x0

    :cond_a
    :goto_2
    return p1
.end method

.method protected v(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    return-void
.end method

.method protected w(Lmaster/flame/danmaku/danmaku/parser/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/parser/a;->i(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/parser/a;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/parser/a;->j(Lmaster/flame/danmaku/danmaku/model/n;)Lmaster/flame/danmaku/danmaku/parser/a;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/parser/a;->l(Lmaster/flame/danmaku/danmaku/model/f;)Lmaster/flame/danmaku/danmaku/parser/a;

    move-result-object p1

    new-instance v0, Lmaster/flame/danmaku/controller/e$f;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/controller/e$f;-><init>(Lmaster/flame/danmaku/controller/e;)V

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/parser/a;->k(Lmaster/flame/danmaku/danmaku/parser/a$a;)Lmaster/flame/danmaku/danmaku/parser/a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/parser/a;->a()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->a()V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->last()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/controller/e;->s:Lmaster/flame/danmaku/danmaku/model/d;

    :cond_0
    return-void
.end method

.method public varargs x(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/e;->u(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Lmaster/flame/danmaku/controller/h$a;->e()V

    :cond_0
    return p1
.end method

.method protected y(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized z(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->t:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->t:Lmaster/flame/danmaku/danmaku/model/android/e;

    new-instance v1, Lmaster/flame/danmaku/controller/e$d;

    invoke-direct {v1, p0, p1}, Lmaster/flame/danmaku/controller/e$d;-><init>(Lmaster/flame/danmaku/controller/e;I)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/m$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
