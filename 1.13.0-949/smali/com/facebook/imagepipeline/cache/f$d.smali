.class Lcom/facebook/imagepipeline/cache/f$d;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/f;->u(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/facebook/cache/common/c;

.field final synthetic c:Lcom/facebook/imagepipeline/image/e;

.field final synthetic d:Lcom/facebook/imagepipeline/cache/f;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/f;Ljava/lang/Object;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalEncodedImage",
            "val$key",
            "val$token"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/f$d;->d:Lcom/facebook/imagepipeline/cache/f;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/f$d;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/f$d;->b:Lcom/facebook/cache/common/c;

    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/f$d;->c:Lcom/facebook/imagepipeline/image/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f$d;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp1/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/f$d;->d:Lcom/facebook/imagepipeline/cache/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$d;->b:Lcom/facebook/cache/common/c;

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f$d;->c:Lcom/facebook/imagepipeline/image/e;

    invoke-static {v1, v2, v3}, Lcom/facebook/imagepipeline/cache/f;->g(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/f$d;->d:Lcom/facebook/imagepipeline/cache/f;

    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/f;->c(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/imagepipeline/cache/z;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$d;->b:Lcom/facebook/cache/common/c;

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f$d;->c:Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/imagepipeline/cache/z;->h(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)Z

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/f$d;->c:Lcom/facebook/imagepipeline/image/e;

    invoke-static {v1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 5
    invoke-static {v0}, Lp1/a;->f(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$d;->a:Ljava/lang/Object;

    invoke-static {v2, v1}, Lp1/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 7
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$d;->d:Lcom/facebook/imagepipeline/cache/f;

    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/f;->c(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/imagepipeline/cache/z;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f$d;->b:Lcom/facebook/cache/common/c;

    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/f$d;->c:Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/imagepipeline/cache/z;->h(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)Z

    .line 9
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$d;->c:Lcom/facebook/imagepipeline/image/e;

    invoke-static {v2}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 10
    invoke-static {v0}, Lp1/a;->f(Ljava/lang/Object;)V

    .line 11
    throw v1
.end method
