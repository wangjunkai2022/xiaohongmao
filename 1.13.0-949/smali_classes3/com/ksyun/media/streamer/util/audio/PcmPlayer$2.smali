.class Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;
.super Ljava/lang/Object;
.source "PcmPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->playInternal([SII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[S

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;[SII)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    iput-object p2, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->a:[S

    iput p3, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->b:I

    iput p4, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$200(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$300(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    .line 3
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$400(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)I

    move-result v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$500(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)I

    move-result v2

    .line 4
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    new-instance v1, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$300(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)I

    move-result v5

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$400(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)I

    move-result v6

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    .line 6
    invoke-static {v2}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$500(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)I

    move-result v7

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 7
    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$202(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$200(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$200(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->a:[S

    iget v2, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->b:I

    iget v3, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([SII)I

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->d:Lcom/ksyun/media/streamer/util/audio/PcmPlayer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/audio/PcmPlayer;->access$600(Lcom/ksyun/media/streamer/util/audio/PcmPlayer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/audio/PcmPlayer$2;->a:[S

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
