.class Lcom/koushikdutta/async/PushParser$UntilWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UntilWaiter"
.end annotation


# instance fields
.field b:B

.field c:Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method public constructor <init>(BLcom/koushikdutta/async/callback/DataCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 2
    iput-byte p1, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->b:B

    .line 3
    iput-object p2, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->c:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 7

    .line 1
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->T()I

    move-result v3

    if-lez v3, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->Q()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget-byte v6, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->b:B

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p2, v3}, Lcom/koushikdutta/async/ByteBufferList;->e(Ljava/nio/ByteBuffer;)V

    .line 8
    invoke-virtual {p2, v0, v5}, Lcom/koushikdutta/async/ByteBufferList;->k(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 9
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->h()B

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_0

    .line 11
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->c:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/callback/DataCallback;->s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    return-object p0
.end method
