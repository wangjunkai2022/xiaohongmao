.class Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "ImgTexToBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;-><init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-boolean v0, v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->e(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ImgTexToBuf"

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total dropped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object v1, v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total sent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object v1, v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->f(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/util/gles/FboManager;->lock(I)Z

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->e(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->e(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDisconnect(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onFormatChanged(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a:Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->e(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->e(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
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

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method
