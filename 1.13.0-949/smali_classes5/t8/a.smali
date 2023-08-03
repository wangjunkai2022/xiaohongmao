.class public final Lt8/a;
.super Ljava/lang/Object;
.source "DefaultViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/lifecycle/ViewModel;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\'\u0010\u0006\u001a\u00028\u0001\"\u0008\u0008\u0001\u0010\u0002*\u00020\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lt8/a;",
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "Ljava/lang/Class;",
        "modelClass",
        "create",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "Lorg/koin/core/scope/Scope;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "b",
        "()Lorg/koin/core/scope/Scope;",
        "Ls8/c;",
        "parameters",
        "Ls8/c;",
        "a",
        "()Ls8/c;",
        "<init>",
        "(Lorg/koin/core/scope/Scope;Ls8/c;)V",
        "koin-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lorg/koin/core/scope/Scope;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ls8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls8/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/Scope;Ls8/c;)V
    .locals 1
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ls8/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Ls8/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt8/a;->a:Lorg/koin/core/scope/Scope;

    .line 3
    iput-object p2, p0, Lt8/a;->b:Ls8/c;

    return-void
.end method


# virtual methods
.method public final a()Ls8/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls8/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lt8/a;->b:Ls8/c;

    return-object v0
.end method

.method public final b()Lorg/koin/core/scope/Scope;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lt8/a;->a:Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lt8/a;->a:Lorg/koin/core/scope/Scope;

    iget-object v0, p0, Lt8/a;->b:Ls8/c;

    invoke-virtual {v0}, Ls8/c;->a()Lkotlin/reflect/KClass;

    move-result-object v0

    iget-object v1, p0, Lt8/a;->b:Ls8/c;

    invoke-virtual {v1}, Ls8/c;->c()Lz8/a;

    move-result-object v1

    iget-object v2, p0, Lt8/a;->b:Ls8/c;

    invoke-virtual {v2}, Ls8/c;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method

.method public synthetic create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/ViewModelProvider$Factory;Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method
