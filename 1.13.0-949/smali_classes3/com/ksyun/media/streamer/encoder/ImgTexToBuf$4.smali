.class Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$4;
.super Ljava/lang/Object;
.source "ImgTexToBuf.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$4;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$4;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(Landroid/media/ImageReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$4;->a:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;I)V

    :goto_0
    return-void
.end method
