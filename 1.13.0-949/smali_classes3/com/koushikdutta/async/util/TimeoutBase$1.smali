.class Lcom/koushikdutta/async/util/TimeoutBase$1;
.super Ljava/lang/Object;
.source "TimeoutBase.java"

# interfaces
.implements Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Lcom/koushikdutta/async/AsyncServer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic b:Lcom/koushikdutta/async/util/TimeoutBase;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/util/TimeoutBase;Lcom/koushikdutta/async/AsyncServer;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/util/TimeoutBase$1;->b:Lcom/koushikdutta/async/util/TimeoutBase;

    iput-object p2, p0, Lcom/koushikdutta/async/util/TimeoutBase$1;->a:Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase$1;->a:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncServer;->e0(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {p1}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase$1;->a:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method
