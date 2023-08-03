.class Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;
.super Landroid/os/Handler;
.source "ImgTexToBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->c(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)V

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->d(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_2

    .line 4
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    const/4 v0, -0x2

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    throw p1

    .line 7
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 8
    :catch_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;I)V

    :goto_2
    return-void
.end method
