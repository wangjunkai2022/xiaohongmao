.class Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$a;
.super Lcom/ksyun/media/streamer/framework/PinAdapter;
.source "VideoEncoderMgt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ksyun/media/streamer/framework/AVFrameBase;",
        ">",
        "Lcom/ksyun/media/streamer/framework/PinAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$a;->a:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$a;-><init>(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;)V

    return-void
.end method


# virtual methods
.method public onDisconnect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$a;->a:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->release()V

    :cond_0
    return-void
.end method
