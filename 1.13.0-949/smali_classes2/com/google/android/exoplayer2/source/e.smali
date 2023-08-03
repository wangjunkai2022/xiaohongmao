.class public abstract Lcom/google/android/exoplayer2/source/e;
.super Lcom/google/android/exoplayer2/source/a;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/e$a;,
        Lcom/google/android/exoplayer2/source/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/exoplayer2/source/a;"
    }
.end annotation


# instance fields
.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/google/android/exoplayer2/source/e$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/google/android/exoplayer2/upstream/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic B(Lcom/google/android/exoplayer2/source/e;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/e;->H(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method

.method private synthetic H(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/e;->I(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/e$b;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/e$b;->b:Lcom/google/android/exoplayer2/source/z$b;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/z;->b(Lcom/google/android/exoplayer2/source/z$b;)V

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/e$b;->c:Lcom/google/android/exoplayer2/source/e$a;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/z;->d(Lcom/google/android/exoplayer2/source/h0;)V

    .line 4
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/e$b;->c:Lcom/google/android/exoplayer2/source/e$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/z;->m(Lcom/google/android/exoplayer2/drm/s;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected final C(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/google/android/exoplayer2/util/w0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/e$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/e$b;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/e$b;->b:Lcom/google/android/exoplayer2/source/z$b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/z;->j(Lcom/google/android/exoplayer2/source/z$b;)V

    return-void
.end method

.method protected final D(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/google/android/exoplayer2/util/w0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/e$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/e$b;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/e$b;->b:Lcom/google/android/exoplayer2/source/z$b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/z;->i(Lcom/google/android/exoplayer2/source/z$b;)V

    return-void
.end method

.method protected E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/google/android/exoplayer2/util/w0;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/z$a;",
            ")",
            "Lcom/google/android/exoplayer2/source/z$a;"
        }
    .end annotation

    return-object p2
.end method

.method protected F(Ljava/lang/Object;J)J
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/google/android/exoplayer2/util/w0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    return-wide p2
.end method

.method protected G(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/google/android/exoplayer2/util/w0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method protected abstract I(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/google/android/exoplayer2/util/w0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/z;",
            "Lcom/google/android/exoplayer2/s2;",
            ")V"
        }
    .end annotation
.end method

.method protected final J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/google/android/exoplayer2/util/w0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/z;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/source/d;-><init>(Lcom/google/android/exoplayer2/source/e;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/e$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/e$a;-><init>(Lcom/google/android/exoplayer2/source/e;Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    new-instance v3, Lcom/google/android/exoplayer2/source/e$b;

    invoke-direct {v3, p2, v0, v1}, Lcom/google/android/exoplayer2/source/e$b;-><init>(Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/source/z$b;Lcom/google/android/exoplayer2/source/e$a;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e;->h:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/z;->c(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e;->h:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/z;->l(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/e;->i:Lcom/google/android/exoplayer2/upstream/p0;

    invoke-interface {p2, v0, p1}, Lcom/google/android/exoplayer2/source/z;->h(Lcom/google/android/exoplayer2/source/z$b;Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->x()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/source/z;->j(Lcom/google/android/exoplayer2/source/z$b;)V

    :cond_0
    return-void
.end method

.method protected final K(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/google/android/exoplayer2/util/w0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/e$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/e$b;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/e$b;->b:Lcom/google/android/exoplayer2/source/z$b;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/z;->b(Lcom/google/android/exoplayer2/source/z$b;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/e$b;->c:Lcom/google/android/exoplayer2/source/e$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/z;->d(Lcom/google/android/exoplayer2/source/h0;)V

    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/e$b;->c:Lcom/google/android/exoplayer2/source/e$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/z;->m(Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method public n()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/e$b;

    .line 2
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/z;->n()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected v()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/e$b;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/e$b;->b:Lcom/google/android/exoplayer2/source/z$b;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/z;->j(Lcom/google/android/exoplayer2/source/z$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected w()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/e$b;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/e$b;->b:Lcom/google/android/exoplayer2/source/z$b;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/z;->i(Lcom/google/android/exoplayer2/source/z$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected y(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e;->i:Lcom/google/android/exoplayer2/upstream/p0;

    .line 2
    invoke-static {}, Lcom/google/android/exoplayer2/util/z0;->z()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e;->h:Landroid/os/Handler;

    return-void
.end method
