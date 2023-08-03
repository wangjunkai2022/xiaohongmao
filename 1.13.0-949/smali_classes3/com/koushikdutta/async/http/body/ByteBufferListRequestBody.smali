.class public Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;
.super Ljava/lang/Object;
.source "ByteBufferListRequestBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String; = "application/binary"


# instance fields
.field a:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;->a:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method public static synthetic a(Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;->c(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method private synthetic c(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;->a:Lcom/koushikdutta/async/ByteBufferList;

    .line 2
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public K(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/body/a;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/body/a;-><init>(Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method

.method public b()Lcom/koushikdutta/async/ByteBufferList;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;->a:Lcom/koushikdutta/async/ByteBufferList;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;->b()Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;->b:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    return v0
.end method

.method public q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iget-object p1, p0, Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/Util;->m(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
