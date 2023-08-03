.class final Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ListenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->J0(Lcom/koushikdutta/async/AsyncServer;Ljavax/net/ssl/SSLContext;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

.field final synthetic c:Ljavax/net/ssl/SSLContext;

.field final synthetic d:Lcom/koushikdutta/async/callback/ListenCallback;


# direct methods
.method constructor <init>(ILcom/koushikdutta/async/http/SSLEngineSNIConfigurator;Ljavax/net/ssl/SSLContext;Lcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->a:I

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->b:Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->c:Ljavax/net/ssl/SSLContext;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->d:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ListenCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->f(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ListenCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    return-void
.end method

.method private static synthetic f(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ListenCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p3}, Lcom/koushikdutta/async/callback/ListenCallback;->d0(Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method


# virtual methods
.method public E(Lcom/koushikdutta/async/AsyncServerSocket;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->d:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/ListenCallback;->E(Lcom/koushikdutta/async/AsyncServerSocket;)V

    return-void
.end method

.method public d0(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 8

    iget v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->a:I

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->b:Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->c:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;->b(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->d:Lcom/koushikdutta/async/callback/ListenCallback;

    new-instance v7, Lcom/koushikdutta/async/g;

    invoke-direct {v7, p1, v0}, Lcom/koushikdutta/async/g;-><init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ListenCallback;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->y0(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V

    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;->d:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    return-void
.end method
