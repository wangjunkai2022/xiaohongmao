.class public interface abstract Lt0/b;
.super Ljava/lang/Object;
.source "WebpBitmapFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/b$a;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .param p2    # Landroid/graphics/Rect;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/BitmapFactory$Options;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "outPadding",
            "opts"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract b(Lt0/b$a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logger"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pathName",
            "opts"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract d(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .param p2    # Landroid/graphics/Rect;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/BitmapFactory$Options;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fd",
            "outPadding",
            "opts"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract e(Lt0/a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitmapCreator"
        }
    .end annotation
.end method

.method public abstract f([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .param p4    # Landroid/graphics/BitmapFactory$Options;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "offset",
            "length",
            "opts"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method
