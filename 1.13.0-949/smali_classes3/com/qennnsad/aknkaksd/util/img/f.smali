.class public final Lcom/qennnsad/aknkaksd/util/img/f;
.super Ljava/lang/Object;
.source "GlideUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a=\u0010\u0008\u001a\u00020\u0006\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00028\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroid/widget/ImageView;",
        "T",
        "Landroid/net/Uri;",
        "uri",
        "Lkotlin/Function1;",
        "",
        "",
        "cacheListener",
        "a",
        "(Landroid/widget/ImageView;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/content/Context;",
        "c",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Landroid/widget/ImageView;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/ImageView;",
            ">(TT;",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gif"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/bumptech/glide/c;->F(Landroid/view/View;)Lcom/bumptech/glide/k;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/j;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->p1(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/qennnsad/aknkaksd/util/img/e;->a:Lcom/qennnsad/aknkaksd/util/img/e;

    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/util/img/e;->b(Lkotlin/jvm/functions/Function1;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->m1(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    const-string v0, "asGif()\n                \u2026eListener(cacheListener))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/k;->J(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/qennnsad/aknkaksd/util/img/e;->a:Lcom/qennnsad/aknkaksd/util/img/e;

    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/util/img/e;->b(Lkotlin/jvm/functions/Function1;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->m1(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    const-string v0, "load(uri)\n              \u2026eListener(cacheListener))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    .line 8
    :cond_1
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/request/a;->l0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    const p2, 0x7f0801cf

    .line 9
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/a;->z(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    .line 10
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->k1(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/r;

    return-void
.end method

.method public static synthetic b(Landroid/widget/ImageView;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/img/f;->a(Landroid/widget/ImageView;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final c(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->E(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/k;->J(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p0

    .line 3
    sget-object p1, Lcom/bumptech/glide/load/engine/j;->e:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a;->r(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->y1()Lcom/bumptech/glide/request/target/p;

    return-void
.end method
