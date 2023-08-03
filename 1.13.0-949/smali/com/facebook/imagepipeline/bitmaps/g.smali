.class public Lcom/facebook/imagepipeline/bitmaps/g;
.super Ljava/lang/Object;
.source "PlatformBitmapFactoryProvider.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/e0;Lcom/facebook/imagepipeline/platform/d;Lcom/facebook/imagepipeline/core/a;)Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "poolFactory",
            "platformDecoder",
            "closeableReferenceFactory"
        }
    .end annotation

    new-instance p1, Lcom/facebook/imagepipeline/bitmaps/a;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/e0;->b()Lcom/facebook/imagepipeline/memory/e;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lcom/facebook/imagepipeline/bitmaps/a;-><init>(Lcom/facebook/imagepipeline/memory/e;Lcom/facebook/imagepipeline/core/a;)V

    return-object p1
.end method
