.class public Lcom/facebook/imagepipeline/bitmaps/h;
.super Ljava/lang/Object;
.source "SimpleBitmapReleaser.java"

# interfaces
.implements Lcom/facebook/common/references/h;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/h<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/facebook/imagepipeline/bitmaps/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/bitmaps/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/h;->a:Lcom/facebook/imagepipeline/bitmaps/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/h;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/bitmaps/h;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/bitmaps/h;->a:Lcom/facebook/imagepipeline/bitmaps/h;

    .line 3
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/h;->a:Lcom/facebook/imagepipeline/bitmaps/h;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/bitmaps/h;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
