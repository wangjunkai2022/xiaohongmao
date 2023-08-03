.class public Lcom/bumptech/glide/load/engine/cache/k;
.super Ljava/lang/Object;
.source "MemoryCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/j;


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/cache/j$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(F)V
    .locals 0

    return-void
.end method

.method public d(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;)",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/k;->a:Lcom/bumptech/glide/load/engine/cache/j$a;

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/cache/j$a;->a(Lcom/bumptech/glide/load/engine/u;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lcom/bumptech/glide/load/engine/cache/j$a;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/j$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/k;->a:Lcom/bumptech/glide/load/engine/cache/j$a;

    return-void
.end method

.method public getCurrentSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
