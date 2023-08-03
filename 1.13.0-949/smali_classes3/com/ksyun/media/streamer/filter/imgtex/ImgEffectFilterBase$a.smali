.class Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;
.super Ljava/lang/Object;
.source "ImgEffectFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:[I

.field b:Ljava/lang/String;

.field c:I

.field final synthetic d:Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p1, v0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->a:[I

    .line 3
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->c:I

    .line 4
    iput-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->b:Ljava/lang/String;

    return-void
.end method
