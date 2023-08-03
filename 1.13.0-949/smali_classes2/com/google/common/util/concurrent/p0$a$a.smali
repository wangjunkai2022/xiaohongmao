.class Lcom/google/common/util/concurrent/p0$a$a;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/p0$a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/p0$a;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/p0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/p0$a$a;->a:Lcom/google/common/util/concurrent/p0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$a$a;->a:Lcom/google/common/util/concurrent/p0$a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/p0$a;->N(Lcom/google/common/util/concurrent/p0$a;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/n1;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catchall_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$a$a;->a:Lcom/google/common/util/concurrent/p0$a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/p0$a;->O(Lcom/google/common/util/concurrent/p0$a;)Lcom/google/common/util/concurrent/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/u;->b()V

    return-void
.end method
