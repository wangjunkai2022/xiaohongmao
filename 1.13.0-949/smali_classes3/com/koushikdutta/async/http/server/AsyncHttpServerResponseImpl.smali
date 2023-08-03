.class public Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;


# instance fields
.field private a:Lcom/koushikdutta/async/http/Headers;

.field private b:J

.field c:Lcom/koushikdutta/async/AsyncSocket;

.field d:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

.field e:Z

.field f:Lcom/koushikdutta/async/DataSink;

.field g:Lcom/koushikdutta/async/callback/WritableCallback;

.field h:Z

.field i:Z

.field j:I

.field k:Ljava/lang/String;

.field l:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Z

    const/16 v0, 0xc8

    .line 5
    iput v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:I

    const-string v0, "HTTP/1.1"

    .line 6
    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->k:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/AsyncSocket;

    .line 8
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    .line 9
    sget-object p1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/HttpUtil;->d(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string p2, "Connection"

    const-string v0, "Keep-Alive"

    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_0
    return-void
.end method

.method private synthetic B(ZLjava/lang/Exception;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->W(Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;-><init>(Lcom/koushikdutta/async/DataSink;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/BufferedDataSink;->B(I)V

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/AsyncSocket;

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 8
    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->g:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/DataSink;->e0(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 9
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->g:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 10
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    return-void

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/async/http/server/f;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/http/server/f;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method private synthetic C()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->v()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    :cond_0
    return-void
.end method

.method private synthetic F(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->S()V

    return-void
.end method

.method private synthetic G(Ljava/io/InputStream;Ljava/lang/Exception;)V
    .locals 1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/io/Closeable;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 1
    invoke-static {p2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->S()V

    return-void
.end method

.method private synthetic K(Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    new-instance p2, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {p2}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 2
    new-instance p2, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    return-void
.end method

.method private synthetic N(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:J

    .line 2
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 4
    :cond_0
    new-instance p2, Lcom/koushikdutta/async/http/server/b;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/http/server/b;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V

    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/Util;->m(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method private synthetic O(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    return-void
.end method

.method private synthetic P(Ljava/io/InputStream;)V
    .locals 3

    iget-wide v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:J

    new-instance v2, Lcom/koushikdutta/async/http/server/d;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/async/http/server/d;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Ljava/io/InputStream;)V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/koushikdutta/async/Util;->h(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public static synthetic f(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Ljava/io/InputStream;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->G(Ljava/io/InputStream;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic i(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->P(Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic k(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->O(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic n(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->B(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic o(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->N(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->C()V

    return-void
.end method

.method public static synthetic s(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->K(Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic y(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->F(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public D(Lorg/json/JSONArray;)V
    .locals 1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->Q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public I(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 2
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->m(Ljava/lang/String;)Ljava/util/List;

    .line 3
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->m(Ljava/lang/String;)Ljava/util/List;

    .line 4
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->m(Ljava/lang/String;)Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/Headers;->b(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/Headers;

    .line 6
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 7
    new-instance v0, Lcom/koushikdutta/async/http/server/c;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/server/c;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    invoke-static {p1, p0, v0}, Lcom/koushikdutta/async/Util;->f(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public L(Ljava/io/InputStream;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x1

    sub-long v4, p2, v2

    .line 1
    iget-object v6, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v6

    const-string v7, "Range"

    invoke-virtual {v6, v7}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bytes"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_5

    const-string v12, "="

    .line 2
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3
    array-length v12, v6

    const/16 v13, 0x1a0

    const/4 v14, 0x2

    if-ne v12, v14, :cond_4

    aget-object v12, v6, v11

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    aget-object v6, v6, v10

    const-string v12, "-"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5
    :try_start_0
    array-length v12, v6

    if-gt v12, v14, :cond_3

    .line 6
    aget-object v12, v6, v11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 7
    aget-object v12, v6, v11

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    goto :goto_0

    :cond_1
    const-wide/16 v15, 0x0

    .line 8
    :goto_0
    array-length v12, v6

    if-ne v12, v14, :cond_2

    aget-object v12, v6, v10

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 9
    aget-object v4, v6, v10

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_2
    const/16 v6, 0xce

    .line 10
    invoke-virtual {v0, v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v6

    const-string v12, "Content-Range"

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "bytes %d-%d/%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v8, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v12, v2}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    move-wide v2, v15

    goto :goto_2

    .line 12
    :cond_3
    new-instance v1, Lcom/koushikdutta/async/http/server/MalformedRangeException;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/server/MalformedRangeException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    invoke-virtual {v0, v13}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    return-void

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v0, v13}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    return-void

    :cond_5
    const-wide/16 v2, 0x0

    .line 17
    :goto_2
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    cmp-long v6, v2, v8

    if-nez v6, :cond_8

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    .line 18
    iput-wide v4, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:J

    .line 19
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v3, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 20
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v3, "Accept-Ranges"

    invoke-virtual {v2, v3, v7}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 21
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->U()V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->S()V

    return-void

    .line 24
    :cond_6
    iget-wide v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_7

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->U()V

    new-array v2, v10, [Ljava/io/Closeable;

    aput-object v1, v2, v11

    .line 26
    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->S()V

    return-void

    .line 28
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v2

    new-instance v3, Lcom/koushikdutta/async/http/server/h;

    invoke-direct {v3, v0, v1}, Lcom/koushikdutta/async/http/server/h;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Ljava/io/InputStream;)V

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    goto :goto_3

    .line 29
    :cond_8
    new-instance v1, Lcom/koushikdutta/async/http/server/StreamSkipException;

    const-string v2, "skip failed to skip requested amount"

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/server/StreamSkipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/16 v1, 0x1f4

    .line 30
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    :goto_3
    return-void
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->t(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public R(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/parser/AsyncParser<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-interface {p1}, Lcom/koushikdutta/async/parser/AsyncParser;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 2
    new-instance v0, Lcom/koushikdutta/async/http/server/a;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/a;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V

    invoke-interface {p1, p0, p2, v0}, Lcom/koushikdutta/async/parser/AsyncParser;->c(Lcom/koushikdutta/async/DataSink;Ljava/lang/Object;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method protected S()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->i:Z

    return-void
.end method

.method public T(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 3

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->s0(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public U()V
    .locals 0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->z()V

    return-void
.end method

.method protected W(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public a()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public a0(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->z()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:I

    return v0
.end method

.method public c0(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/AsyncSocket;

    return-void
.end method

.method public d()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public e()Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    return-object v0
.end method

.method public e0(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->e0(Lcom/koushikdutta/async/callback/WritableCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->g:Lcom/koushikdutta/async/callback/WritableCallback;

    :goto_0
    return-void
.end method

.method public f0()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->f0()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    return-void
.end method

.method public h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
    .locals 0

    iput p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:I

    return-object p0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h:Z

    .line 3
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    instance-of v1, v0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->j()V

    goto :goto_0

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Z

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->d:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "text/html"

    const-string v1, ""

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->Q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->U()V

    .line 11
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->S()V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->S()V

    :goto_0
    return-void
.end method

.method public j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->l:Lcom/koushikdutta/async/callback/CompletedCallback;

    :goto_0
    return-void
.end method

.method public k0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->k:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-void
.end method

.method public r(Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->Q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s0(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/server/g;

    invoke-direct {v1, p0, p2, p1}, Lcom/koushikdutta/async/http/server/g;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/html; charset=utf-8"

    .line 2
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->Q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/lang/String;[B)V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->s0(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:I

    invoke-static {v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->E(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s %s %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Headers;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->k:Ljava/lang/String;

    return-void
.end method

.method public u0(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x12e

    .line 1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    return-void
.end method

.method public v()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->v()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->g:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public x(Ljava/io/File;)V
    .locals 4

    const-string v0, "Content-Type"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 3
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/BufferedInputStream;

    const v2, 0xfa00

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->L(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0x194

    .line 5
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 6
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j()V

    :goto_0
    return-void
.end method

.method z()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Z

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    .line 4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/http/Headers;->m(Ljava/lang/String;)Ljava/util/List;

    :cond_1
    const-string v3, "Chunked"

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v4, "Connection"

    .line 7
    invoke-virtual {v1, v4}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "close"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-wide v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_4

    .line 9
    iget-object v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    const-string v6, "Content-Length"

    invoke-virtual {v4, v6}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 11
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:J

    .line 12
    :cond_4
    iget-wide v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_5

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 14
    :goto_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->k:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:I

    invoke-static {v4}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->E(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "%s %s %s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/Headers;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v3, Lcom/koushikdutta/async/http/server/e;

    invoke-direct {v3, p0, v1}, Lcom/koushikdutta/async/http/server/e;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Z)V

    invoke-static {v2, v0, v3}, Lcom/koushikdutta/async/Util;->n(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
