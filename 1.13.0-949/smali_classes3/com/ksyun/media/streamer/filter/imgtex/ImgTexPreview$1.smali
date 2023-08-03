.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;
.super Ljava/lang/Object;
.source "ImgTexPreview.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 2

    const-string v0, "ImgTexPreview"

    const-string v1, "onReady"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;I)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->requestRender()V

    :cond_0
    return-void
.end method
