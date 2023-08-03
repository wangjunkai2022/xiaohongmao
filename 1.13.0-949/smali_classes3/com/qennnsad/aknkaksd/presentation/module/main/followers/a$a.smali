.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FollowersAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFollowersAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FollowersAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersAdapter$FollowerViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,74:1\n254#2,2:75\n254#2,2:77\n*S KotlinDebug\n*F\n+ 1 FollowersAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersAdapter$FollowerViewHolder\n*L\n66#1:75,2\n68#1:77,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0008\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0007R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
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
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a$a;->a:Le5/c3;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a$a;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 7
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a$a;->a:Le5/c3;

    .line 2
    iget-object v1, v0, Le5/c3;->b:Landroid/widget/ImageView;

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a$a;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v3

    const-string v4, "avatar"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x7f0803e2

    .line 4
    invoke-static {v1, v2, v3, v4, v4}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    .line 5
    iget-object v1, v0, Le5/c3;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Le5/c3;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v0, Le5/c3;->f:Landroid/widget/TextView;

    const-string v2, "tvId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->isMystery()Z

    move-result v2

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 8
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, v0, Le5/c3;->d:Landroid/widget/ImageView;

    const-string v2, "ivSex"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getSex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/qennnsad/aknkaksd/util/s1;->w(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 10
    iget-object v1, v0, Le5/c3;->d:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->isMystery()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 11
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, v0, Le5/c3;->c:Landroid/widget/ImageView;

    const-string v1, "ivLevel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->isMystery()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/util/s1;->A(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()Le5/c3;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a$a;->a:Le5/c3;

    return-object v0
.end method
