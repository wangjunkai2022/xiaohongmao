.class public Lcom/facebook/drawee/view/a;
.super Ljava/lang/Object;
.source "AspectRatioMeasure.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/view/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutDimension"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Lcom/facebook/drawee/view/a$a;FLandroid/view/ViewGroup$LayoutParams;II)V
    .locals 2
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "spec",
            "aspectRatio",
            "layoutParams",
            "widthPadding",
            "heightPadding"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Lcom/facebook/drawee/view/a;->a(I)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 2
    iget p2, p0, Lcom/facebook/drawee/view/a$a;->a:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, p1

    int-to-float p1, p4

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 3
    iget p2, p0, Lcom/facebook/drawee/view/a$a;->b:I

    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 4
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/facebook/drawee/view/a$a;->b:I

    goto :goto_0

    .line 5
    :cond_1
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2}, Lcom/facebook/drawee/view/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget p2, p0, Lcom/facebook/drawee/view/a$a;->b:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    sub-int/2addr p2, p4

    int-to-float p2, p2

    mul-float p2, p2, p1

    int-to-float p1, p3

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 7
    iget p2, p0, Lcom/facebook/drawee/view/a$a;->a:I

    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 8
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/facebook/drawee/view/a$a;->a:I

    :cond_2
    :goto_0
    return-void
.end method
