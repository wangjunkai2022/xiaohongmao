.class Lcom/koushikdutta/async/http/HybiParser$4;
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

    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$4;->a:Lcom/koushikdutta/async/http/HybiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$4;->a:Lcom/koushikdutta/async/http/HybiParser;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/HybiParser;->f(Lcom/koushikdutta/async/http/HybiParser;[B)[B

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$4;->a:Lcom/koushikdutta/async/http/HybiParser;

    invoke-static {p1}, Lcom/koushikdutta/async/http/HybiParser;->e(Lcom/koushikdutta/async/http/HybiParser;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$4;->a:Lcom/koushikdutta/async/http/HybiParser;

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/HybiParser;->g(Lcom/koushikdutta/async/http/HybiParser;I)I

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$4;->a:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/HybiParser;->E()V

    return-void
.end method
