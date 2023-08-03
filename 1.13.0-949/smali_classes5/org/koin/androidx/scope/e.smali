.class public abstract Lorg/koin/androidx/scope/e;
.super Landroidx/fragment/app/Fragment;
.source "ScopeFragment.kt"

# interfaces
.implements Lorg/koin/android/scope/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0008\u0008\u0003\u0010\u0014\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001a\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0012\u001a\u00020\r8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/koin/androidx/scope/e;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/koin/android/scope/a;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "",
        "a",
        "Z",
        "initialiseScope",
        "Lorg/koin/core/scope/Scope;",
        "b",
        "Lorg/koin/androidx/scope/LifecycleScopeDelegate;",
        "getScope",
        "()Lorg/koin/core/scope/Scope;",
        "scope",
        "",
        "contentLayoutId",
        "<init>",
        "(IZ)V",
        "koin-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field static final synthetic c:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Z

.field private final b:Lorg/koin/androidx/scope/LifecycleScopeDelegate;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lorg/koin/androidx/scope/e;

    const-string v3, "scope"

    const-string v4, "getScope()Lorg/koin/core/scope/Scope;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lorg/koin/androidx/scope/e;->c:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lorg/koin/androidx/scope/e;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 3
    iput-boolean p2, p0, Lorg/koin/androidx/scope/e;->a:Z

    .line 4
    invoke-static {p0}, Lorg/koin/androidx/scope/b;->c(Landroidx/fragment/app/Fragment;)Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/koin/androidx/scope/e;->b:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/koin/androidx/scope/e;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public getScope()Lorg/koin/core/scope/Scope;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/androidx/scope/e;->b:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    sget-object v1, Lorg/koin/androidx/scope/e;->c:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->f(Landroidx/lifecycle/LifecycleOwner;Lkotlin/reflect/KProperty;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lorg/koin/androidx/scope/e;->a:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/koin/androidx/scope/e;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->z()Lw8/b;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Open Fragment Scope: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/koin/androidx/scope/e;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw8/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
