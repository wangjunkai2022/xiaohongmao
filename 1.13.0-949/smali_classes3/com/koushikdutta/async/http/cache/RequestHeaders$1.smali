.class Lcom/koushikdutta/async/http/cache/RequestHeaders$1;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/RequestHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/cache/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/RequestHeaders;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "no-cache"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "max-age"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->b(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_0

    :cond_1
    const-string v0, "max-stale"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->b(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_0

    :cond_2
    const-string v0, "min-fresh"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->b(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->d(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_0

    :cond_3
    const-string p2, "only-if-cached"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->a:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->e(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z

    :cond_4
    :goto_0
    return-void
.end method
