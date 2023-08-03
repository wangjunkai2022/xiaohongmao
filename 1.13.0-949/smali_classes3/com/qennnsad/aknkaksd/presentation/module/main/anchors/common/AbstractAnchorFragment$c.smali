.class final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$c;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AbstractAnchorFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->A0()Landroidx/paging/PagingDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;

    const/4 v1, 0x2

    const-string v4, "onBannerAdClick"

    const-string v5, "onBannerAdClick(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;

    invoke-virtual {v0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->J0(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$c;->a(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
