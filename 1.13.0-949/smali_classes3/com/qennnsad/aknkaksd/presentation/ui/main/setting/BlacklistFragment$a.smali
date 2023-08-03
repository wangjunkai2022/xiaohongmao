.class final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a;
.super Lkotlin/jvm/internal/Lambda;
.source "BlacklistFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v0, "requireActivity()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;

    const v2, 0x7f130126

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;

    const v3, 0x7f130125

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;

    invoke-direct {v7, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/qennnsad/aknkaksd/util/l;->P(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method
