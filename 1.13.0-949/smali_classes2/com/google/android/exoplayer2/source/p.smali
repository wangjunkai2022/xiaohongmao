.class public final Lcom/google/android/exoplayer2/source/p;
.super Lcom/google/android/exoplayer2/source/e;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/p$a;,
        Lcom/google/android/exoplayer2/source/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/e<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final j:Lcom/google/android/exoplayer2/source/r;

.field private final k:I

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/z$a;",
            "Lcom/google/android/exoplayer2/source/z$a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/w;",
            "Lcom/google/android/exoplayer2/source/z$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/z;)V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/p;-><init>(Lcom/google/android/exoplayer2/source/z;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/z;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/e;-><init>()V

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/source/r;

    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/source/r;-><init>(Lcom/google/android/exoplayer2/source/z;Z)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/p;->j:Lcom/google/android/exoplayer2/source/r;

    .line 5
    iput p2, p0, Lcom/google/android/exoplayer2/source/p;->k:I

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->l:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->m:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected bridge synthetic E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->L(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic I(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->M(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method

.method protected L(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->k:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->l:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/android/exoplayer2/source/z$a;

    :cond_0
    return-object p2
.end method

.method protected M(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->k:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/source/p$b;

    iget p2, p0, Lcom/google/android/exoplayer2/source/p;->k:I

    invoke-direct {p1, p3, p2}, Lcom/google/android/exoplayer2/source/p$b;-><init>(Lcom/google/android/exoplayer2/s2;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/p$a;-><init>(Lcom/google/android/exoplayer2/s2;)V

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->z(Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->k:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->j:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/r;->L(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/q;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/z$a;->d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->l:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->j:Lcom/google/android/exoplayer2/source/r;

    .line 7
    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/google/android/exoplayer2/source/r;->L(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/q;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/p;->m:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public e()Lcom/google/android/exoplayer2/b1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->j:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/r;->e()Lcom/google/android/exoplayer2/b1;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->j:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/r;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/source/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->j:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/r;->g(Lcom/google/android/exoplayer2/source/w;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/z$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Lcom/google/android/exoplayer2/s2;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->k:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/p$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->j:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/r;->P()Lcom/google/android/exoplayer2/s2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/p;->k:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/p$b;-><init>(Lcom/google/android/exoplayer2/s2;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/p$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->j:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/r;->P()Lcom/google/android/exoplayer2/s2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/p$a;-><init>(Lcom/google/android/exoplayer2/s2;)V

    :goto_0
    return-object v0
.end method

.method protected y(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/e;->y(Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->j:Lcom/google/android/exoplayer2/source/r;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/e;->J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;)V

    return-void
.end method
