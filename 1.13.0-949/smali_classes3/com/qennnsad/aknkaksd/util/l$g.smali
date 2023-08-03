.class public final Lcom/qennnsad/aknkaksd/util/l$g;
.super Ljava/lang/Object;
.source "ActivityExt.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/l;->L(Landroid/app/Activity;Lg5/a;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/qennnsad/aknkaksd/util/l$g",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;",
        "dialog",
        "",
        "a",
        "b",
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
.field final synthetic a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/l$g;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/l$g;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/l$g;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;->k:Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/l$g;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method
