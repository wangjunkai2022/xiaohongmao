.class final Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel$b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "ContributorsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "it",
        "",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel$b$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel$b$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getBeanorignal()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;->w(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;D)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel$b$a;->a(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method