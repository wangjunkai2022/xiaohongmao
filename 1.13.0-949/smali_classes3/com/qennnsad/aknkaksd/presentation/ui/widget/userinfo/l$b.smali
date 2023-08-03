.class final Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;
.super Lkotlin/jvm/internal/Lambda;
.source "UserInfoDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;->f0(Landroid/view/View;)V
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

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;->y0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;)Z

    move-result v0

    const-string v1, "user.id"

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;->b0()Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;

    move-result-object v0

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;->x0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;)Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;->v0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;->b0()Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;

    move-result-object v0

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;->x0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;)Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;->v0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
