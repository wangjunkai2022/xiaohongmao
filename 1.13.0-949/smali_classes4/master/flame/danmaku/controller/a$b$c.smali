.class Lmaster/flame/danmaku/controller/a$b$c;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/a$b;->r()V
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
.field final synthetic e:Lmaster/flame/danmaku/controller/a$b;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/a$b;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b$c;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/a$b$c;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    .line 3
    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$c;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/android/c;->c:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$c;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/a;->B(Lmaster/flame/danmaku/controller/a;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$c;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/android/c;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    return v6

    .line 5
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$c;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a$b;->g(Lmaster/flame/danmaku/controller/a$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$c;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->A(Lmaster/flame/danmaku/controller/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$c;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/a;->A(Lmaster/flame/danmaku/controller/a;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 10
    monitor-exit v0

    return v1

    .line 11
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_1
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$c;->e:Lmaster/flame/danmaku/controller/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, v1}, Lmaster/flame/danmaku/controller/a$b;->t(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 p1, 0x2

    return p1

    :cond_2
    return v1
.end method
