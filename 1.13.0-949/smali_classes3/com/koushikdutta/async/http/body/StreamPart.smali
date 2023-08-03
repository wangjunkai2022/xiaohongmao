.class public abstract Lcom/koushikdutta/async/http/body/StreamPart;
.super Lcom/koushikdutta/async/http/body/Part;
.source "StreamPart.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/body/Part;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public h(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/StreamPart;->i()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/Util;->i(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-interface {p2, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected abstract i()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
