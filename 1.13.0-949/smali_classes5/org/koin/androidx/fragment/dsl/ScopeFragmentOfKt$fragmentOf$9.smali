.class public final Lorg/koin/androidx/fragment/dsl/ScopeFragmentOfKt$fragmentOf$9;
.super Lkotlin/jvm/internal/Lambda;
.source "ScopeFragmentOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/fragment/dsl/ScopeFragmentOfKt;->l(Lb9/d;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeFragmentOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeFragmentOf.kt\norg/koin/androidx/fragment/dsl/ScopeFragmentOfKt$fragmentOf$9\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,193:1\n63#2:194\n127#3,5:195\n*S KotlinDebug\n*F\n+ 1 ScopeFragmentOf.kt\norg/koin/androidx/fragment/dsl/ScopeFragmentOfKt$fragmentOf$9\n*L\n95#1:194\n95#1:195,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u000b\u001a\u00028\u0000\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u0001\"\u0006\u0008\u0003\u0010\u0004\u0018\u0001\"\u0006\u0008\u0004\u0010\u0005\u0018\u0001*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "Landroidx/fragment/app/Fragment;",
        "R",
        "T1",
        "T2",
        "T3",
        "T4",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "it",
        "invoke",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/fragment/app/Fragment;",
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
.field final synthetic a:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "TT1;TT2;TT3;TT4;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/androidx/fragment/dsl/ScopeFragmentOfKt$fragmentOf$9;->a:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/fragment/app/Fragment;
    .locals 7
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ly8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Ly8/a;",
            ")TR;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "$this$_factoryInstanceFactory"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lorg/koin/androidx/fragment/dsl/ScopeFragmentOfKt$fragmentOf$9;->a:Lkotlin/jvm/functions/Function4;

    const/4 v1, 0x4

    const-string v2, "T1"

    .line 2
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "T2"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v3, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "T3"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {p1, v5, v3, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "T4"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-interface {p2, v2, v4, v5, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Ly8/a;

    invoke-virtual {p0, p1, p2}, Lorg/koin/androidx/fragment/dsl/ScopeFragmentOfKt$fragmentOf$9;->invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
