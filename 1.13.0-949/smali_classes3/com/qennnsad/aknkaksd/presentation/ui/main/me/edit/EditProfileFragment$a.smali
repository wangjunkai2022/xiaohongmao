.class final Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;
.super Lkotlin/jvm/internal/Lambda;
.source "EditProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->Y0(Le5/u;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/Dialog;Landroid/content/DialogInterface;)V
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
.field final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

.field final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;",
            "Landroid/app/Dialog;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;->c:Landroid/app/Dialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 4
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_1

    const v0, 0x7f130142

    .line 5
    invoke-static {v0, v4, v6, v5}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "formatter.format(curDate)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v3, v0, :cond_2

    const v0, 0x7f130140

    .line 7
    invoke-static {v0, v4, v6, v5}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/util/o$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m1()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;->u(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    return-void
.end method
