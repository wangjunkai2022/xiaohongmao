.class Lcom/koushikdutta/async/AsyncServer$6;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->B(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic c:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$6;->c:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$6;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->m()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$6;->c:Lcom/koushikdutta/async/AsyncServer;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer$6$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/AsyncServer$6$1;-><init>(Lcom/koushikdutta/async/AsyncServer$6;[Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/HostnameResolutionException;

    const-string v1, "no addresses for host"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/HostnameResolutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$6;->c:Lcom/koushikdutta/async/AsyncServer;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer$6$2;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/AsyncServer$6$2;-><init>(Lcom/koushikdutta/async/AsyncServer$6;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    :goto_0
    return-void
.end method
