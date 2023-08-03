.class Lcom/koushikdutta/async/http/AsyncHttpRequest$1;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Lcom/koushikdutta/async/http/RequestLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpRequest;->q()Lcom/koushikdutta/async/http/RequestLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/http/ProtocolVersion;
    .locals 3

    new-instance v0, Lcom/koushikdutta/async/http/ProtocolVersion;

    const-string v1, "HTTP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/koushikdutta/async/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->h:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "%s %s %s"

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v5, v3

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "/"

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->t()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v7}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object v0, v5, v3

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
