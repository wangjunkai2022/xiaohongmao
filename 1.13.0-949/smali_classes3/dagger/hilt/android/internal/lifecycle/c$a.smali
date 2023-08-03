.class Ldagger/hilt/android/internal/lifecycle/c$a;
.super Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
.source "HiltViewModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/hilt/android/internal/lifecycle/c;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;Ljava/util/Set;Landroidx/lifecycle/ViewModelProvider$Factory;Lh6/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh6/f;

.field final synthetic b:Ldagger/hilt/android/internal/lifecycle/c;


# direct methods
.method constructor <init>(Ldagger/hilt/android/internal/lifecycle/c;Lh6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewModelComponentBuilder"
        }
    .end annotation

    iput-object p1, p0, Ldagger/hilt/android/internal/lifecycle/c$a;->b:Ldagger/hilt/android/internal/lifecycle/c;

    iput-object p2, p0, Ldagger/hilt/android/internal/lifecycle/c$a;->a:Lh6/f;

    invoke-direct {p0}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "modelClass",
            "handle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ldagger/hilt/android/internal/lifecycle/c$a;->a:Lh6/f;

    .line 2
    invoke-interface {p1, p3}, Lh6/f;->a(Landroidx/lifecycle/SavedStateHandle;)Lh6/f;

    move-result-object p1

    invoke-interface {p1}, Lh6/f;->build()Lf6/f;

    move-result-object p1

    .line 3
    const-class p3, Ldagger/hilt/android/internal/lifecycle/c$c;

    .line 4
    invoke-static {p1, p3}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/hilt/android/internal/lifecycle/c$c;

    .line 5
    invoke-interface {p1}, Ldagger/hilt/android/internal/lifecycle/c$c;->a()Ljava/util/Map;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu7/c;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected the @HiltViewModel-annotated class \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' to be available in the multi-binding of @HiltViewModelMap but none was found."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
