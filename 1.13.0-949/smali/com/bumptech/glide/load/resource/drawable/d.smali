.class public final Lcom/bumptech/glide/load/resource/drawable/d;
.super Lcom/bumptech/glide/l;
.source "DrawableTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/l<",
        "Lcom/bumptech/glide/load/resource/drawable/d;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/l;-><init>()V

    return-void
.end method

.method public static l(Lcom/bumptech/glide/request/transition/g;)Lcom/bumptech/glide/load/resource/drawable/d;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/drawable/d;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->f(Lcom/bumptech/glide/request/transition/g;)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/drawable/d;

    return-object p0
.end method

.method public static m()Lcom/bumptech/glide/load/resource/drawable/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/d;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/d;->h()Lcom/bumptech/glide/load/resource/drawable/d;

    move-result-object v0

    return-object v0
.end method

.method public static n(I)Lcom/bumptech/glide/load/resource/drawable/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/d;->i(I)Lcom/bumptech/glide/load/resource/drawable/d;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lcom/bumptech/glide/request/transition/c$a;)Lcom/bumptech/glide/load/resource/drawable/d;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/d;->j(Lcom/bumptech/glide/request/transition/c$a;)Lcom/bumptech/glide/load/resource/drawable/d;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/bumptech/glide/request/transition/c;)Lcom/bumptech/glide/load/resource/drawable/d;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/d;->k(Lcom/bumptech/glide/request/transition/c;)Lcom/bumptech/glide/load/resource/drawable/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public h()Lcom/bumptech/glide/load/resource/drawable/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/transition/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/c$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/drawable/d;->j(Lcom/bumptech/glide/request/transition/c$a;)Lcom/bumptech/glide/load/resource/drawable/d;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lcom/bumptech/glide/load/resource/drawable/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/transition/c$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/c$a;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/drawable/d;->j(Lcom/bumptech/glide/request/transition/c$a;)Lcom/bumptech/glide/load/resource/drawable/d;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/bumptech/glide/request/transition/c$a;)Lcom/bumptech/glide/load/resource/drawable/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/transition/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/request/transition/c$a;->a()Lcom/bumptech/glide/request/transition/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/d;->k(Lcom/bumptech/glide/request/transition/c;)Lcom/bumptech/glide/load/resource/drawable/d;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/bumptech/glide/request/transition/c;)Lcom/bumptech/glide/load/resource/drawable/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/transition/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->f(Lcom/bumptech/glide/request/transition/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/d;

    return-object p1
.end method
