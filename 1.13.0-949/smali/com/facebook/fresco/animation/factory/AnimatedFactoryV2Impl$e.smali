.class Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->i()Lcom/facebook/imagepipeline/animated/impl/b;
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

    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;
    .locals 3
    .param p2    # Landroid/graphics/Rect;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animatedImageResult",
            "bounds"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/a;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 2
    invoke-static {v1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Ll1/a;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 3
    invoke-static {v2}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Z

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/facebook/imagepipeline/animated/impl/a;-><init>(Ll1/a;Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;Z)V

    return-object v0
.end method
