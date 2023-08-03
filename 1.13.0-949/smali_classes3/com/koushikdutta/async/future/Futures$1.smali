.class final Lcom/koushikdutta/async/future/Futures$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/Futures;->f(Ljava/util/List;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/future/Futures$1;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/koushikdutta/async/future/Futures$1;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/koushikdutta/async/future/Futures$1;->d:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/koushikdutta/async/future/Futures$1;->a:I

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/future/Futures$1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lcom/koushikdutta/async/future/Futures$1;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/koushikdutta/async/future/Futures$1;->a:I

    .line 3
    iget-object p2, p0, Lcom/koushikdutta/async/future/Futures$1;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/future/Futures$1;->c:Ljava/util/List;

    iget p2, p0, Lcom/koushikdutta/async/future/Futures$1;->a:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/future/Future;

    invoke-interface {p1, p0}, Lcom/koushikdutta/async/future/Future;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/future/Futures$1;->d:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object p2, p0, Lcom/koushikdutta/async/future/Futures$1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
