.class public final synthetic Lcom/koushikdutta/async/future/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/future/MultiFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/MultiFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/o;->a:Lcom/koushikdutta/async/future/MultiFuture;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/o;->a:Lcom/koushikdutta/async/future/MultiFuture;

    check-cast p2, Lcom/koushikdutta/async/future/Future;

    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->m0(Lcom/koushikdutta/async/future/MultiFuture;Ljava/lang/Exception;Lcom/koushikdutta/async/future/Future;)V

    return-void
.end method
