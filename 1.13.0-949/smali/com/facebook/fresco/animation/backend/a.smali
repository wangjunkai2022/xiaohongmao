.class public interface abstract Lcom/facebook/fresco/animation/backend/a;
.super Ljava/lang/Object;
.source "AnimationBackend.java"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/d;


# static fields
.field public static final a:I = -0x1


# virtual methods
.method public abstract b()I
.end method

.method public abstract clear()V
.end method

.method public abstract d()I
.end method

.method public abstract e(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation
.end method

.method public abstract f()I
.end method

.method public abstract g(Landroid/graphics/ColorFilter;)V
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation
.end method

.method public abstract h(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "canvas",
            "frameNumber"
        }
    .end annotation
.end method

.method public abstract k(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation
.end method
