.class public abstract Lcom/ksyun/media/streamer/filter/imgtex/RGBABufFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;
.source "RGBABufFilter.java"


# static fields
.field private static final a:Ljava/lang/String; = "RGBABufFilter"


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;I)V

    return-void
.end method


# virtual methods
.method protected abstract doFilter(Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;
.end method

.method protected doFilter(Ljava/nio/ByteBuffer;[III)Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    aget p2, p2, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/filter/imgtex/RGBABufFilter;->doFilter(Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onSizeChanged(III)V
.end method

.method protected onSizeChanged([III)V
    .locals 1

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ksyun/media/streamer/filter/imgtex/RGBABufFilter;->onSizeChanged(III)V

    return-void
.end method
