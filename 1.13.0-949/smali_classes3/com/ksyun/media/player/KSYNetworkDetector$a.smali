.class Lcom/ksyun/media/player/KSYNetworkDetector$a;
.super Landroid/os/Handler;
.source "KSYNetworkDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYNetworkDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYNetworkDetector;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ksyun/media/player/KSYNetworkDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/KSYNetworkDetector;Lcom/ksyun/media/player/KSYNetworkDetector;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYNetworkDetector$a;->a:Lcom/ksyun/media/player/KSYNetworkDetector;

    .line 2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ksyun/media/player/KSYNetworkDetector$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/ksyun/media/player/KSYNetworkDetector$a;->a:Lcom/ksyun/media/player/KSYNetworkDetector;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYNetworkDetector;->access$000(Lcom/ksyun/media/player/KSYNetworkDetector;)Lcom/ksyun/media/player/KSYNetworkDetector$OnNetworkDetectionEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/ksyun/media/player/KSYNetworkDetector$a;->a:Lcom/ksyun/media/player/KSYNetworkDetector;

    invoke-static {v2}, Lcom/ksyun/media/player/KSYNetworkDetector;->access$000(Lcom/ksyun/media/player/KSYNetworkDetector;)Lcom/ksyun/media/player/KSYNetworkDetector$OnNetworkDetectionEventListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, p1, v0, v1}, Lcom/ksyun/media/player/KSYNetworkDetector$OnNetworkDetectionEventListener;->onNetworkDetectInfo(IID)V

    :cond_1
    return-void
.end method
