.class Lcom/yalantis/ucrop/e$f;
.super Ljava/lang/Object;
.source "UCropFragment.java"

# interfaces
.implements Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/e;->z0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yalantis/ucrop/e;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/e;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->A()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->u()V

    return-void
.end method

.method public c(FF)V
    .locals 4

    const p2, 0x466a6000    # 15000.0f

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v1}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    .line 2
    invoke-static {v2}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v2

    iget-object v3, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v3}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, p2

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    .line 3
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->D(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v1}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    .line 5
    invoke-static {v2}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v2

    iget-object v3, p0, Lcom/yalantis/ucrop/e$f;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v3}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, p2

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    .line 6
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->F(F)V

    :goto_0
    return-void
.end method
