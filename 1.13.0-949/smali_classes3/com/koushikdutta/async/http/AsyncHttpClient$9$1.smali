.class Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;
.super Lcom/koushikdutta/async/stream/OutputStreamDataCallback;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient$9;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpResponse;

.field final synthetic c:J

.field final synthetic d:Lcom/koushikdutta/async/http/AsyncHttpClient$9;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient$9;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/AsyncHttpResponse;J)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->b:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    iput-wide p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->c:J

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-wide v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->a:J

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->a:J

    .line 2
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->b:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    iget-wide v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->a:J

    iget-wide v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->c:J

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->f(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    return-void
.end method
