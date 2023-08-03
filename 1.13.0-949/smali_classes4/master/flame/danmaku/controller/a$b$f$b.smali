.class Lmaster/flame/danmaku/controller/a$b$f$b;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/a$b$f;->n(Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/m$c<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field e:I

.field f:I

.field final synthetic g:Lmaster/flame/danmaku/danmaku/model/d;

.field final synthetic h:Z

.field final synthetic i:I

.field final synthetic j:J

.field final synthetic k:J

.field final synthetic l:J

.field final synthetic m:Lmaster/flame/danmaku/controller/a$b$f;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/a$b$f;Lmaster/flame/danmaku/danmaku/model/d;ZIJJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    iput-object p2, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->g:Lmaster/flame/danmaku/danmaku/model/d;

    iput-boolean p3, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->h:Z

    iput p4, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->i:I

    iput-wide p5, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->j:J

    iput-wide p7, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->k:J

    iput-wide p9, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->l:J

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->e:I

    .line 3
    iput p1, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->f:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/a$b$f$b;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a$b$f;->a(Lmaster/flame/danmaku/controller/a$b$f;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a$b$f;->b(Lmaster/flame/danmaku/controller/a$b$f;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->g:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v2

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v4, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Lmaster/flame/danmaku/danmaku/model/o;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return v2

    .line 5
    :cond_2
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->h:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->u()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v2

    .line 6
    :cond_4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v9, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v9, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    iget v5, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->e:I

    iget v6, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->i:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lmaster/flame/danmaku/controller/b;->b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 8
    :cond_5
    iget-byte v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->o:B

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 9
    :cond_6
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 10
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->j:J

    sub-long/2addr v3, v5

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v5, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    div-long/2addr v3, v5

    long-to-int v0, v3

    .line 11
    iget v3, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->f:I

    if-ne v3, v0, :cond_7

    .line 12
    iget v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->e:I

    goto :goto_0

    .line 13
    :cond_7
    iput v2, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->e:I

    .line 14
    iput v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->f:I

    .line 15
    :cond_8
    :goto_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->h:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a$b$f;->c(Lmaster/flame/danmaku/controller/a$b$f;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 16
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->A(Lmaster/flame/danmaku/controller/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object v3, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v3}, Lmaster/flame/danmaku/controller/a;->A(Lmaster/flame/danmaku/controller/a;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 18
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

    .line 19
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v1

    .line 20
    :cond_9
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-static {v0, p1, v2}, Lmaster/flame/danmaku/controller/a$b$f;->d(Lmaster/flame/danmaku/controller/a$b$f;Lmaster/flame/danmaku/danmaku/model/d;Z)B

    .line 21
    iget-boolean p1, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->h:Z

    if-nez p1, :cond_a

    .line 22
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->l:J

    sub-long/2addr v3, v5

    .line 23
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f$b;->m:Lmaster/flame/danmaku/controller/a$b$f;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    const-wide/16 v5, 0xed8

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->a(Lmaster/flame/danmaku/controller/a$b;)I

    move-result p1

    int-to-long v7, p1

    mul-long v7, v7, v5

    cmp-long p1, v3, v7

    if-ltz p1, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    :goto_2
    return v1
.end method
