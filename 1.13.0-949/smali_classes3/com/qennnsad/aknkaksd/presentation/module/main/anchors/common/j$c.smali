.class final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AnchorAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$c;",
        "item",
        "",
        "b",
        "Le5/e2;",
        "binding",
        "Le5/e2;",
        "c",
        "()Le5/e2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;Le5/e2;)V",
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
.field private final a:Le5/e2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;Le5/e2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/e2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;

    .line 2
    invoke-virtual {p2}, Le5/e2;->b()Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;->a:Le5/e2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$c;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;->a:Le5/e2;

    invoke-virtual {v0}, Le5/e2;->b()Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$c;->d()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;->k(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;->h(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;)Lx4/a;

    move-result-object v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;->j(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;)Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->c(Ljava/util/List;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final c()Le5/e2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;->a:Le5/e2;

    return-object v0
.end method
