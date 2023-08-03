.class public final synthetic Lcom/koushikdutta/async/util/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/util/IdleTimeout;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/util/IdleTimeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/util/a;->a:Lcom/koushikdutta/async/util/IdleTimeout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/util/a;->a:Lcom/koushikdutta/async/util/IdleTimeout;

    invoke-static {v0}, Lcom/koushikdutta/async/util/IdleTimeout;->c(Lcom/koushikdutta/async/util/IdleTimeout;)V

    return-void
.end method
