.class Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "AudioFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;
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
.field final synthetic a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;-><init>(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V
    .locals 7

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-wide v0, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    const-string v2, "AudioFilterBase"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getNativeInstance()J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_6

    .line 3
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->d(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)J

    move-result-wide v3

    iget-object v5, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;J)J

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->d(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)J

    move-result-wide v3

    iget v1, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    mul-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    div-long/2addr v3, v5

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    .line 7
    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v1

    iget v1, v1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    int-to-long v5, v1

    mul-long v3, v3, v5

    iget v0, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    mul-long v3, v3, v0

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->e(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)J

    move-result-wide v0

    sub-long/2addr v3, v0

    long-to-int v0, v3

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->e(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;J)J

    .line 10
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->f(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->f(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->f(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->f(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 16
    :cond_3
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v3, v1, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->readNative(Ljava/nio/ByteBuffer;I)I

    move-result v0

    if-gtz v0, :cond_4

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " readNative failed ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_4
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    .line 19
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 20
    iput-object v1, v0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_5
    move-object v0, p1

    .line 21
    :goto_0
    iget v1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 22
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget-wide v3, v3, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->attachTo(IJZ)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "input frame must use direct ByteBuffer"

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->doFilter(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, p1

    :cond_9
    :goto_1
    if-nez v0, :cond_a

    return-void

    :cond_a
    if-ne v0, p1, :cond_b

    .line 27
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    .line 28
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p1

    iput-object p1, v0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 29
    :cond_b
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->c(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public onDisconnect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->release()V

    :cond_0
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doFormatChanged nativeModule="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v0

    iget-wide v0, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFilterBase"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p1

    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getNativeInstance()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v0

    iget-wide v0, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v1, v4}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->attachTo(IJZ)V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getOutFormat()Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    new-instance v1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-direct {v1, p1}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getNativeInstance()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1, v2, v3}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;J)J

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1, v2, v3}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;J)J

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->doFormatChanged(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object p1

    iput-wide v2, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    .line 16
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->c(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;->a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    return-void
.end method
