.class Lcom/ksyun/media/streamer/capture/CameraCapture$1;
.super Landroid/os/Handler;
.source "CameraCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/CameraCapture;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/CameraCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/CameraCapture;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xb

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v2, :cond_7

    const/4 v5, 0x3

    if-eq p1, v3, :cond_5

    if-eq p1, v5, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->h(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->d(Lcom/ksyun/media/streamer/capture/CameraCapture;)V

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->e(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->f(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;I)I

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->b(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result p1

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 17
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->d(Lcom/ksyun/media/streamer/capture/CameraCapture;)V

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 20
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->g(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_1

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_9

    .line 23
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 24
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->b(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result p1

    if-nez p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 26
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 27
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 28
    :cond_8
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 29
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$1;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    :goto_1
    return-void
.end method
