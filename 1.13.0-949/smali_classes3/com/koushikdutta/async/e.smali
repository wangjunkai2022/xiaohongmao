.class public final synthetic Lcom/koushikdutta/async/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:[B

.field public final synthetic c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

.field public final synthetic d:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic e:Ljava/net/InetAddress;

.field public final synthetic f:I

.field public final synthetic g:Lcom/koushikdutta/async/callback/ListenCallback;


# direct methods
.method public synthetic constructor <init>([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/e;->a:[B

    iput-object p2, p0, Lcom/koushikdutta/async/e;->b:[B

    iput-object p3, p0, Lcom/koushikdutta/async/e;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    iput-object p4, p0, Lcom/koushikdutta/async/e;->d:Lcom/koushikdutta/async/AsyncServer;

    iput-object p5, p0, Lcom/koushikdutta/async/e;->e:Ljava/net/InetAddress;

    iput p6, p0, Lcom/koushikdutta/async/e;->f:I

    iput-object p7, p0, Lcom/koushikdutta/async/e;->g:Lcom/koushikdutta/async/callback/ListenCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/koushikdutta/async/e;->a:[B

    iget-object v1, p0, Lcom/koushikdutta/async/e;->b:[B

    iget-object v2, p0, Lcom/koushikdutta/async/e;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    iget-object v3, p0, Lcom/koushikdutta/async/e;->d:Lcom/koushikdutta/async/AsyncServer;

    iget-object v4, p0, Lcom/koushikdutta/async/e;->e:Ljava/net/InetAddress;

    iget v5, p0, Lcom/koushikdutta/async/e;->f:I

    iget-object v6, p0, Lcom/koushikdutta/async/e;->g:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->q([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V

    return-void
.end method
