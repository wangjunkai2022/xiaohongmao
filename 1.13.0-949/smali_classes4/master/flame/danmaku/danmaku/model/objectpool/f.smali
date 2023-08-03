.class Lmaster/flame/danmaku/danmaku/model/objectpool/f;
.super Ljava/lang/Object;
.source "SynchronizedPool.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/objectpool/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lmaster/flame/danmaku/danmaku/model/objectpool/c<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/model/objectpool/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lmaster/flame/danmaku/danmaku/model/objectpool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/objectpool/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/objectpool/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/objectpool/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/f;->a:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    .line 3
    iput-object p0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/objectpool/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/objectpool/b<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/f;->a:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    .line 6
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/f;->a:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    invoke-interface {v1, p1}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/f;->a:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
