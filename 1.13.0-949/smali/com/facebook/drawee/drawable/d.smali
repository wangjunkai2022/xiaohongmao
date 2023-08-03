.class public interface abstract Lcom/facebook/drawee/drawable/d;
.super Ljava/lang/Object;
.source "DrawableParent.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newDrawable"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract s()Landroid/graphics/drawable/Drawable;
    .annotation runtime Lr7/h;
    .end annotation
.end method
