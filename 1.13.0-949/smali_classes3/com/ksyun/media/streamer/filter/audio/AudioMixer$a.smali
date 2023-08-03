.class Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "AudioMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/audio/AudioMixer;
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
.field final synthetic a:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/filter/audio/AudioMixer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->a(ILcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    return-void
.end method

.method public onDisconnect(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onDisconnect(Z)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->a(IZ)V

    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;->b:I

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->a(ILcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;->a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    return-void
.end method
