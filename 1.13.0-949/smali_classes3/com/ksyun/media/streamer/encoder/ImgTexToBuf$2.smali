.class Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$2;
.super Ljava/lang/Object;
.source "ImgTexToBuf.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;I)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$2;->b:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iput p2, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$2;->b:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$2;->b:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$2;->b:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget v2, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$2;->a:I

    invoke-interface {v0, v1, v2}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;->onError(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;I)V

    :cond_0
    return-void
.end method
