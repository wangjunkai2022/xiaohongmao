.class public final synthetic Lcom/koushikdutta/async/util/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/util/ThrottleTimeout;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/util/ThrottleTimeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/util/b;->a:Lcom/koushikdutta/async/util/ThrottleTimeout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/util/b;->a:Lcom/koushikdutta/async/util/ThrottleTimeout;

    invoke-static {v0}, Lcom/koushikdutta/async/util/ThrottleTimeout;->c(Lcom/koushikdutta/async/util/ThrottleTimeout;)V

    return-void
.end method
