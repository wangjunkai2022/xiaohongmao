.class final Lcom/bumptech/glide/manager/r$d;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Lcom/bumptech/glide/manager/r$c;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field a:Z

.field final b:Lcom/bumptech/glide/manager/c$a;

.field private final c:Lcom/bumptech/glide/util/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/h$b<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/util/h$b;Lcom/bumptech/glide/manager/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/util/h$b<",
            "Landroid/net/ConnectivityManager;",
            ">;",
            "Lcom/bumptech/glide/manager/c$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/manager/r$d$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/r$d$a;-><init>(Lcom/bumptech/glide/manager/r$d;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/r$d;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/manager/r$d;->c:Lcom/bumptech/glide/util/h$b;

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/manager/r$d;->b:Lcom/bumptech/glide/manager/c$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/r$d;->c:Lcom/bumptech/glide/util/h$b;

    invoke-interface {v0}, Lcom/bumptech/glide/util/h$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/bumptech/glide/manager/r$d;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public b()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/r$d;->c:Lcom/bumptech/glide/util/h$b;

    invoke-interface {v0}, Lcom/bumptech/glide/util/h$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/r$d;->a:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/r$d;->c:Lcom/bumptech/glide/util/h$b;

    invoke-interface {v0}, Lcom/bumptech/glide/util/h$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/bumptech/glide/manager/r$d;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v3, "ConnectivityMonitor"

    .line 3
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to register callback"

    .line 4
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v2
.end method
