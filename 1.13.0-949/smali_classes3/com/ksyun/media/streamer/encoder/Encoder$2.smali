.class Lcom/ksyun/media/streamer/encoder/Encoder$2;
.super Ljava/lang/Object;
.source "Encoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/Encoder;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/ksyun/media/streamer/encoder/Encoder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/Encoder;II)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$2;->c:Lcom/ksyun/media/streamer/encoder/Encoder;

    iput p2, p0, Lcom/ksyun/media/streamer/encoder/Encoder$2;->a:I

    iput p3, p0, Lcom/ksyun/media/streamer/encoder/Encoder$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$2;->c:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->b(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/encoder/Encoder$EncoderInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$2;->c:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->b(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/encoder/Encoder$EncoderInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$2;->c:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget v2, p0, Lcom/ksyun/media/streamer/encoder/Encoder$2;->a:I

    iget v3, p0, Lcom/ksyun/media/streamer/encoder/Encoder$2;->b:I

    invoke-interface {v0, v1, v2, v3}, Lcom/ksyun/media/streamer/encoder/Encoder$EncoderInfoListener;->onInfo(Lcom/ksyun/media/streamer/encoder/Encoder;II)V

    :cond_0
    return-void
.end method
