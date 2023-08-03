.class public Lscreenstreamer/kit/a;
.super Ljava/lang/Object;
.source "AudioInputBase.java"

# interfaces
.implements Lscreenstreamer/kit/c;


# static fields
.field private static final d:Ljava/lang/String; = "AudioInputBase"


# instance fields
.field private a:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private c:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v0, p0, Lscreenstreamer/kit/a;->a:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;JIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/a;->b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-direct {v0, p6, p5, p4}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(III)V

    iput-object v0, p0, Lscreenstreamer/kit/a;->b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 3
    iget-object p4, p0, Lscreenstreamer/kit/a;->a:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p4, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p4

    if-nez p4, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p4

    .line 6
    iget-object p5, p0, Lscreenstreamer/kit/a;->c:Ljava/nio/ByteBuffer;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p5

    if-ge p5, p4, :cond_3

    .line 7
    :cond_2
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    iput-object p4, p0, Lscreenstreamer/kit/a;->c:Ljava/nio/ByteBuffer;

    .line 8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 9
    :cond_3
    iget-object p4, p0, Lscreenstreamer/kit/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    iget-object p4, p0, Lscreenstreamer/kit/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    iget-object p1, p0, Lscreenstreamer/kit/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    iget-object p1, p0, Lscreenstreamer/kit/a;->c:Ljava/nio/ByteBuffer;

    .line 13
    :cond_4
    new-instance p4, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    iget-object p5, p0, Lscreenstreamer/kit/a;->b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-direct {p4, p5, p1, p2, p3}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 14
    iget-object p1, p0, Lscreenstreamer/kit/a;->a:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1, p4}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method

.method public b()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lscreenstreamer/kit/a;->a:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method
