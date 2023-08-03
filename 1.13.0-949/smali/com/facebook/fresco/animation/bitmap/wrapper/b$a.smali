.class Lcom/facebook/fresco/animation/bitmap/wrapper/b$a;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendFrameRenderer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/wrapper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/bitmap/wrapper/b;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/bitmap/wrapper/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b$a;->a:Lcom/facebook/fresco/animation/bitmap/wrapper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "bitmap"
        }
    .end annotation

    return-void
.end method

.method public b(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b$a;->a:Lcom/facebook/fresco/animation/bitmap/wrapper/b;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->a(Lcom/facebook/fresco/animation/bitmap/wrapper/b;)Lb1/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lb1/b;->i(I)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method
