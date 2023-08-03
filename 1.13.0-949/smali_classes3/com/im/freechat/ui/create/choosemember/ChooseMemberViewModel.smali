.class public final Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;
.super Lcom/im/freechat/base/a;
.source "ChooseMemberViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR%\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\u000c0\u000c0\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;",
        "",
        "userId",
        "",
        "j",
        "Lcom/im/freechat/domain/usecase/chat/c;",
        "c",
        "Lcom/im/freechat/domain/usecase/chat/c;",
        "createSingleChatInteractor",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "k",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/chat/c;)V",
        "Directions",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final c:Lcom/im/freechat/domain/usecase/chat/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/chat/c;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/usecase/chat/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "createSingleChatInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;->c:Lcom/im/freechat/domain/usecase/chat/c;

    .line 3
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic i(Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;)Lcom/im/freechat/domain/usecase/chat/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;->c:Lcom/im/freechat/domain/usecase/chat/c;

    return-object p0
.end method


# virtual methods
.method public final j(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$a;-><init>(Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final k()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
