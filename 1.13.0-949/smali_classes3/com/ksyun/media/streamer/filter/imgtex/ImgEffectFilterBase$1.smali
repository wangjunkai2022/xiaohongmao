.class Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;
.super Ljava/util/TimerTask;
.source "ImgEffectFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->startFilterTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;F)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;

    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;->a:F

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;->a:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setGradientFactorValue(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;I)I

    :cond_0
    return-void
.end method
