.class final Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$c;
.super Lkotlin/jvm/internal/Lambda;
.source "UserInfoDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;->f0(Landroid/view/View;)V
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
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$c;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$c;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;->X(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;)Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v0, "user.id"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/h1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
