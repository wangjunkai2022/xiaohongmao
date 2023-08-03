.class Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$b;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b()Lcom/facebook/imagepipeline/decoder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$b;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/j;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/image/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "length",
            "qualityInfo",
            "options"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$b;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    invoke-static {p2}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lcom/facebook/imagepipeline/animated/factory/d;

    move-result-object p2

    iget-object p3, p4, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    .line 2
    invoke-interface {p2, p1, p4, p3}, Lcom/facebook/imagepipeline/animated/factory/d;->b(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;

    move-result-object p1

    return-object p1
.end method
