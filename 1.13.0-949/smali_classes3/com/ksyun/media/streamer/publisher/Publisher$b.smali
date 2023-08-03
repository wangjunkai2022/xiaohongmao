.class Lcom/ksyun/media/streamer/publisher/Publisher$b;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "Publisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/publisher/Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "Lcom/ksyun/media/streamer/framework/ImgPacket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/publisher/Publisher;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/publisher/Publisher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$b;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/publisher/Publisher;Lcom/ksyun/media/streamer/publisher/Publisher$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher$b;-><init>(Lcom/ksyun/media/streamer/publisher/Publisher;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/ImgPacket;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$b;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->handleAVFrame(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    return-void
.end method

.method public onDisconnect(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$b;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-boolean v0, p1, Lcom/ksyun/media/streamer/publisher/Publisher;->mIsVideoOnly:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->release()V

    :cond_0
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$b;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->a(Lcom/ksyun/media/streamer/publisher/Publisher;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgPacket;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher$b;->a(Lcom/ksyun/media/streamer/framework/ImgPacket;)V

    return-void
.end method
