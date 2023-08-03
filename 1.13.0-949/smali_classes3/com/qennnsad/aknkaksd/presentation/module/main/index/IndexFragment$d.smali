.class final Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$d;
.super Lkotlin/jvm/internal/Lambda;
.source "IndexFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$d;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;

    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/a$e;->c:Lcom/qennnsad/aknkaksd/presentation/ui/main/a$e;

    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;->Z0(Lcom/qennnsad/aknkaksd/presentation/ui/main/a;)V

    :cond_2
    return-void
.end method
