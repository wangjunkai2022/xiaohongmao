.class final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$a;
.super Lkotlin/jvm/internal/Lambda;
.source "FollowedAnchorViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroidx/paging/PagingSource;",
        "",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
        "invoke",
        "()Landroidx/paging/PagingSource;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;

.field final synthetic b:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$a;->b:Ljava/lang/Boolean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/paging/PagingSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingSource<",
            "Ljava/lang/Integer;",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/i;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->D(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;

    move-result-object v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$a;->b:Ljava/lang/Boolean;

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->C(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/i;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;ZLandroidx/lifecycle/MutableLiveData;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$a;->invoke()Landroidx/paging/PagingSource;

    move-result-object v0

    return-object v0
.end method
