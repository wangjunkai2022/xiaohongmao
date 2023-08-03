.class final Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$a$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SharedViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/shared/entities/LoginState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedViewModel.kt\ncom/qennnsad/aknkaksd/presentation/common/SharedViewModel$listenImLoginStatus$1$1$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,145:1\n230#2,5:146\n*S KotlinDebug\n*F\n+ 1 SharedViewModel.kt\ncom/qennnsad/aknkaksd/presentation/common/SharedViewModel$listenImLoginStatus$1$1$1\n*L\n111#1:146,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/LoginState;",
        "it",
        "",
        "a",
        "(Lcom/im/freechat/shared/entities/LoginState;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$a$a$a;->a:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/LoginState;)V
    .locals 3
    .param p1    # Lcom/im/freechat/shared/entities/LoginState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IM State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    instance-of p1, p1, Lcom/im/freechat/shared/entities/LoggedOut;

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$a$a$a;->a:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->E()Lkotlinx/coroutines/flow/t;

    move-result-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/t;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 5
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/t;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$a$a$a;->a:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->y(Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;)Lkotlinx/coroutines/j2;

    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/LoginState;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$a$a$a;->a(Lcom/im/freechat/shared/entities/LoginState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
