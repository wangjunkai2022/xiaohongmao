.class public abstract Lcom/konstantinschubert/writeinterceptingwebview/e;
.super Landroid/webkit/WebViewClient;
.source "WriteHandlingWebViewClient.java"


# static fields
.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String; = "AJAXINTERCEPT"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "png"

    const-string v1, "jpeg"

    const-string v2, "jpg"

    const-string v3, "mp3"

    const-string v4, "mp4"

    const-string v5, "ico"

    const-string v6, "plist"

    const-string v7, "wav"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/konstantinschubert/writeinterceptingwebview/e;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/konstantinschubert/writeinterceptingwebview/e;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/konstantinschubert/writeinterceptingwebview/a;

    invoke-direct {v0, p0}, Lcom/konstantinschubert/writeinterceptingwebview/a;-><init>(Lcom/konstantinschubert/writeinterceptingwebview/e;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    const-string v1, "interception"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/konstantinschubert/writeinterceptingwebview/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/konstantinschubert/writeinterceptingwebview/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Landroid/webkit/WebResourceRequest;)Ljava/lang/String;
    .locals 1

    const-string v0, "AJAXINTERCEPT"

    invoke-direct {p0, p1, v0}, Lcom/konstantinschubert/writeinterceptingwebview/e;->g(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method private d(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "text/html"

    const-string v2, "utf-8"

    invoke-direct {v0, p1, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private e(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/konstantinschubert/writeinterceptingwebview/e;->g(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private f(Landroid/webkit/WebResourceRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/konstantinschubert/writeinterceptingwebview/e;->c(Landroid/webkit/WebResourceRequest;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/konstantinschubert/writeinterceptingwebview/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h(Landroid/webkit/WebResourceResponse;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p1

    .line 4
    invoke-direct {p0, p2, p1, v1, v0}, Lcom/konstantinschubert/writeinterceptingwebview/e;->i(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 5
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-direct {p2, v1, v0, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2
.end method

.method private i(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "text/html"

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 p2, 0x0

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/konstantinschubert/writeinterceptingwebview/b;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p3, v0

    .line 4
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 5
    invoke-static {p1, p2}, Lcom/konstantinschubert/writeinterceptingwebview/a;->a(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 7
    :cond_2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/konstantinschubert/writeinterceptingwebview/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract j(Landroid/webkit/WebView;Lcom/konstantinschubert/writeinterceptingwebview/c;)V
.end method

.method protected k(Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AJAXINTERCEPT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method protected l(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/konstantinschubert/writeinterceptingwebview/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AJAXINTERCEPT"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/konstantinschubert/writeinterceptingwebview/e;->k(Landroid/webkit/WebResourceRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/konstantinschubert/writeinterceptingwebview/e;->f(Landroid/webkit/WebResourceRequest;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AJAXINTERCEPT"

    .line 4
    invoke-direct {p0, p2, v2}, Lcom/konstantinschubert/writeinterceptingwebview/e;->e(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    .line 5
    :goto_0
    new-instance v3, Lcom/konstantinschubert/writeinterceptingwebview/c;

    invoke-direct {v3, p2, v0, v2}, Lcom/konstantinschubert/writeinterceptingwebview/c;-><init>(Landroid/webkit/WebResourceRequest;Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    invoke-virtual {p0, p1, v3}, Lcom/konstantinschubert/writeinterceptingwebview/e;->j(Landroid/webkit/WebView;Lcom/konstantinschubert/writeinterceptingwebview/c;)V

    .line 7
    invoke-virtual {v3}, Lcom/konstantinschubert/writeinterceptingwebview/c;->b()Landroid/webkit/WebResourceResponse;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/konstantinschubert/writeinterceptingwebview/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/konstantinschubert/writeinterceptingwebview/e;->h(Landroid/webkit/WebResourceResponse;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/konstantinschubert/writeinterceptingwebview/d;

    invoke-direct {p2, p1}, Lcom/konstantinschubert/writeinterceptingwebview/d;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const-string p1, "Error"

    .line 11
    invoke-direct {p0, p1}, Lcom/konstantinschubert/writeinterceptingwebview/e;->d(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method
