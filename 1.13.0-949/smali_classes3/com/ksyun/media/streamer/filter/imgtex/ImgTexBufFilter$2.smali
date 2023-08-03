.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;
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
        "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->f(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v2

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    .line 12
    invoke-static {v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v3

    iget v3, v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget-object v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v4}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v4

    iget v4, v4, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->doFilter(Ljava/nio/ByteBuffer;[III)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v1, p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFrame;Ljava/nio/ByteBuffer;)V

    .line 16
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget-object v3, v2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    iget v4, v2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget v2, v2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->doFilter(Ljava/nio/ByteBuffer;[III)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDisconnect(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->f(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    new-array v6, v0, [I

    const/4 v0, 0x0

    .line 6
    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    aput v1, v6, v0

    const/4 v0, 0x1

    .line 7
    div-int/lit8 v2, v1, 0x2

    aput v2, v6, v0

    const/4 v0, 0x2

    .line 8
    div-int/2addr v1, v0

    aput v1, v6, v0

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    new-instance v7, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->f(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)I

    move-result v2

    iget v3, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget v4, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iget v5, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->orientation:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;-><init>(IIII[I)V

    invoke-static {v0, v7}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v0

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v1

    iget v1, v1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;

    invoke-static {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object v2

    iget v2, v2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->onSizeChanged([III)V

    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;->a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V

    return-void
.end method
