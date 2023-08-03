.class final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;
.super Lkotlin/jvm/internal/Lambda;
.source "BlacklistViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->u(Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlacklistViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlacklistViewModel.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$removeUserFromBlacklist$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,33:1\n1#2:34\n*E\n"
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;->b:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    :cond_1
    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
