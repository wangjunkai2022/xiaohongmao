.class Lcom/google/common/util/concurrent/x0$f$a;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/x0$f;->a(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ExecutorService;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/TimeUnit;

.field final synthetic d:Lcom/google/common/util/concurrent/x0$f;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/x0$f;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/x0$f$a;->d:Lcom/google/common/util/concurrent/x0$f;

    iput-object p2, p0, Lcom/google/common/util/concurrent/x0$f$a;->a:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Lcom/google/common/util/concurrent/x0$f$a;->b:J

    iput-object p5, p0, Lcom/google/common/util/concurrent/x0$f$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/x0$f$a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/x0$f$a;->a:Ljava/util/concurrent/ExecutorService;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/x0$f$a;->b:J

    iget-object v3, p0, Lcom/google/common/util/concurrent/x0$f$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
