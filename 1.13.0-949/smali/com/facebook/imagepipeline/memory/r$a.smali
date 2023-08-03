.class Lcom/facebook/imagepipeline/memory/r$a;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"

# interfaces
.implements Lcom/facebook/common/references/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/memory/r;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/h<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/memory/r;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/r$a;->a:Lcom/facebook/imagepipeline/memory/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r$a;->a:Lcom/facebook/imagepipeline/memory/r;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/r;->d([B)V

    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unused"
        }
    .end annotation

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/r$a;->a([B)V

    return-void
.end method
