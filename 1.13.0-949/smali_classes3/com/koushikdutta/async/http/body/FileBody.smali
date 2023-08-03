.class public Lcom/koushikdutta/async/http/body/FileBody;
.super Ljava/lang/Object;
.source "FileBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "application/binary"


# instance fields
.field a:Ljava/io/File;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/binary"

    .line 2
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/FileBody;->b:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/FileBody;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/FileBody;->a:Ljava/io/File;

    .line 6
    iput-object p2, p0, Lcom/koushikdutta/async/http/body/FileBody;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public K(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/FileBody;->a:Ljava/io/File;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/FileBody;->b:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/FileBody;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/FileBody;->b:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/FileBody;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iget-object p1, p0, Lcom/koushikdutta/async/http/body/FileBody;->a:Ljava/io/File;

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/Util;->g(Ljava/io/File;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public t0()Z
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
