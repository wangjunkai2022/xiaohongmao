.class public Lcom/koushikdutta/async/parser/ByteBufferListParser;
.super Ljava/lang/Object;
.source "ByteBufferListParser.java"

# interfaces
.implements Lcom/koushikdutta/async/parser/AsyncParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/parser/AsyncParser<",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataEmitter;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 2
    new-instance v1, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;-><init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/DataEmitter;)V

    .line 3
    new-instance v2, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;-><init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 4
    new-instance v2, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;-><init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/koushikdutta/async/DataSink;Ljava/lang/Object;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    check-cast p2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->d(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public d(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/Util;->m(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    const-class v0, Lcom/koushikdutta/async/ByteBufferList;

    return-object v0
.end method
