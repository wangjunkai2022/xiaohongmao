.class Lcom/ksyun/media/streamer/encoder/Encoder$3;
.super Ljava/lang/Object;
.source "Encoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/Encoder;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ksyun/media/streamer/encoder/Encoder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/Encoder;I)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$3;->b:Lcom/ksyun/media/streamer/encoder/Encoder;

    iput p2, p0, Lcom/ksyun/media/streamer/encoder/Encoder$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$3;->b:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$3;->a:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->reportError(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$3;->a:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->reportError(II)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$3;->b:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->c(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$3;->b:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->c(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$3;->b:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget v2, p0, Lcom/ksyun/media/streamer/encoder/Encoder$3;->a:I

    invoke-interface {v0, v1, v2}, Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;->onError(Lcom/ksyun/media/streamer/encoder/Encoder;I)V

    :cond_2
    return-void
.end method
