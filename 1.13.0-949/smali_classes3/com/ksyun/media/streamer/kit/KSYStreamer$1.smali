.class Lcom/ksyun/media/streamer/kit/KSYStreamer$1;
.super Ljava/lang/Object;
.source "KSYStreamer.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/kit/KSYStreamer;->initModules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/kit/KSYStreamer;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$1;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$1;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object v1, v0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    iget-object v0, v0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getEGL10Context()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->setEGL10Context(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method
