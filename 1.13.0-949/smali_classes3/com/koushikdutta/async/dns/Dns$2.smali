.class final Lcom/koushikdutta/async/dns/Dns$2;
.super Ljava/lang/Object;
.source "Dns.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/dns/Dns;->e(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncDatagramSocket;

.field final synthetic b:Z

.field final synthetic c:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic d:Lcom/koushikdutta/async/future/FutureCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncDatagramSocket;ZLcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/dns/Dns$2;->a:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iput-boolean p2, p0, Lcom/koushikdutta/async/dns/Dns$2;->b:Z

    iput-object p3, p0, Lcom/koushikdutta/async/dns/Dns$2;->c:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/dns/Dns$2;->d:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/koushikdutta/async/dns/DnsResponse;->a(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/dns/DnsResponse;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->a:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->N()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p1, Lcom/koushikdutta/async/dns/DnsResponse;->d:Ljava/net/InetSocketAddress;

    .line 3
    iget-boolean v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->b:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->a:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->close()V

    .line 5
    iget-object v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->c:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->d:Lcom/koushikdutta/async/future/FutureCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/koushikdutta/async/future/FutureCallback;->c(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    return-void
.end method
