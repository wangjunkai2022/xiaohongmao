.class Lcom/facebook/imagepipeline/animated/impl/c$a;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/impl/c;-><init>(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/cache/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/j$b<",
        "Lcom/facebook/cache/common/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/animated/impl/c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/impl/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/c$a;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "isExclusive"
        }
    .end annotation

    check-cast p1, Lcom/facebook/cache/common/c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/c$a;->b(Lcom/facebook/cache/common/c;Z)V

    return-void
.end method

.method public b(Lcom/facebook/cache/common/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "isExclusive"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c$a;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/c;->f(Lcom/facebook/cache/common/c;Z)V

    return-void
.end method
