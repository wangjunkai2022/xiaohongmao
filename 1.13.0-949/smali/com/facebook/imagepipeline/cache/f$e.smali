.class Lcom/facebook/imagepipeline/cache/f$e;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/f;->w(Lcom/facebook/cache/common/c;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/facebook/cache/common/c;

.field final synthetic c:Lcom/facebook/imagepipeline/cache/f;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/f;Ljava/lang/Object;Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$key",
            "val$token"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/f$e;->c:Lcom/facebook/imagepipeline/cache/f;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/f$e;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/f$e;->b:Lcom/facebook/cache/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f$e;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp1/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$e;->c:Lcom/facebook/imagepipeline/cache/f;

    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/f;->c(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/imagepipeline/cache/z;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f$e;->b:Lcom/facebook/cache/common/c;

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/cache/z;->g(Lcom/facebook/cache/common/c;)Z

    .line 3
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$e;->c:Lcom/facebook/imagepipeline/cache/f;

    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/f;->b(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/cache/disk/i;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f$e;->b:Lcom/facebook/cache/common/c;

    invoke-interface {v2, v3}, Lcom/facebook/cache/disk/i;->i(Lcom/facebook/cache/common/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Lp1/a;->f(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$e;->a:Ljava/lang/Object;

    invoke-static {v2, v1}, Lp1/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 7
    invoke-static {v0}, Lp1/a;->f(Ljava/lang/Object;)V

    .line 8
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/f$e;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
