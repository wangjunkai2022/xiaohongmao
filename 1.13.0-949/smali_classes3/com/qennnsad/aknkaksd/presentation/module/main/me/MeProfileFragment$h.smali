.class final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$h;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MeProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    const/4 v1, 0x1

    const-string v4, "onMenuClick"

    const-string v5, "onMenuClick(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeMenuItem;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;->N0(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$h;->a(Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
