.class final Landroidx/lifecycle/StateViewModelFactory$addHandle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StateViewModelFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/StateViewModelFactory;->addHandle(Landroidx/lifecycle/SavedStateHandle;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly8/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Ly8/a;",
        "invoke",
        "()Ly8/a;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $definitionParameters:Ly8/a;

.field final synthetic $handle:Landroidx/lifecycle/SavedStateHandle;


# direct methods
.method constructor <init>(Ly8/a;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->$definitionParameters:Ly8/a;

    iput-object p2, p0, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->$handle:Landroidx/lifecycle/SavedStateHandle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->invoke()Ly8/a;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ly8/a;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->$definitionParameters:Ly8/a;

    iget-object v1, p0, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->$handle:Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {v0, v1}, Ly8/a;->a(Ljava/lang/Object;)Ly8/a;

    move-result-object v0

    return-object v0
.end method
