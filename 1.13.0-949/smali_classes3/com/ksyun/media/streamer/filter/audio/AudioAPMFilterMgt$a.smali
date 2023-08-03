.class Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "AudioAPMFilterMgt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;-><init>(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->c(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method

.method public onDisconnect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->release()V

    :cond_0
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 2
    iget v1, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    const/16 v2, 0x1f40

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3e80

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d00

    if-eq v1, v2, :cond_1

    const v2, 0xbb80

    if-eq v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    new-instance v4, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    invoke-direct {v4, v3, v2, v0}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(III)V

    invoke-static {v1, v4}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->a(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    new-instance v4, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    invoke-direct {v4, v3, v1, v0}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(III)V

    invoke-static {v2, v4}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->a(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->b(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;)Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->a(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->setOutFormat(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->c(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;->a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    return-void
.end method
