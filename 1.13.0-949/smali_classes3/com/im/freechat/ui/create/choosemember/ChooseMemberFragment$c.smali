.class final Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$c;
.super Lkotlin/jvm/internal/Lambda;
.source "ChooseMemberFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->w0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseMemberFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseMemberFragment.kt\ncom/im/freechat/ui/create/choosemember/ChooseMemberFragment$initViews$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,126:1\n254#2,2:127\n*S KotlinDebug\n*F\n+ 1 ChooseMemberFragment.kt\ncom/im/freechat/ui/create/choosemember/ChooseMemberFragment$initViews$2\n*L\n73#1:127,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "it",
        "",
        "a",
        "(Ljava/util/List;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$c;->a:Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$c;->a:Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;

    invoke-static {v0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->m0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)Lf4/p;

    move-result-object v0

    iget-object v0, v0, Lf4/p;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v1, "binding.createFab"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$c;->a(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
