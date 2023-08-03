.class Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter$1;
.super Ljava/lang/Object;
.source "ImgBeautyToneCurveFilter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;->e([Landroid/graphics/PointF;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/graphics/PointF;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyToneCurveFilter$1;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result p1

    return p1
.end method
