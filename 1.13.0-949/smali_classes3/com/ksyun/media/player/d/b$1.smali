.class Lcom/ksyun/media/player/d/b$1;
.super Ljava/lang/Object;
.source "KSYDnsInfo.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/player/d/b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URL;

.field final synthetic b:Lcom/ksyun/media/player/d/b;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/d/b;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/d/b$1;->b:Lcom/ksyun/media/player/d/b;

    iput-object p2, p0, Lcom/ksyun/media/player/d/b$1;->a:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/d/b$1;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
