.class Lcom/ksyun/media/streamer/kit/KSYStreamer$8;
.super Ljava/lang/Object;
.source "KSYStreamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/kit/KSYStreamer;->autoRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/kit/KSYStreamer;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$8;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$8;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$300(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$8;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$400(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$8;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startStream()Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
