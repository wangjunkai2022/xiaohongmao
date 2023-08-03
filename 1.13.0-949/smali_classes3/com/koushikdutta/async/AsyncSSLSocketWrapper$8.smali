.class final Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLServerSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->C0(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/security/PrivateKey;

.field final synthetic b:Ljava/security/cert/Certificate;

.field final synthetic c:Lcom/koushikdutta/async/AsyncServerSocket;


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServerSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->a:Ljava/security/PrivateKey;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->b:Ljava/security/cert/Certificate;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->c:Lcom/koushikdutta/async/AsyncServerSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->a:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->c:Lcom/koushikdutta/async/AsyncServerSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncServerSocket;->b()I

    move-result v0

    return v0
.end method

.method public c()Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->b:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;->c:Lcom/koushikdutta/async/AsyncServerSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncServerSocket;->stop()V

    return-void
.end method
