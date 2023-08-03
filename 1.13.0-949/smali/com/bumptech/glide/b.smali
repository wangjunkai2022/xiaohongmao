.class public final Lcom/bumptech/glide/b;
.super Lcom/bumptech/glide/l;
.source "GenericTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/l<",
        "Lcom/bumptech/glide/b<",
        "TTranscodeType;>;TTranscodeType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/l;-><init>()V

    return-void
.end method

.method public static h(I)Lcom/bumptech/glide/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/bumptech/glide/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->e(I)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static i(Lcom/bumptech/glide/request/transition/g;)Lcom/bumptech/glide/b;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/transition/g<",
            "-TTranscodeType;>;)",
            "Lcom/bumptech/glide/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->f(Lcom/bumptech/glide/request/transition/g;)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static j(Lcom/bumptech/glide/request/transition/j$a;)Lcom/bumptech/glide/b;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/j$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/transition/j$a;",
            ")",
            "Lcom/bumptech/glide/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->g(Lcom/bumptech/glide/request/transition/j$a;)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static k()Lcom/bumptech/glide/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->b()Lcom/bumptech/glide/l;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;

    return-object v0
.end method
