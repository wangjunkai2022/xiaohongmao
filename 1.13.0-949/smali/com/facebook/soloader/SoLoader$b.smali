.class Lcom/facebook/soloader/SoLoader$b;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/SoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation build Ls7/c;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->d()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 3
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/facebook/soloader/SoLoader;->d:Lcom/facebook/soloader/u;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader$b;->c([Lcom/facebook/soloader/v;)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static b(Lcom/facebook/soloader/u;)V
    .locals 0

    sput-object p0, Lcom/facebook/soloader/SoLoader;->d:Lcom/facebook/soloader/u;

    return-void
.end method

.method static c([Lcom/facebook/soloader/v;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->a()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->b([Lcom/facebook/soloader/v;)[Lcom/facebook/soloader/v;

    .line 3
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->a()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/facebook/soloader/SoLoader;->a()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 5
    throw p0
.end method
