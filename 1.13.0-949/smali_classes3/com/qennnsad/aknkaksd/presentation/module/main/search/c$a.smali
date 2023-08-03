.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchUserAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchUserAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchUserAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserAdapter$SearchUserViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,94:1\n254#2,2:95\n*S KotlinDebug\n*F\n+ 1 SearchUserAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserAdapter$SearchUserViewHolder\n*L\n80#1:95,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0008\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0007R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
        "data",
        "",
        "b",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Le5/c3;",
        "binding",
        "Le5/c3;",
        "c",
        "()Le5/c3;",
        "<init>",
        "(Le5/c3;Lcom/qennnsad/aknkaksd/data/repository/m;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Le5/c3;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le5/c3;Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 1
    .param p1    # Le5/c3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Le5/c3;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;->a:Le5/c3;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;)V
    .locals 6
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;->a:Le5/c3;

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->e()Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    move-result-object v1

    .line 3
    iget-object v2, v0, Le5/c3;->b:Landroid/widget/ImageView;

    .line 4
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;->getAvatar()Ljava/lang/String;

    move-result-object v4

    const-string v5, "avatar"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    const v5, 0x7f0803e2

    .line 5
    invoke-static {v2, v3, v4, v5, v5}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    .line 6
    iget-object v2, v0, Le5/c3;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, v0, Le5/c3;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5c0f\u7ea2\u5e3dID\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, v0, Le5/c3;->d:Landroid/widget/ImageView;

    const-string v3, "ivSex"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;->getSex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->w(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 9
    iget-object v2, v0, Le5/c3;->c:Landroid/widget/ImageView;

    const-string v3, "ivLevel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;->getEmceeLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->isMystery()Z

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/qennnsad/aknkaksd/util/s1;->z(Landroid/widget/ImageView;Ljava/lang/Integer;Z)V

    .line 10
    iget-object v0, v0, Le5/c3;->e:Landroid/widget/TextView;

    const-string v2, ""

    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->isMystery()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 14
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->f()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1303da

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()Le5/c3;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;->a:Le5/c3;

    return-object v0
.end method
