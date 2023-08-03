.class Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteArrayWaiter"
.end annotation


# instance fields
.field b:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    if-lez p1, :cond_0

    .line 2
    iput-object p2, p0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->b:Lcom/koushikdutta/async/PushParser$ParseCallback;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length should be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 0

    .line 1
    iget p1, p0, Lcom/koushikdutta/async/PushParser$Waiter;->a:I

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V

    .line 3
    iget-object p2, p0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->b:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/PushParser$ParseCallback;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
