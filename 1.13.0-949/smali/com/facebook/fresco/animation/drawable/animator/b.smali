.class public Lcom/facebook/fresco/animation/drawable/animator/b;
.super Ljava/lang/Object;
.source "AnimatedDrawableValueAnimatorHelper.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "drawable"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/facebook/fresco/animation/drawable/a;

    invoke-static {p0}, Lcom/facebook/fresco/animation/drawable/animator/a;->a(Lcom/facebook/fresco/animation/drawable/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/facebook/fresco/animation/drawable/a;

    invoke-static {p0}, Lcom/facebook/fresco/animation/drawable/animator/a;->b(Lcom/facebook/fresco/animation/drawable/a;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;I)Landroid/animation/ValueAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "maxDurationMs"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/facebook/fresco/animation/drawable/a;

    invoke-static {p0, p1}, Lcom/facebook/fresco/animation/drawable/animator/a;->c(Lcom/facebook/fresco/animation/drawable/a;I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
