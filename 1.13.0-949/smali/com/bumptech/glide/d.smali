.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d$e;,
        Lcom/bumptech/glide/d$c;,
        Lcom/bumptech/glide/d$d;,
        Lcom/bumptech/glide/d$g;,
        Lcom/bumptech/glide/d$f;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/l<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/f$a;

.field private c:Lcom/bumptech/glide/load/engine/k;

.field private d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field private e:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

.field private f:Lcom/bumptech/glide/load/engine/cache/j;

.field private g:Lcom/bumptech/glide/load/engine/executor/a;

.field private h:Lcom/bumptech/glide/load/engine/executor/a;

.field private i:Lcom/bumptech/glide/load/engine/cache/a$a;

.field private j:Lcom/bumptech/glide/load/engine/cache/l;

.field private k:Lcom/bumptech/glide/manager/d;

.field private l:I

.field private m:Lcom/bumptech/glide/c$a;

.field private n:Lcom/bumptech/glide/manager/o$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/bumptech/glide/load/engine/executor/a;

.field private p:Z

.field private q:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/bumptech/glide/f$a;

    invoke-direct {v0}, Lcom/bumptech/glide/f$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcom/bumptech/glide/d;->l:I

    .line 5
    new-instance v0, Lcom/bumptech/glide/d$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d$a;-><init>(Lcom/bumptech/glide/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bumptech/glide/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method b(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/executor/a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->j()Lcom/bumptech/glide/load/engine/executor/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/executor/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/executor/a;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->f()Lcom/bumptech/glide/load/engine/executor/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/executor/a;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/executor/a;

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->c()Lcom/bumptech/glide/load/engine/executor/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/executor/a;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/cache/l;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/l$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/l$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/l$a;->a()Lcom/bumptech/glide/load/engine/cache/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/cache/l;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    if-nez v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/cache/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/l;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 13
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;-><init>(J)V

    iput-object v1, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    goto :goto_0

    .line 14
    :cond_5
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 15
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    if-nez v0, :cond_7

    .line 16
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;

    iget-object v1, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/cache/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/l;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/cache/j;

    if-nez v0, :cond_8

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/i;

    iget-object v1, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/cache/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/l;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/i;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/cache/j;

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/cache/a$a;

    if-nez v0, :cond_9

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/h;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/cache/a$a;

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    if-nez v0, :cond_a

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/engine/k;

    iget-object v2, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/cache/j;

    iget-object v3, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/cache/a$a;

    iget-object v4, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/executor/a;

    iget-object v5, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/executor/a;

    .line 23
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->n()Lcom/bumptech/glide/load/engine/executor/a;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/executor/a;

    iget-boolean v8, p0, Lcom/bumptech/glide/d;->p:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/engine/k;-><init>(Lcom/bumptech/glide/load/engine/cache/j;Lcom/bumptech/glide/load/engine/cache/a$a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    if-nez v0, :cond_b

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    goto :goto_1

    .line 26
    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/f$a;->c()Lcom/bumptech/glide/f;

    move-result-object v13

    .line 28
    new-instance v7, Lcom/bumptech/glide/manager/o;

    iget-object v0, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/manager/o$b;

    invoke-direct {v7, v0, v13}, Lcom/bumptech/glide/manager/o;-><init>(Lcom/bumptech/glide/manager/o$b;Lcom/bumptech/glide/f;)V

    .line 29
    new-instance v0, Lcom/bumptech/glide/c;

    iget-object v3, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    iget-object v4, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/cache/j;

    iget-object v5, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    iget-object v6, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    iget-object v8, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    iget v9, p0, Lcom/bumptech/glide/d;->l:I

    iget-object v10, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    iget-object v11, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    iget-object v12, p0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/cache/j;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/manager/o;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/f;)V

    return-object v0
.end method

.method public c(Lcom/bumptech/glide/load/engine/executor/a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/executor/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/executor/a;

    return-object p0
.end method

.method public d(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    return-object p0
.end method

.method public e(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    return-object p0
.end method

.method public f(Lcom/bumptech/glide/manager/d;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    return-object p0
.end method

.method public g(Lcom/bumptech/glide/c$a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/c$a;

    iput-object p1, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    return-object p0
.end method

.method public h(Lcom/bumptech/glide/request/h;)Lcom/bumptech/glide/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/d$b;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/d$b;-><init>(Lcom/bumptech/glide/d;Lcom/bumptech/glide/request/h;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/d;->g(Lcom/bumptech/glide/c$a;)Lcom/bumptech/glide/d;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Class;Lcom/bumptech/glide/l;)Lcom/bumptech/glide/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/l<",
            "*TT;>;)",
            "Lcom/bumptech/glide/d;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public j(Lcom/bumptech/glide/load/engine/cache/a$a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/cache/a$a;

    return-object p0
.end method

.method public k(Lcom/bumptech/glide/load/engine/executor/a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/executor/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/executor/a;

    return-object p0
.end method

.method public l(Z)Lcom/bumptech/glide/d;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    new-instance v1, Lcom/bumptech/glide/d$c;

    invoke-direct {v1}, Lcom/bumptech/glide/d$c;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/f$a;->d(Lcom/bumptech/glide/f$b;Z)Lcom/bumptech/glide/f$a;

    return-object p0
.end method

.method m(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/d;
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    return-object p0
.end method

.method public n(Z)Lcom/bumptech/glide/d;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    new-instance v1, Lcom/bumptech/glide/d$d;

    invoke-direct {v1}, Lcom/bumptech/glide/d$d;-><init>()V

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/f$a;->d(Lcom/bumptech/glide/f$b;Z)Lcom/bumptech/glide/f$a;

    return-object p0
.end method

.method public o(Z)Lcom/bumptech/glide/d;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/bumptech/glide/d;->p:Z

    return-object p0
.end method

.method public p(I)Lcom/bumptech/glide/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/d;->l:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Z)Lcom/bumptech/glide/d;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    new-instance v1, Lcom/bumptech/glide/d$e;

    invoke-direct {v1}, Lcom/bumptech/glide/d$e;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/f$a;->d(Lcom/bumptech/glide/f$b;Z)Lcom/bumptech/glide/f$a;

    return-object p0
.end method

.method public r(Lcom/bumptech/glide/load/engine/cache/j;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/cache/j;

    return-object p0
.end method

.method public s(Lcom/bumptech/glide/load/engine/cache/l$a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/l$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/cache/l$a;->a()Lcom/bumptech/glide/load/engine/cache/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d;->t(Lcom/bumptech/glide/load/engine/cache/l;)Lcom/bumptech/glide/d;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/bumptech/glide/load/engine/cache/l;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/cache/l;

    return-object p0
.end method

.method u(Lcom/bumptech/glide/manager/o$b;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/manager/o$b;

    return-void
.end method

.method public v(Lcom/bumptech/glide/load/engine/executor/a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/executor/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d;->w(Lcom/bumptech/glide/load/engine/executor/a;)Lcom/bumptech/glide/d;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/bumptech/glide/load/engine/executor/a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/executor/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/executor/a;

    return-object p0
.end method
