.class Lcom/ksyun/media/streamer/framework/PinAdapter$1;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "PinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/framework/PinAdapter;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/framework/PinAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/PinAdapter$1;->a:Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnect(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onDisconnect(Z)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/PinAdapter$1;->a:Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/PinAdapter;->onDisconnect(Z)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/framework/PinAdapter$1;->a:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    :cond_0
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/PinAdapter$1;->a:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/PinAdapter$1;->a:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method
