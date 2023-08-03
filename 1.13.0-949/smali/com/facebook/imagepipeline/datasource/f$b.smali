.class Lcom/facebook/imagepipeline/datasource/f$b;
.super Ljava/lang/Object;
.source "ListDataSource.java"

# interfaces
.implements Lcom/facebook/datasource/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/datasource/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/f<",
        "Lcom/facebook/common/references/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field a:Z
    .annotation build Ls7/a;
        value = "InternalDataSubscriber.this"
    .end annotation
.end field

.field final synthetic b:Lcom/facebook/imagepipeline/datasource/f;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/datasource/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/f$b;->b:Lcom/facebook/imagepipeline/datasource/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/datasource/f$b;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/datasource/f;Lcom/facebook/imagepipeline/datasource/f$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/f$b;-><init>(Lcom/facebook/imagepipeline/datasource/f;)V

    return-void
.end method

.method private declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/datasource/f$b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/datasource/f$b;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/f$b;->b:Lcom/facebook/imagepipeline/datasource/f;

    invoke-static {p1}, Lcom/facebook/imagepipeline/datasource/f;->z(Lcom/facebook/imagepipeline/datasource/f;)V

    return-void
.end method

.method public b(Lcom/facebook/datasource/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/f$b;->b:Lcom/facebook/imagepipeline/datasource/f;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/f;->y(Lcom/facebook/imagepipeline/datasource/f;Lcom/facebook/datasource/d;)V

    return-void
.end method

.method public c(Lcom/facebook/datasource/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/d;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/f$b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/f$b;->b:Lcom/facebook/imagepipeline/datasource/f;

    invoke-static {p1}, Lcom/facebook/imagepipeline/datasource/f;->A(Lcom/facebook/imagepipeline/datasource/f;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/facebook/datasource/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/f$b;->b:Lcom/facebook/imagepipeline/datasource/f;

    invoke-static {p1}, Lcom/facebook/imagepipeline/datasource/f;->B(Lcom/facebook/imagepipeline/datasource/f;)V

    return-void
.end method
