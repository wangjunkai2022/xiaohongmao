.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;
.super Ljava/lang/Object;
.source "ImgTexPreview.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;


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

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    const/16 v1, 0x4000

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    .line 4
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    .line 10
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_1
    return-void
.end method
