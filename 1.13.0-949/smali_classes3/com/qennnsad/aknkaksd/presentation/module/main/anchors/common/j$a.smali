.class final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AnchorAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnchorAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnchorAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AnchorAdapter$AdHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,222:1\n254#2,2:223\n254#2,2:225\n254#2,2:227\n254#2,2:229\n*S KotlinDebug\n*F\n+ 1 AnchorAdapter.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AnchorAdapter$AdHolder\n*L\n148#1:223,2\n149#1:225,2\n157#1:227,2\n158#1:229,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;",
        "item",
        "",
        "b",
        "Le5/q2;",
        "binding",
        "Le5/q2;",
        "c",
        "()Le5/q2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;Le5/q2;)V",
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
.field private final a:Le5/q2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;Le5/q2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/q2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;

    .line 2
    invoke-virtual {p2}, Le5/q2;->b()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;)V
    .locals 9
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;->d()Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->getAdType()I

    move-result v1

    const/16 v2, 0x8

    const-string v3, "binding.adTextLayout"

    const-string v4, "binding.adImgView"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v5, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 3
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "Unexpected ad type"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$b;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    iget-object v0, v0, Le5/q2;->b:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    iget-object v0, v0, Le5/q2;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;->d()Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->getContent()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    iget-object v0, v0, Le5/q2;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;->d()Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    iget-object v0, v0, Le5/q2;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;->d()Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    iget-object v0, v0, Le5/q2;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;->d()Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;->getTextColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    iget-object v0, v0, Le5/q2;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;->d()Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;->getTextColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$b;->y(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    iget-object v1, v1, Le5/q2;->b:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    iget-object v1, v1, Le5/q2;->d:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    iget-object v2, v1, Le5/q2;->b:Landroid/widget/ImageView;

    .line 19
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;->k(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;->d()Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->getPicPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f080555

    const v6, 0x7f080555

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 20
    invoke-static/range {v2 .. v8}, Lcom/qennnsad/aknkaksd/util/img/e;->h(Landroid/widget/ImageView;Landroid/net/Uri;ZIIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final c()Le5/q2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;->a:Le5/q2;

    return-object v0
.end method
