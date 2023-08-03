.class public final synthetic Lcom/koushikdutta/async/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic b:Lcom/koushikdutta/async/AsyncDatagramSocket;

.field public final synthetic c:Ljava/nio/channels/DatagramChannel;

.field public final synthetic d:Ljava/net/SocketAddress;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/l;->a:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/l;->b:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iput-object p3, p0, Lcom/koushikdutta/async/l;->c:Ljava/nio/channels/DatagramChannel;

    iput-object p4, p0, Lcom/koushikdutta/async/l;->d:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/l;->a:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/l;->b:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iget-object v2, p0, Lcom/koushikdutta/async/l;->c:Ljava/nio/channels/DatagramChannel;

    iget-object v3, p0, Lcom/koushikdutta/async/l;->d:Ljava/net/SocketAddress;

    invoke-static {v0, v1, v2, v3}, Lcom/koushikdutta/async/AsyncServer;->f(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    return-void
.end method
