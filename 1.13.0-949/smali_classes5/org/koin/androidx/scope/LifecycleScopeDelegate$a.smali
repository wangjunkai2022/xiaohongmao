.class final Lorg/koin/androidx/scope/LifecycleScopeDelegate$a;
.super Lkotlin/jvm/internal/Lambda;
.source "LifecycleScopeDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/scope/LifecycleScopeDelegate;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/koin/core/Koin;",
        "Lorg/koin/core/scope/Scope;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "T",
        "Lorg/koin/core/Koin;",
        "koin",
        "Lorg/koin/core/scope/Scope;",
        "a",
        "(Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$a;->a:Landroidx/lifecycle/LifecycleOwner;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;
    .locals 3
    .param p1    # Lorg/koin/core/Koin;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$a;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Lorg/koin/core/component/c;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$a;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Lorg/koin/core/component/c;->e(Ljava/lang/Object;)Lz8/d;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$a;->a:Landroidx/lifecycle/LifecycleOwner;

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lorg/koin/core/Koin;->e(Ljava/lang/String;Lz8/a;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/Koin;

    invoke-virtual {p0, p1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate$a;->a(Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    return-object p1
.end method
