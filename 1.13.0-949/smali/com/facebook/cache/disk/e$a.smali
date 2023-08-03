.class Lcom/facebook/cache/disk/e$a;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/e;-><init>(Lcom/facebook/cache/disk/d;Lcom/facebook/cache/disk/h;Lcom/facebook/cache/disk/e$c;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lm0/b;Ljava/util/concurrent/Executor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/disk/e;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/e$a;->a:Lcom/facebook/cache/disk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e$a;->a:Lcom/facebook/cache/disk/e;

    invoke-static {v0}, Lcom/facebook/cache/disk/e;->l(Lcom/facebook/cache/disk/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cache/disk/e$a;->a:Lcom/facebook/cache/disk/e;

    invoke-static {v1}, Lcom/facebook/cache/disk/e;->m(Lcom/facebook/cache/disk/e;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/facebook/cache/disk/e$a;->a:Lcom/facebook/cache/disk/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/cache/disk/e;->n(Lcom/facebook/cache/disk/e;Z)Z

    .line 5
    iget-object v0, p0, Lcom/facebook/cache/disk/e$a;->a:Lcom/facebook/cache/disk/e;

    invoke-static {v0}, Lcom/facebook/cache/disk/e;->o(Lcom/facebook/cache/disk/e;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
