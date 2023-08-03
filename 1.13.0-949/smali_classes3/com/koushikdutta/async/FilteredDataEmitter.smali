.class public Lcom/koushikdutta/async/FilteredDataEmitter;
.super Lcom/koushikdutta/async/DataEmitterBase;
.source "FilteredDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;
.implements Lcom/koushikdutta/async/callback/DataCallback;
.implements Lcom/koushikdutta/async/wrapper/DataEmitterWrapper;
.implements Lcom/koushikdutta/async/DataTrackingEmitter;


# instance fields
.field private d:Lcom/koushikdutta/async/DataEmitter;

.field private e:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

.field private f:I

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/DataEmitterBase;-><init>()V

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    return v0
.end method

.method public G(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    .line 4
    invoke-interface {p1, p0}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(Lcom/koushikdutta/async/FilteredDataEmitter;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public S(Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->e:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    return-void
.end method

.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->g:Z

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    :cond_0
    return-void
.end method

.method public g0()Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->e:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    return-object v0
.end method

.method public h0()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->h0()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->i()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->k()V

    return-void
.end method

.method public l0()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->pause()V

    return-void
.end method

.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->g:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    .line 4
    :cond_1
    invoke-static {p0, p2}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    if-eqz p2, :cond_2

    .line 5
    iget p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->e:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 7
    iget p2, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->f:I

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;->a(I)V

    :cond_3
    return-void
.end method
