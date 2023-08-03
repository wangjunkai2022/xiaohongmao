.class Lcom/ksyun/media/streamer/decoder/Decoder$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/decoder/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "TI;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/decoder/Decoder;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/decoder/Decoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder$a;->a:Lcom/ksyun/media/streamer/decoder/Decoder;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/decoder/Decoder;Lcom/ksyun/media/streamer/decoder/Decoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/decoder/Decoder$a;-><init>(Lcom/ksyun/media/streamer/decoder/Decoder;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder$a;->a:Lcom/ksyun/media/streamer/decoder/Decoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/decoder/Decoder;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)I

    return-void
.end method

.method public onDisconnect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder$a;->a:Lcom/ksyun/media/streamer/decoder/Decoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/decoder/Decoder;->release()V

    :cond_0
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder$a;->a:Lcom/ksyun/media/streamer/decoder/Decoder;

    iget v1, v0, Lcom/ksyun/media/streamer/decoder/Decoder;->b:I

    if-nez v1, :cond_1

    .line 2
    iput-object p1, v0, Lcom/ksyun/media/streamer/decoder/Decoder;->c:Ljava/lang/Object;

    .line 3
    instance-of v1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 4
    iput v1, v0, Lcom/ksyun/media/streamer/decoder/Decoder;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput v1, v0, Lcom/ksyun/media/streamer/decoder/Decoder;->b:I

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/decoder/Decoder;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder$a;->a:Lcom/ksyun/media/streamer/decoder/Decoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/decoder/Decoder;->getAutoWork()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder$a;->a:Lcom/ksyun/media/streamer/decoder/Decoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/decoder/Decoder;->start()V

    :cond_2
    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/decoder/Decoder$a;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    return-void
.end method
