.class public final synthetic Lcom/koushikdutta/async/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/AsyncSocket;

.field public final synthetic b:Lcom/koushikdutta/async/callback/ListenCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/g;->a:Lcom/koushikdutta/async/AsyncSocket;

    iput-object p2, p0, Lcom/koushikdutta/async/g;->b:Lcom/koushikdutta/async/callback/ListenCallback;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/g;->a:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v1, p0, Lcom/koushikdutta/async/g;->b:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->b(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ListenCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    return-void
.end method
