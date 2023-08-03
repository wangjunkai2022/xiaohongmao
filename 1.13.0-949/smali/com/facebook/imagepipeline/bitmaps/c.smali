.class public Lcom/facebook/imagepipeline/bitmaps/c;
.super Lcom/facebook/imagepipeline/bitmaps/f;
.source "GingerbreadBitmapFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/bitmaps/f;-><init>()V

    return-void
.end method


# virtual methods
.method public z(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "bitmapConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/h;->a()Lcom/facebook/imagepipeline/bitmaps/h;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/common/references/a;->G(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method
