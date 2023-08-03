.class Lcom/ksyun/media/player/KSYMediaRecorder$1;
.super Ljava/lang/Object;
.source "KSYMediaRecorder.java"

# interfaces
.implements Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYMediaRecorder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/KSYMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$1;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoRawDataAvailable(Lcom/ksyun/media/player/IMediaPlayer;[BIIIIJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$1;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {p1, p2, p7, p8}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaRecorder;[BJ)V

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$1;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$1;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$1;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/player/KSYMediaPlayer;

    .line 4
    invoke-virtual {p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->addVideoRawBuffer([B)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$1;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYMediaRecorder;->b(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/lang/Thread;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$1;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/ksyun/media/player/KSYMediaRecorder$b;

    iget-object p4, p0, Lcom/ksyun/media/player/KSYMediaRecorder$1;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    const/4 p5, 0x1

    const/4 p6, 0x0

    invoke-direct {p3, p4, p4, p5, p6}, Lcom/ksyun/media/player/KSYMediaRecorder$b;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;Lcom/ksyun/media/player/KSYMediaRecorder;ZZ)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, p2}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaRecorder;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$1;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {p1}, Lcom/ksyun/media/player/KSYMediaRecorder;->b(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
