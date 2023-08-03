.class final Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel$b;
.super Lkotlin/jvm/internal/Lambda;
.source "UserProfileViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->w()V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel$b;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel$b;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel$b;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    const v0, 0x7f1301b1

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel$b;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setIsHit(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel$b;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel$b;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
