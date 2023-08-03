.class Lcom/facebook/imagepipeline/producers/n$c$a;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/a0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/n$c;-><init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/n;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/s0;

.field final synthetic c:I

.field final synthetic d:Lcom/facebook/imagepipeline/producers/n$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/n$c;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/s0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$maxBitmapSize",
            "val$producerContext",
            "val$this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->d:Lcom/facebook/imagepipeline/producers/n$c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->a:Lcom/facebook/imagepipeline/producers/n;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    iput p4, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 3
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

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->d:Lcom/facebook/imagepipeline/producers/n$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/n$c;->s(Lcom/facebook/imagepipeline/producers/n$c;)Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->y()Lcom/facebook/imageformat/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imageformat/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_format"

    .line 3
    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/s0;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->d:Lcom/facebook/imagepipeline/producers/n$c;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/n$c;->o:Lcom/facebook/imagepipeline/producers/n;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/n;->c(Lcom/facebook/imagepipeline/producers/n;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->o(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->d:Lcom/facebook/imagepipeline/producers/n$c;

    iget-object v1, v1, Lcom/facebook/imagepipeline/producers/n$c;->o:Lcom/facebook/imagepipeline/producers/n;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/n;->f(Lcom/facebook/imagepipeline/producers/n;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/util/f;->n(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Lcom/facebook/imagepipeline/common/e;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/d;

    move-result-object v0

    iget v2, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->c:I

    .line 10
    invoke-static {v1, v0, p1, v2}, Ls1/a;->b(Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;Lcom/facebook/imagepipeline/image/e;I)I

    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/image/e;->s0(I)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    .line 13
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->g()Lcom/facebook/imagepipeline/core/j;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->d:Lcom/facebook/imagepipeline/producers/n$c;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/producers/n$c;->t(Lcom/facebook/imagepipeline/producers/n$c;Lcom/facebook/imagepipeline/image/e;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$c$a;->d:Lcom/facebook/imagepipeline/producers/n$c;

    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/n$c;->u(Lcom/facebook/imagepipeline/producers/n$c;Lcom/facebook/imagepipeline/image/e;I)V

    :cond_4
    return-void
.end method
