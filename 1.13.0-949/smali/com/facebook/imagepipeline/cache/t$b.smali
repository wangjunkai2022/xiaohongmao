.class Lcom/facebook/imagepipeline/cache/t$b;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/common/references/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/t;->F(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/h<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/cache/j$a;

.field final synthetic b:Lcom/facebook/imagepipeline/cache/t;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/t$b;->b:Lcom/facebook/imagepipeline/cache/t;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/t$b;->a:Lcom/facebook/imagepipeline/cache/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/t$b;->b:Lcom/facebook/imagepipeline/cache/t;

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t$b;->a:Lcom/facebook/imagepipeline/cache/j$a;

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/cache/t;->s(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/j$a;)V

    return-void
.end method
