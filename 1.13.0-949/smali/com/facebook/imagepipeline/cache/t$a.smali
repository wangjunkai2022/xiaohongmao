.class Lcom/facebook/imagepipeline/cache/t$a;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/t;->J(Lcom/facebook/imagepipeline/cache/a0;)Lcom/facebook/imagepipeline/cache/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/a0<",
        "Lcom/facebook/imagepipeline/cache/j$a<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/cache/a0;

.field final synthetic b:Lcom/facebook/imagepipeline/cache/t;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$evictableValueDescriptor"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/t$a;->b:Lcom/facebook/imagepipeline/cache/t;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/t$a;->a:Lcom/facebook/imagepipeline/cache/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entry"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/cache/j$a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/t$a;->b(Lcom/facebook/imagepipeline/cache/j$a;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/facebook/imagepipeline/cache/j$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t$a;->b:Lcom/facebook/imagepipeline/cache/t;

    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/t;->r(Lcom/facebook/imagepipeline/cache/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget p1, p1, Lcom/facebook/imagepipeline/cache/j$a;->g:I

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t$a;->a:Lcom/facebook/imagepipeline/cache/a0;

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;

    invoke-virtual {p1}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/a0;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
