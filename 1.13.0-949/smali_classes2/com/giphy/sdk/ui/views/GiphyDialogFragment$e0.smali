.class final synthetic Lcom/giphy/sdk/ui/views/GiphyDialogFragment$e0;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "GiphyDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->W1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/giphy/sdk/ui/universallist/g;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0015\u0010\u0004\u001a\u00110\u0000\u00a2\u0006\u000c\u0008\u0001\u0012\u0008\u0008\u0002\u0012\u0004\u0008\u0008(\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/universallist/g;",
        "Lkotlin/ParameterName;",
        "name",
        "itemData",
        "p1",
        "",
        "a",
        "(Lcom/giphy/sdk/ui/universallist/g;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 7

    const-class v3, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    const/4 v1, 0x1

    const-string v4, "onUserProfileInfoPressed"

    const-string v5, "onUserProfileInfoPressed(Lcom/giphy/sdk/ui/universallist/SmartItemData;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/giphy/sdk/ui/universallist/g;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/universallist/g;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/universallist/g;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/giphy/sdk/ui/universallist/g;

    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$e0;->a(Lcom/giphy/sdk/ui/universallist/g;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
