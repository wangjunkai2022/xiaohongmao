.class Lcom/facebook/drawee/components/b$a;
.super Ljava/lang/Object;
.source "DeferredReleaserConcurrentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/components/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/drawee/components/b;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/components/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/components/b$a;->a:Lcom/facebook/drawee/components/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/components/b$a;->a:Lcom/facebook/drawee/components/b;

    invoke-static {v0}, Lcom/facebook/drawee/components/b;->e(Lcom/facebook/drawee/components/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/drawee/components/b$a;->a:Lcom/facebook/drawee/components/b;

    invoke-static {v1}, Lcom/facebook/drawee/components/b;->f(Lcom/facebook/drawee/components/b;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/facebook/drawee/components/b$a;->a:Lcom/facebook/drawee/components/b;

    invoke-static {v2}, Lcom/facebook/drawee/components/b;->h(Lcom/facebook/drawee/components/b;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/drawee/components/b;->g(Lcom/facebook/drawee/components/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4
    iget-object v2, p0, Lcom/facebook/drawee/components/b$a;->a:Lcom/facebook/drawee/components/b;

    invoke-static {v2, v1}, Lcom/facebook/drawee/components/b;->i(Lcom/facebook/drawee/components/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/facebook/drawee/components/b$a;->a:Lcom/facebook/drawee/components/b;

    invoke-static {v1}, Lcom/facebook/drawee/components/b;->f(Lcom/facebook/drawee/components/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/facebook/drawee/components/b$a;->a:Lcom/facebook/drawee/components/b;

    invoke-static {v2}, Lcom/facebook/drawee/components/b;->f(Lcom/facebook/drawee/components/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/components/a$a;

    invoke-interface {v2}, Lcom/facebook/drawee/components/a$a;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/components/b$a;->a:Lcom/facebook/drawee/components/b;

    invoke-static {v0}, Lcom/facebook/drawee/components/b;->f(Lcom/facebook/drawee/components/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
