.class public final Lcom/qennnsad/aknkaksd/util/img/a;
.super Ljava/lang/Object;
.source "GlideApp.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/c;->d()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/bumptech/glide/c;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0, p1}, Lcom/bumptech/glide/c;->q(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    return-void
.end method

.method public static f(Lcom/bumptech/glide/c;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->r(Lcom/bumptech/glide/c;)V

    return-void
.end method

.method public static g()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/c;->y()V

    return-void
.end method

.method public static h(Landroid/app/Activity;)Lcom/qennnsad/aknkaksd/util/img/d;
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->C(Landroid/app/Activity;)Lcom/bumptech/glide/k;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/util/img/d;

    return-object p0
.end method

.method public static i(Landroid/app/Fragment;)Lcom/qennnsad/aknkaksd/util/img/d;
    .locals 0
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->D(Landroid/app/Fragment;)Lcom/bumptech/glide/k;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/util/img/d;

    return-object p0
.end method

.method public static j(Landroid/content/Context;)Lcom/qennnsad/aknkaksd/util/img/d;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->E(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/util/img/d;

    return-object p0
.end method

.method public static k(Landroid/view/View;)Lcom/qennnsad/aknkaksd/util/img/d;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->F(Landroid/view/View;)Lcom/bumptech/glide/k;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/util/img/d;

    return-object p0
.end method

.method public static l(Landroidx/fragment/app/Fragment;)Lcom/qennnsad/aknkaksd/util/img/d;
    .locals 0
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->G(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/k;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/util/img/d;

    return-object p0
.end method

.method public static m(Landroidx/fragment/app/FragmentActivity;)Lcom/qennnsad/aknkaksd/util/img/d;
    .locals 0
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->H(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/k;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/util/img/d;

    return-object p0
.end method
