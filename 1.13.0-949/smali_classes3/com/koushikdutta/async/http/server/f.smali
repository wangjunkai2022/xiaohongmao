.class public final synthetic Lcom/koushikdutta/async/http/server/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/f;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/f;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->q(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V

    return-void
.end method
