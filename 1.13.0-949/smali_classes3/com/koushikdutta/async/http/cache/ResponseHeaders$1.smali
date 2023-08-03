.class Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

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
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "no-store"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "max-age"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->b(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I

    goto :goto_0

    :cond_2
    const-string v0, "s-maxage"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->b(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I

    goto :goto_0

    :cond_3
    const-string p2, "public"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_4
    const-string p2, "must-revalidate"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->a:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->f(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    :cond_5
    :goto_0
    return-void
.end method
