.class Lcom/yalantis/ucrop/e$c;
.super Ljava/lang/Object;
.source "UCropFragment.java"

# interfaces
.implements Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/e;->y0(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/yalantis/ucrop/e$c;->a:Lcom/yalantis/ucrop/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/e$c;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->A()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/e$c;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->u()V

    return-void
.end method

.method public c(FF)V
    .locals 1

    iget-object p2, p0, Lcom/yalantis/ucrop/e$c;->a:Lcom/yalantis/ucrop/e;

    invoke-static {p2}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p2

    const/high16 v0, 0x42280000    # 42.0f

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/yalantis/ucrop/view/CropImageView;->y(F)V

    return-void
.end method
