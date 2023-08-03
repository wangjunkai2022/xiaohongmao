.class final Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivityStateVM.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt;->f(Landroidx/activity/ComponentActivity;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Landroidx/activity/ComponentActivity;

.field final synthetic b:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lz8/a;

.field final synthetic d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ly8/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lorg/koin/core/scope/Scope;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lz8/a;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;",
            "Lorg/koin/core/scope/Scope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->a:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->b:Lkotlin/reflect/KClass;

    iput-object p3, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->c:Lz8/a;

    iput-object p4, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->d:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->e:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->f:Lorg/koin/core/scope/Scope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 6
    .annotation build Lm8/g;
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->a:Landroidx/activity/ComponentActivity;

    iget-object v1, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->b:Lkotlin/reflect/KClass;

    iget-object v2, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->c:Lz8/a;

    iget-object v3, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->d:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->e:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->f:Lorg/koin/core/scope/Scope;

    invoke-static/range {v0 .. v5}, Lorg/koin/androidx/viewmodel/ext/android/a;->a(Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/ext/android/ActivityStateVMKt$b;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method
