.class Lcom/koushikdutta/async/http/HybiParser$1;
.super Ljava/lang/Object;
.source "HybiParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/HybiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/HybiParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HybiParser;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$1;->a:Lcom/koushikdutta/async/http/HybiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$1;->a:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->h()B

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/HybiParser;->a(Lcom/koushikdutta/async/http/HybiParser;B)V
    :try_end_0
    .catch Lcom/koushikdutta/async/http/HybiParser$ProtocolError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lcom/koushikdutta/async/http/HybiParser$1;->a:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/HybiParser;->K(Ljava/lang/Exception;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$1;->a:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/HybiParser;->E()V

    return-void
.end method
