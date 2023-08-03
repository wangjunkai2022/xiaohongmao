.class public final synthetic Lcom/koushikdutta/async/http/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/f;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->c0(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
