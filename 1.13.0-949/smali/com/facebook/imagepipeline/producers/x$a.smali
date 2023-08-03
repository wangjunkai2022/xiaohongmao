.class Lcom/facebook/imagepipeline/producers/x$a;
.super Ljava/lang/Object;
.source "HttpUrlConnectionNetworkFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/x;->i(Lcom/facebook/imagepipeline/producers/x$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/x$c;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/l0$a;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/x;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/x;Lcom/facebook/imagepipeline/producers/x$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$fetchState"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/x$a;->c:Lcom/facebook/imagepipeline/producers/x;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/x$a;->a:Lcom/facebook/imagepipeline/producers/x$c;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/x$a;->b:Lcom/facebook/imagepipeline/producers/l0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x$a;->c:Lcom/facebook/imagepipeline/producers/x;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/x$a;->a:Lcom/facebook/imagepipeline/producers/x$c;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/x$a;->b:Lcom/facebook/imagepipeline/producers/l0$a;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/x;->j(Lcom/facebook/imagepipeline/producers/x$c;Lcom/facebook/imagepipeline/producers/l0$a;)V

    return-void
.end method
