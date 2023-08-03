.class Lcom/facebook/imagepipeline/memory/h0$a;
.super Ljava/lang/Object;
.source "SharedByteArray.java"

# interfaces
.implements Lcom/facebook/common/references/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/memory/h0;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;)V
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
.field final synthetic a:Lcom/facebook/imagepipeline/memory/h0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/h0$a;->a:Lcom/facebook/imagepipeline/memory/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/h0$a;->a:Lcom/facebook/imagepipeline/memory/h0;

    iget-object p1, p1, Lcom/facebook/imagepipeline/memory/h0;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

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

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/h0$a;->a([B)V

    return-void
.end method
