.class public Lcom/bumptech/glide/load/engine/cache/e;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/a;


# static fields
.field private static final f:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final g:I = 0x1

.field private static final h:I = 0x1

.field private static i:Lcom/bumptech/glide/load/engine/cache/e;


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/cache/m;

.field private final b:Ljava/io/File;

.field private final c:J

.field private final d:Lcom/bumptech/glide/load/engine/cache/c;

.field private e:Lcom/bumptech/glide/disklrucache/a;


# direct methods
.method protected constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->d:Lcom/bumptech/glide/load/engine/cache/c;

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->b:Ljava/io/File;

    .line 4
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/cache/e;->c:J

    .line 5
    new-instance p1, Lcom/bumptech/glide/load/engine/cache/m;

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/cache/m;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->a:Lcom/bumptech/glide/load/engine/cache/m;

    return-void
.end method

.method public static d(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/a;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/cache/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/e;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method public static declared-synchronized e(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/engine/cache/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/engine/cache/e;->i:Lcom/bumptech/glide/load/engine/cache/e;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/e;-><init>(Ljava/io/File;J)V

    sput-object v1, Lcom/bumptech/glide/load/engine/cache/e;->i:Lcom/bumptech/glide/load/engine/cache/e;

    .line 3
    :cond_0
    sget-object p0, Lcom/bumptech/glide/load/engine/cache/e;->i:Lcom/bumptech/glide/load/engine/cache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized f()Lcom/bumptech/glide/disklrucache/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->e:Lcom/bumptech/glide/disklrucache/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->b:Ljava/io/File;

    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/cache/e;->c:J

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lcom/bumptech/glide/disklrucache/a;->b0(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->e:Lcom/bumptech/glide/disklrucache/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->e:Lcom/bumptech/glide/disklrucache/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->e:Lcom/bumptech/glide/disklrucache/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/cache/a$b;)V
    .locals 4

    const-string v0, "DiskLruCacheWrapper"

    .line 1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/e;->a:Lcom/bumptech/glide/load/engine/cache/m;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/cache/m;->b(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/e;->d:Lcom/bumptech/glide/load/engine/cache/c;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/cache/c;->a(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 3
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->f()Lcom/bumptech/glide/disklrucache/a;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/disklrucache/a;->K(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/a$e;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->d:Lcom/bumptech/glide/load/engine/cache/c;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/c;->b(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    :try_start_2
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/disklrucache/a;->H(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/a$c;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 9
    :try_start_3
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/disklrucache/a$c;->f(I)Ljava/io/File;

    move-result-object v2

    .line 10
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/cache/a$b;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/a$c;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/a$c;->b()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/a$c;->b()V

    throw p2

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had two simultaneous puts for: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    .line 14
    :try_start_5
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Unable to put to disk cache"

    .line 15
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 16
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->d:Lcom/bumptech/glide/load/engine/cache/c;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/c;->b(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/cache/e;->d:Lcom/bumptech/glide/load/engine/cache/c;

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/load/engine/cache/c;->b(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/bumptech/glide/load/c;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->a:Lcom/bumptech/glide/load/engine/cache/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/m;->b(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->f()Lcom/bumptech/glide/disklrucache/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/disklrucache/a;->K(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/a$e;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/disklrucache/a$e;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Unable to get from disk cache"

    .line 7
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public c(Lcom/bumptech/glide/load/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->a:Lcom/bumptech/glide/load/engine/cache/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/m;->b(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->f()Lcom/bumptech/glide/disklrucache/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/disklrucache/a;->n0(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "DiskLruCacheWrapper"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to delete from disk cache"

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->f()Lcom/bumptech/glide/disklrucache/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/a;->E()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache or disk cache cleared externally"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5
    :goto_1
    monitor-exit p0

    return-void

    .line 6
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->g()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
