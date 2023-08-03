.class public Lcom/facebook/datasource/e;
.super Ljava/lang/Object;
.source "DataSources.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/e$d;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "failure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/datasource/e$a;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/e$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/datasource/j;->y()Lcom/facebook/datasource/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/j;->z(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/datasource/j;->y()Lcom/facebook/datasource/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/j;->p(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static d(Lcom/facebook/datasource/d;)Ljava/lang/Object;
    .locals 5
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v1, Lcom/facebook/datasource/e$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/datasource/e$d;-><init>(Lcom/facebook/datasource/e$a;)V

    .line 3
    new-instance v3, Lcom/facebook/datasource/e$d;

    invoke-direct {v3, v2}, Lcom/facebook/datasource/e$d;-><init>(Lcom/facebook/datasource/e$a;)V

    .line 4
    new-instance v2, Lcom/facebook/datasource/e$b;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/datasource/e$b;-><init>(Lcom/facebook/datasource/e$d;Ljava/util/concurrent/CountDownLatch;Lcom/facebook/datasource/e$d;)V

    new-instance v4, Lcom/facebook/datasource/e$c;

    invoke-direct {v4}, Lcom/facebook/datasource/e$c;-><init>()V

    invoke-interface {p0, v2, v4}, Lcom/facebook/datasource/d;->f(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 6
    iget-object p0, v3, Lcom/facebook/datasource/e$d;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    .line 7
    iget-object p0, v1, Lcom/facebook/datasource/e$d;->a:Ljava/lang/Object;

    return-object p0

    .line 8
    :cond_0
    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
