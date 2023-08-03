.class final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FollowedAnchorAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFollowedAnchorAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FollowedAnchorAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorAdapter$AnchorHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,115:1\n254#2,2:116\n254#2,2:118\n254#2,2:120\n254#2,2:122\n254#2,2:124\n275#2,2:126\n*S KotlinDebug\n*F\n+ 1 FollowedAnchorAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorAdapter$AnchorHolder\n*L\n49#1:116,2\n52#1:118,2\n53#1:120,2\n55#1:122,2\n65#1:124,2\n67#1:126,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;",
        "item",
        "",
        "b",
        "Le5/n2;",
        "binding",
        "Le5/n2;",
        "c",
        "()Le5/n2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;Le5/n2;)V",
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
.field private final a:Le5/n2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;Le5/n2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/n2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;

    .line 2
    invoke-virtual {p2}, Le5/n2;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;->a:Le5/n2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;)V
    .locals 14
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->d()Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;->a:Le5/n2;

    iget-object v0, v0, Le5/n2;->c:Landroid/widget/ImageView;

    const-string v1, "binding.itemFollowAnchorSex"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getSex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/s1;->w(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;->a:Le5/n2;

    iget-object v0, v0, Le5/n2;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;->a:Le5/n2;

    iget-object v0, v0, Le5/n2;->b:Le5/r2;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;

    .line 5
    iget-object v2, v0, Le5/r2;->o:Landroid/widget/ImageView;

    const-string v3, "ivPkLabel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;->f(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;)Lg5/a;

    move-result-object v3

    invoke-virtual {v3}, Lg5/a;->H()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;->f(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;)Lg5/a;

    move-result-object v3

    invoke-virtual {v3}, Lg5/a;->v()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lb5/a;->j(Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x8

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 7
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v2, v0, Le5/r2;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getBroadcasting()Ljava/lang/String;

    move-result-object v3

    const-string v7, "y"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f1300b8

    goto :goto_2

    :cond_2
    const v3, 0x7f1300b9

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object v2, v0, Le5/r2;->d:Landroid/widget/ImageView;

    const-string v3, "itemHotAnchorImgToy"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getToyStatus()I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/16 v3, 0x8

    .line 10
    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v2, v0, Le5/r2;->e:Landroid/widget/ImageView;

    const-string v3, "itemHotAnchorImgVideo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getVideo_status()I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    const/16 v3, 0x8

    .line 12
    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v2, v0, Le5/r2;->n:Landroid/widget/ImageView;

    const-string v3, "ivLastWeekRank"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLastWeekRank()I

    move-result v3

    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->y(Landroid/widget/ImageView;I)V

    .line 14
    iget-object v2, v0, Le5/r2;->f:Landroid/widget/TextView;

    const-string v3, "itemHotAnchorTitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getRoomTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v3, 0x1

    :goto_8
    xor-int/2addr v3, v4

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    const/16 v3, 0x8

    .line 15
    :goto_9
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v2, v0, Le5/r2;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getRoomTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;->h(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getSnap()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_a

    move-object v2, v3

    goto :goto_a

    :cond_a
    const-string v7, "data.snap ?: \"\""

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 18
    iget-object v7, v0, Le5/r2;->c:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const v10, 0x7f080556

    const v11, 0x7f080556

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/qennnsad/aknkaksd/util/img/e;->h(Landroid/widget/ImageView;Landroid/net/Uri;ZIIILjava/lang/Object;)V

    .line 19
    :cond_b
    iget-object v1, v0, Le5/r2;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v1, v0, Le5/r2;->g:Landroid/widget/TextView;

    const-string v2, "itemHotAnchorTvIntro"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v1, v0, Le5/r2;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, v0, Le5/r2;->q:Landroid/widget/LinearLayout;

    const-string v2, "locationContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_b

    :cond_c
    const/4 v4, 0x0

    :cond_d
    :goto_b
    if-eqz v4, :cond_e

    const/4 v5, 0x4

    .line 24
    :cond_e
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v1, v0, Le5/r2;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v1, v0, Le5/r2;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->getOnlineCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/k;->a(Le5/r2;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    return-void
.end method

.method public final c()Le5/n2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;->a:Le5/n2;

    return-object v0
.end method
