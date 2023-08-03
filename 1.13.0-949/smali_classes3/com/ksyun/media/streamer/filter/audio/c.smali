.class public Lcom/ksyun/media/streamer/filter/audio/c;
.super Ljava/lang/Object;
.source "AudioTrackPlayer.java"

# interfaces
.implements Lcom/ksyun/media/streamer/filter/audio/d;


# instance fields
.field private a:Landroid/media/AudioTrack;

.field private b:[S

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(IIII)I
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/media/AudioTrack;->release()V

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    const/4 p2, 0x4

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/16 p2, 0xc

    const/16 v3, 0xc

    :goto_0
    const/4 p2, 0x2

    .line 3
    invoke-static {p1, v3, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 4
    new-instance p2, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object v0, p2

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p2, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    .line 5
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/c;->c:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p2, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 7
    :cond_2
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/c;->d:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 p1, 0x0

    .line 9
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/nio/ByteBuffer;)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 12
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/c;->b:[S

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ge v2, v1, :cond_2

    .line 13
    :cond_1
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/c;->b:[S

    .line 14
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/c;->b:[S

    invoke-virtual {p1, v2, v0, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/c;->b:[S

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/AudioTrack;->write([SII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 16
    :cond_3
    :goto_0
    monitor-exit p0

    return v0
.end method

.method public a()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 3
    :cond_1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/c;->d:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/c;->b:[S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 3
    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/c;->a:Landroid/media/AudioTrack;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/c;->b:[S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
