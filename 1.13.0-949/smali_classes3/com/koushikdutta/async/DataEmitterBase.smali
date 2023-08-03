.class public abstract Lcom/koushikdutta/async/DataEmitterBase;
.super Ljava/lang/Object;
.source "DataEmitterBase.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# instance fields
.field private a:Z

.field b:Lcom/koushikdutta/async/callback/CompletedCallback;

.field c:Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->b:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public final X(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/DataEmitterBase;->b:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public b0(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/DataEmitterBase;->c:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r0()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->c:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->a:Z

    .line 3
    invoke-virtual {p0}, Lcom/koushikdutta/async/DataEmitterBase;->B()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/koushikdutta/async/DataEmitterBase;->B()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
