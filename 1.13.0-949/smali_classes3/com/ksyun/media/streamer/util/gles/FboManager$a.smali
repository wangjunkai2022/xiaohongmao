.class Lcom/ksyun/media/streamer/util/gles/FboManager$a;
.super Ljava/lang/Object;
.source "FboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/util/gles/FboManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field final synthetic e:Lcom/ksyun/media/streamer/util/gles/FboManager;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/FboManager;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->e:Lcom/ksyun/media/streamer/util/gles/FboManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->a:I

    .line 3
    iput p3, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->b:I

    .line 4
    iput p4, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->c:I

    .line 5
    iput p5, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->d:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->f:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->f:I
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

.method public declared-synchronized c()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3
    :try_start_1
    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->f:I

    .line 4
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/FboManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->f:I

    if-nez v0, :cond_1

    const-string v0, "FboManager"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fbo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " released"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
