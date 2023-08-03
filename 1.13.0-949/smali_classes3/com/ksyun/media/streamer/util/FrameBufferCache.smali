.class public Lcom/ksyun/media/streamer/util/FrameBufferCache;
.super Ljava/lang/Object;
.source "FrameBufferCache.java"


# static fields
.field private static final a:Ljava/lang/String; = "FrameBufferCache"

.field private static final b:Z = false


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->c:I

    .line 3
    iput p2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->d:I

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->e:I

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->f:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->f:Ljava/util/concurrent/BlockingQueue;

    .line 7
    :goto_0
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public add(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->a(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public offer(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->a(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-string p1, "FrameBufferCache"

    const-string v1, "offered extra invalid buffer!"

    .line 5
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public poll(I)Ljava/nio/ByteBuffer;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->poll(IJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public poll(IJ)Ljava/nio/ByteBuffer;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->c:I

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->e:I

    if-ge v2, v0, :cond_2

    .line 3
    :cond_0
    iget p2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->d:I

    if-le p1, p2, :cond_1

    :goto_0
    mul-int/lit8 p2, p2, 0x2

    if-ge p2, p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 5
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6
    iget p3, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->e:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->e:I

    goto :goto_1

    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_3

    .line 7
    :try_start_0
    iget-object p2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, "FrameBufferCache"

    const-string p3, "get cache buffer interrupted"

    .line 9
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    .line 10
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    if-le p1, p3, :cond_5

    .line 11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    :goto_2
    mul-int/lit8 p3, p3, 0x2

    if-ge p3, p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "FrameBufferCache"

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realloc buffer size from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 14
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object p2, p1

    .line 15
    :cond_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    monitor-enter p1

    .line 17
    :try_start_1
    iget-object p3, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public ref(Ljava/nio/ByteBuffer;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->a(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v1, "FrameBufferCache"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to ref unknown ByteBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->a(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 7
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public take(I)Ljava/nio/ByteBuffer;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->poll(IJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public unref(Ljava/nio/ByteBuffer;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->a(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v1, "FrameBufferCache"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to unref unknown ByteBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->a(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return p1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->offer(Ljava/nio/ByteBuffer;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/FrameBufferCache;->g:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    const/4 p1, 0x1

    .line 9
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
