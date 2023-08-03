.class public final Lorg/koin/androidx/scope/LifecycleScopeDelegate;
.super Ljava/lang/Object;
.source "LifecycleScopeDelegate.kt"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadOnlyProperty<",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lorg/koin/core/scope/Scope;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002B-\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0014\u0008\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00040\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u001d\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00032\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0096\u0002R\u0017\u0010\u000f\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00040\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/koin/androidx/scope/LifecycleScopeDelegate;",
        "T",
        "Lkotlin/properties/ReadOnlyProperty;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lorg/koin/core/scope/Scope;",
        "",
        "d",
        "thisRef",
        "Lkotlin/reflect/KProperty;",
        "property",
        "f",
        "a",
        "Landroidx/lifecycle/LifecycleOwner;",
        "e",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "Lorg/koin/core/Koin;",
        "b",
        "Lorg/koin/core/Koin;",
        "koin",
        "Lkotlin/Function1;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "createScope",
        "Lorg/koin/core/scope/Scope;",
        "_scope",
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


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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
    iput-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    .line 3
    iput-object p2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->b:Lorg/koin/core/Koin;

    .line 4
    iput-object p3, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->c:Lkotlin/jvm/functions/Function1;

    .line 5
    invoke-virtual {p2}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object p2

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setup scope: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lw8/b;->b(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p3, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;

    invoke-direct {p3, p0, p2}, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;-><init>(Lorg/koin/androidx/scope/LifecycleScopeDelegate;Lw8/b;)V

    invoke-virtual {p1, p3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 8
    new-instance p3, Lorg/koin/androidx/scope/LifecycleScopeDelegate$a;

    invoke-direct {p3, p1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate$a;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic a(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d()V

    return-void
.end method

.method public static final synthetic b(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)Lorg/koin/core/scope/Scope;
    .locals 0

    iget-object p0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    return-object p0
.end method

.method public static final synthetic c(Lorg/koin/androidx/scope/LifecycleScopeDelegate;Lorg/koin/core/scope/Scope;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    return-void
.end method

.method private final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->b:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create scope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw8/b;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Lorg/koin/core/component/c;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->b:Lorg/koin/core/Koin;

    invoke-virtual {v1, v0}, Lorg/koin/core/Koin;->H(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->c:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->b:Lorg/koin/core/Koin;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/Scope;

    :cond_0
    iput-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    :cond_1
    return-void
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public f(Landroidx/lifecycle/LifecycleOwner;Lkotlin/reflect/KProperty;)Lorg/koin/core/scope/Scope;
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

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    const-string p2, "can\'t get Scope for "

    if-nez p1, :cond_1

    .line 3
    invoke-direct {p0}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d()V

    .line 4
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->d:Lorg/koin/core/scope/Scope;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->a:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1, p2}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->f(Landroidx/lifecycle/LifecycleOwner;Lkotlin/reflect/KProperty;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    return-object p1
.end method
