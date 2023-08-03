.class public final synthetic Lcom/koushikdutta/async/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/security/PrivateKey;

.field public final synthetic b:Ljava/security/cert/Certificate;

.field public final synthetic c:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic d:Ljava/net/InetAddress;

.field public final synthetic e:I

.field public final synthetic f:Lcom/koushikdutta/async/callback/ListenCallback;

.field public final synthetic g:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;


# direct methods
.method public synthetic constructor <init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/d;->a:Ljava/security/PrivateKey;

    iput-object p2, p0, Lcom/koushikdutta/async/d;->b:Ljava/security/cert/Certificate;

    iput-object p3, p0, Lcom/koushikdutta/async/d;->c:Lcom/koushikdutta/async/AsyncServer;

    iput-object p4, p0, Lcom/koushikdutta/async/d;->d:Ljava/net/InetAddress;

    iput p5, p0, Lcom/koushikdutta/async/d;->e:I

    iput-object p6, p0, Lcom/koushikdutta/async/d;->f:Lcom/koushikdutta/async/callback/ListenCallback;

    iput-object p7, p0, Lcom/koushikdutta/async/d;->g:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/koushikdutta/async/d;->a:Ljava/security/PrivateKey;

    iget-object v1, p0, Lcom/koushikdutta/async/d;->b:Ljava/security/cert/Certificate;

    iget-object v2, p0, Lcom/koushikdutta/async/d;->c:Lcom/koushikdutta/async/AsyncServer;

    iget-object v3, p0, Lcom/koushikdutta/async/d;->d:Ljava/net/InetAddress;

    iget v4, p0, Lcom/koushikdutta/async/d;->e:I

    iget-object v5, p0, Lcom/koushikdutta/async/d;->f:Lcom/koushikdutta/async/callback/ListenCallback;

    iget-object v6, p0, Lcom/koushikdutta/async/d;->g:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->y(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V

    return-void
.end method
