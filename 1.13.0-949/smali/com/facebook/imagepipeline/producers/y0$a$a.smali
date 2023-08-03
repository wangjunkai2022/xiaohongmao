.class Lcom/facebook/imagepipeline/producers/y0$a$a;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/a0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/y0$a;-><init>(Lcom/facebook/imagepipeline/producers/y0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;ZLs1/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/y0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/y0$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/y0$a;Lcom/facebook/imagepipeline/producers/y0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/y0$a$a;->b:Lcom/facebook/imagepipeline/producers/y0$a;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/y0$a$a;->a:Lcom/facebook/imagepipeline/producers/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "status"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y0$a$a;->b:Lcom/facebook/imagepipeline/producers/y0$a;

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/y0$a;->t(Lcom/facebook/imagepipeline/producers/y0$a;)Ls1/d;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->y()Lcom/facebook/imageformat/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/y0$a$a;->b:Lcom/facebook/imagepipeline/producers/y0$a;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/y0$a;->s(Lcom/facebook/imagepipeline/producers/y0$a;)Z

    move-result v3

    .line 4
    invoke-interface {v1, v2, v3}, Ls1/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/c;

    .line 6
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/producers/y0$a;->u(Lcom/facebook/imagepipeline/producers/y0$a;Lcom/facebook/imagepipeline/image/e;ILs1/c;)V

    return-void
.end method
