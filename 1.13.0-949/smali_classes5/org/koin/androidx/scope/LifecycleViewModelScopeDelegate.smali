.class public final Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;
.super Ljava/lang/Object;
.source "LifecycleViewModelScopeDelegate.kt"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadOnlyProperty<",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lorg/koin/core/scope/Scope;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLifecycleViewModelScopeDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleViewModelScopeDelegate.kt\norg/koin/androidx/scope/LifecycleViewModelScopeDelegate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B-\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00030\u0010\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001d\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00022\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0096\u0002R\u0017\u0010\u000c\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000eR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00030\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u001a\u001a\u00060\u0016j\u0002`\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;",
        "Lkotlin/properties/ReadOnlyProperty;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lorg/koin/core/scope/Scope;",
        "thisRef",
        "Lkotlin/reflect/KProperty;",
        "property",
        "c",
        "a",
        "Landroidx/lifecycle/LifecycleOwner;",
        "b",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "Lorg/koin/core/Koin;",
        "Lorg/koin/core/Koin;",
        "koin",
        "Lkotlin/Function1;",
        "Lkotlin/jvm/functions/Function1;",
        "createScope",
        "d",
        "Lorg/koin/core/scope/Scope;",
        "_scope",
        "",
        "Lorg/koin/core/qualifier/QualifierValue;",
        "e",
        "Ljava/lang/String;",
        "scopeId",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;)V",
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
.field private final a:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lorg/koin/core/Koin;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lorg/koin/core/Koin;",
            "Lorg/koin/core/scope/Scope;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private d:Lorg/koin/core/scope/Scope;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lorg/koin/core/Koin;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lorg/koin/core/Koin;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/Koin;",
            "Lorg/koin/core/scope/Scope;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    .line 3
    iput-object p2, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->b:Lorg/koin/core/Koin;

    .line 4
    iput-object p3, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->c:Lkotlin/jvm/functions/Function1;

    .line 5
    invoke-static {p1}, Lorg/koin/core/component/c;->e(Ljava/lang/Object;)Lz8/d;

    move-result-object v0

    invoke-virtual {v0}, Lz8/d;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->e:Ljava/lang/String;

    .line 6
    instance-of v1, p1, Landroidx/activity/ComponentActivity;

    .line 7
    invoke-virtual {p2}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup scope: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw8/b;->b(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, v0}, Lorg/koin/core/Koin;->H(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/koin/core/scope/Scope;

    :cond_0
    iput-object v0, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "got scope: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lw8/b;->b(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p2, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$3;

    invoke-direct {p2, v1, p0}, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$3;-><init>(Lw8/b;Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 12
    new-instance p3, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$a;

    invoke-direct {p3, p1}, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$a;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic a(Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;)Lorg/koin/core/scope/Scope;
    .locals 0

    iget-object p0, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    return-object p0
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public c(Landroidx/lifecycle/LifecycleOwner;Lkotlin/reflect/KProperty;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KProperty;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Lorg/koin/core/scope/Scope;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lorg/koin/androidx/scope/d;->a(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->b:Lorg/koin/core/Koin;

    iget-object p2, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Lorg/koin/core/component/c;->e(Ljava/lang/Object;)Lz8/d;

    move-result-object p2

    invoke-virtual {p2}, Lz8/d;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/koin/core/Koin;->H(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->c:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->b:Lorg/koin/core/Koin;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/koin/core/scope/Scope;

    :cond_1
    iput-object p1, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    .line 4
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->b:Lorg/koin/core/Koin;

    invoke-virtual {p1}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "got scope: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw8/b;->b(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p2

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t get Scope for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - LifecycleOwner is not Active"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1, p2}, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->c(Landroidx/lifecycle/LifecycleOwner;Lkotlin/reflect/KProperty;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    return-object p1
.end method
