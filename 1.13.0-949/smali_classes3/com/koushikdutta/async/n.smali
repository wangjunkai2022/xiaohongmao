.class public final synthetic Lcom/koushikdutta/async/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/SelectorWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/SelectorWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/n;->a:Lcom/koushikdutta/async/SelectorWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/n;->a:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->c(Lcom/koushikdutta/async/SelectorWrapper;)V

    return-void
.end method
