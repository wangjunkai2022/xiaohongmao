.class Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LenByteBufferListWaiter"
.end annotation


# instance fields
.field private final b:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;->b:Lcom/koushikdutta/async/PushParser$ParseCallback;

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->s()I

    move-result p1

    .line 2
    new-instance p2, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;->b:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-direct {p2, p1, v0}, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;-><init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    return-object p2
.end method
