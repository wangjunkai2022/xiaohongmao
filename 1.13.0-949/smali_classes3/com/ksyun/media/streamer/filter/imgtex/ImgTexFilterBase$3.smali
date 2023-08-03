.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$3;
.super Ljava/lang/Object;
.source "ImgTexFilterBase.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mInited:Z

    const/4 v2, -0x1

    .line 2
    iput v2, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$3;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->onGLContextReady()V

    return-void
.end method
