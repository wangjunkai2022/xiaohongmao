.class public final synthetic Lcom/koushikdutta/async/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic b:Lcom/koushikdutta/async/AsyncDatagramSocket;

.field public final synthetic c:Ljava/net/InetAddress;

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/net/InetAddress;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iput-object p3, p0, Lcom/koushikdutta/async/k;->c:Ljava/net/InetAddress;

    iput p4, p0, Lcom/koushikdutta/async/k;->d:I

    iput-boolean p5, p0, Lcom/koushikdutta/async/k;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iget-object v2, p0, Lcom/koushikdutta/async/k;->c:Ljava/net/InetAddress;

    iget v3, p0, Lcom/koushikdutta/async/k;->d:I

    iget-boolean v4, p0, Lcom/koushikdutta/async/k;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/AsyncServer;->h(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/net/InetAddress;IZ)V

    return-void
.end method
