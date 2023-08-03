.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$2;
.super Ljava/lang/Object;
.source "ImgTexFilterBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->sendError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;I)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$2;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$2;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    iget-object v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mErrorListener:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    if-eqz v1, :cond_0

    .line 2
    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$2;->a:I

    invoke-interface {v1, v0, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;->onError(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;I)V

    :cond_0
    return-void
.end method
