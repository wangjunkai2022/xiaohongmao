.class Lcom/ksyun/media/streamer/util/TimeDeltaUtil$1;
.super Landroid/os/Handler;
.source "TimeDeltaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$1;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "TimeDeltaUtil"

    const-string v0, "quit"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$1;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->d(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$1;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->c(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$1;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->b(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/TimeDeltaUtil$1;->a:Lcom/ksyun/media/streamer/util/TimeDeltaUtil;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/TimeDeltaUtil;->a(Lcom/ksyun/media/streamer/util/TimeDeltaUtil;)V

    :goto_0
    return-void
.end method
