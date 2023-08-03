.class Lcom/google/android/exoplayer2/ext/mediasession/b$d;
.super Landroid/support/v4/media/session/MediaSessionCompat$b;
.source "MediaSessionConnector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/v1$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/mediasession/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private f:I

.field private g:I

.field final synthetic h:Lcom/google/android/exoplayer2/ext/mediasession/b;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/mediasession/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/mediasession/b;Lcom/google/android/exoplayer2/ext/mediasession/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$d;-><init>(Lcom/google/android/exoplayer2/ext/mediasession/b;)V

    return-void
.end method


# virtual methods
.method public synthetic A(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->a(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/audio/e;)V

    return-void
.end method

.method public synthetic B(Lcom/google/android/exoplayer2/b1;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->j(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/b1;I)V

    return-void
.end method

.method public synthetic C(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->m(Lcom/google/android/exoplayer2/v1$h;ZI)V

    return-void
.end method

.method public synthetic D(Lcom/google/android/exoplayer2/device/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->e(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/device/b;)V

    return-void
.end method

.method public synthetic E(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->i(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public F(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 9
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/ResultReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->b(Lcom/google/android/exoplayer2/ext/mediasession/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->b(Lcom/google/android/exoplayer2/ext/mediasession/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/ext/mediasession/b$c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v5

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/ext/mediasession/b$c;->o(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->c(Lcom/google/android/exoplayer2/ext/mediasession/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->c(Lcom/google/android/exoplayer2/ext/mediasession/b;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/ext/mediasession/b$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/ext/mediasession/b$c;->o(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public synthetic G(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->e(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public H(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->t(Lcom/google/android/exoplayer2/ext/mediasession/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->t(Lcom/google/android/exoplayer2/ext/mediasession/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/mediasession/b$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$e;->a(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    :cond_0
    return-void
.end method

.method public I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x40

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/j;->g(Lcom/google/android/exoplayer2/v1;)Z

    :cond_0
    return-void
.end method

.method public J(Landroid/content/Intent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->k(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->m(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$g;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    .line 4
    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v4}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v4

    .line 5
    invoke-interface {v0, v3, v4, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$g;->a(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 6
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->J(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/j;->m(Lcom/google/android/exoplayer2/v1;Z)Z

    :cond_0
    return-void
.end method

.method public L()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->g(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/j;->i(Lcom/google/android/exoplayer2/v1;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/ext/mediasession/b;->r(Lcom/google/android/exoplayer2/ext/mediasession/b;Lcom/google/android/exoplayer2/v1;IJ)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/v1;

    .line 10
    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/j;->m(Lcom/google/android/exoplayer2/v1;Z)Z

    :cond_3
    return-void
.end method

.method public M(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x400

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->d(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->t(Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public N(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x800

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->d(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->c(Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public O(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x2000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->d(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->j(Landroid/net/Uri;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x4000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->d(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->g(Z)V

    :cond_0
    return-void
.end method

.method public Q(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/32 v1, 0x8000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->d(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->t(Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public R(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/32 v1, 0x10000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->d(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->c(Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public S(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/32 v1, 0x20000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->d(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->j(Landroid/net/Uri;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public T(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->g(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->h(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$k;->s(Lcom/google/android/exoplayer2/v1;Landroid/support/v4/media/MediaDescriptionCompat;)V

    :cond_0
    return-void
.end method

.method public synthetic U(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->n(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public W()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x8

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/j;->b(Lcom/google/android/exoplayer2/v1;)Z

    :cond_0
    return-void
.end method

.method public synthetic X()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/w1;->q(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public Y(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x100

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->r(Lcom/google/android/exoplayer2/ext/mediasession/b;Lcom/google/android/exoplayer2/v1;IJ)V

    :cond_0
    return-void
.end method

.method public Z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->i(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->j(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$b;->n(Lcom/google/android/exoplayer2/v1;Z)V

    :cond_0
    return-void
.end method

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->v(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic a0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->m(Lcom/google/android/exoplayer2/v1$f;ZI)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/video/b0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->A(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/video/b0;)V

    return-void
.end method

.method public b0(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/32 v1, 0x400000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/v1;->e()Lcom/google/android/exoplayer2/t1;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/t1;->e(F)Lcom/google/android/exoplayer2/t1;

    move-result-object p1

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/j;->a(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/t1;)Z

    :cond_0
    return-void
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/t1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->n(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public synthetic c0(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/m;->c(Lcom/google/android/exoplayer2/video/n;IIIF)V

    return-void
.end method

.method public d0(Landroid/support/v4/media/RatingCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->e(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->f(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$m;->f(Lcom/google/android/exoplayer2/v1;Landroid/support/v4/media/RatingCompat;)V

    :cond_0
    return-void
.end method

.method public synthetic e(Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/x1;->r(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V

    return-void
.end method

.method public synthetic e0(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->u(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->p(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public f0(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->e(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->f(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$m;->k(Lcom/google/android/exoplayer2/v1;Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->w(Lcom/google/android/exoplayer2/v1$h;Ljava/util/List;)V

    return-void
.end method

.method public g0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/32 v1, 0x40000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/j;->e(Lcom/google/android/exoplayer2/v1;I)Z

    :cond_2
    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/v1$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->c(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1$c;)V

    return-void
.end method

.method public h0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/32 v1, 0x200000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/j;->d(Lcom/google/android/exoplayer2/v1;Z)Z

    :cond_1
    return-void
.end method

.method public synthetic i(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->t(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->s(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->l(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b$l;->p(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;)V

    :cond_0
    return-void
.end method

.method public synthetic j(Lcom/google/android/exoplayer2/s2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->y(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/s2;I)V

    return-void
.end method

.method public j0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->s(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->l(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b$l;->q(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;)V

    :cond_0
    return-void
.end method

.method public synthetic k(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->b(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public k0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x1000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->s(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->l(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$l;->b(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;J)V

    :cond_0
    return-void
.end method

.method public synthetic l(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->o(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/j;->f(Lcom/google/android/exoplayer2/v1;Z)Z

    :cond_0
    return-void
.end method

.method public synthetic m(Lcom/google/android/exoplayer2/f1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->k(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public synthetic n(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->u(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic o(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->l(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic p(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->f(Lcom/google/android/exoplayer2/v1$h;IZ)V

    return-void
.end method

.method public synthetic q()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/x1;->s(Lcom/google/android/exoplayer2/v1$h;)V

    return-void
.end method

.method public synthetic r(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->d(Lcom/google/android/exoplayer2/v1$h;Ljava/util/List;)V

    return-void
.end method

.method public synthetic s(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->z(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V

    return-void
.end method

.method public synthetic t(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->x(Lcom/google/android/exoplayer2/v1$h;II)V

    return-void
.end method

.method public synthetic u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->q(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public synthetic v(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->h(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic w(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->B(Lcom/google/android/exoplayer2/v1$h;F)V

    return-void
.end method

.method public x(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->g(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->h(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$k;->i(Lcom/google/android/exoplayer2/v1;Landroid/support/v4/media/MediaDescriptionCompat;)V

    :cond_0
    return-void
.end method

.method public y(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->g(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->h(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b$k;->m(Lcom/google/android/exoplayer2/v1;Landroid/support/v4/media/MediaDescriptionCompat;I)V

    :cond_0
    return-void
.end method

.method public z(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V
    .locals 6

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/v1$g;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->f:I

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->l(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->l(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$l;->a(Lcom/google/android/exoplayer2/v1;)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_1
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/v1$g;->a(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v4

    .line 8
    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v5}, Lcom/google/android/exoplayer2/ext/mediasession/b;->l(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/mediasession/b;->l(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$l;->l(Lcom/google/android/exoplayer2/v1;)V

    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    .line 10
    :cond_4
    iget v5, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->g:I

    if-ne v5, v0, :cond_3

    iget v5, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->f:I

    if-eq v5, v4, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    :goto_3
    iput v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->g:I

    const/4 v0, 0x1

    .line 12
    :cond_6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->f:I

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 13
    fill-array-data p1, :array_0

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/v1$g;->b([I)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v3, 0x1

    :cond_7
    new-array p1, v2, [I

    const/16 v4, 0xa

    aput v4, p1, v1

    .line 14
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/v1$g;->b([I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->G()V

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    if-eqz v2, :cond_9

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    :cond_9
    if-eqz v0, :cond_a

    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b$d;->h:Lcom/google/android/exoplayer2/ext/mediasession/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->E()V

    :cond_a
    return-void

    :array_0
    .array-data 4
        0x5
        0x6
        0x8
        0x9
        0xd
    .end array-data
.end method
