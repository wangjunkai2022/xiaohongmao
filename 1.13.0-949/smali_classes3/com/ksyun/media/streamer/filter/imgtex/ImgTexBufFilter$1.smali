.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "ImgTexBufFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    move-result-object v0

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    move-result-object v0

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    const/4 v2, 0x0

    aget v2, p1, v2

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    .line 6
    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v3, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v4, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    iget-wide v5, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Ljava/nio/ByteBuffer;IIIJ)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    return-void
.end method

.method public onDisconnect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    move-result-object v0

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onDisconnect(Z)V

    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    move-result-object v0

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->reset()V

    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method
