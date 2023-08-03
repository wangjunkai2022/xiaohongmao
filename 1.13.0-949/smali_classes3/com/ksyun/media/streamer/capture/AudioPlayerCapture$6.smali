.class Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;
.super Ljava/lang/Object;
.source "AudioPlayerCapture.java"

# interfaces
.implements Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPCMAvailable(Lcom/ksyun/media/player/IMediaPlayer;Ljava/nio/ByteBuffer;JIII)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->j(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Z)Z

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->k(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    .line 4
    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;

    move-result-object p1

    instance-of p1, p1, Lcom/ksyun/media/streamer/filter/audio/c;

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    .line 5
    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->k(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    .line 6
    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;

    move-result-object p1

    instance-of p1, p1, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    if-eqz p1, :cond_5

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->l(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 8
    new-instance p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->l(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {p1, v2, v1, v3, v4}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 9
    iget v2, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    iput v2, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 10
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    iget-object v2, v2, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v2, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;

    move-result-object p1

    .line 12
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v2, v1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Lcom/ksyun/media/streamer/filter/audio/d;)Lcom/ksyun/media/streamer/filter/audio/d;

    .line 13
    invoke-interface {p1}, Lcom/ksyun/media/streamer/filter/audio/d;->c()I

    .line 14
    invoke-interface {p1}, Lcom/ksyun/media/streamer/filter/audio/d;->f()V

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->k(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 16
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;-><init>()V

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Lcom/ksyun/media/streamer/filter/audio/d;)Lcom/ksyun/media/streamer/filter/audio/d;

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/c;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/c;-><init>()V

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Lcom/ksyun/media/streamer/filter/audio/d;)Lcom/ksyun/media/streamer/filter/audio/d;

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->m(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/ksyun/media/streamer/filter/audio/d;->b(Z)V

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1, v1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 20
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->l(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p1

    if-nez p1, :cond_6

    .line 22
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->n(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p6}, Lcom/ksyun/media/streamer/util/audio/a;->a(Landroid/content/Context;I)I

    move-result p1

    .line 23
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;

    move-result-object v0

    const/16 v1, 0x28

    invoke-interface {v0, p6, p5, p1, v1}, Lcom/ksyun/media/streamer/filter/audio/d;->a(IIII)I

    .line 24
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/ksyun/media/streamer/filter/audio/d;->b()I

    .line 25
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-direct {v0, p7, p6, p5}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(III)V

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 26
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->o(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p1

    iget-object p6, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p6}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->l(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p6

    invoke-virtual {p1, p6}, Lcom/ksyun/media/streamer/framework/SinkPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p6

    add-int/2addr p1, p6

    .line 28
    iget-object p6, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p6}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p6

    if-ge p6, p1, :cond_7

    .line 29
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "expand buffer to "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, " bytes"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string p7, "AudioPlayerCapture"

    invoke-static {p7, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 31
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    iget-object p6, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p6}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 33
    iget-object p6, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p6, p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 34
    :cond_7
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 35
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    mul-int/lit16 p5, p5, 0x800

    if-lt p1, p5, :cond_8

    .line 36
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 37
    new-instance p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->l(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p2

    iget-object p5, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p5}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object p5

    invoke-direct {p1, p2, p5, p3, p4}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 38
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p2}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->o(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 39
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_8
    return-void
.end method
