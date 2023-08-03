.class final Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;
.super Ljava/lang/Object;
.source "DynamicInstallManager.kt"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/dynamicfeatures/DynamicInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SplitInstallListenerWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;",
        "Lcom/google/android/play/core/splitinstall/g;",
        "Lcom/google/android/play/core/splitinstall/f;",
        "splitInstallSessionState",
        "",
        "onStateUpdate",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "Landroidx/lifecycle/MutableLiveData;",
        "status",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "installMonitor",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "<init>",
        "(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/google/android/play/core/splitinstall/f;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/google/android/play/core/splitinstall/f;",
            ">;",
            "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installMonitor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->status:Landroidx/lifecycle/MutableLiveData;

    .line 4
    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    return-void
.end method


# virtual methods
.method public onStateUpdate(Lcom/google/android/play/core/splitinstall/f;)V
    .locals 2
    .param p1    # Lcom/google/android/play/core/splitinstall/f;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "splitInstallSessionState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->h()I

    move-result v0

    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    invoke-virtual {v1}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->getSessionId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->i()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/splitcompat/a;->a(Landroid/content/Context;)Z

    .line 5
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/b;->b(Landroid/content/Context;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->status:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    invoke-virtual {p1}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->getSplitInstallManager()Lcom/google/android/play/core/splitinstall/c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/google/android/play/core/splitinstall/c;->n(Lcom/google/android/play/core/splitinstall/g;)V

    .line 9
    sget-object p1, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->Companion:Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->status:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;->terminateLiveData$navigation_dynamic_features_runtime_release(Landroidx/lifecycle/MutableLiveData;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/play/core/splitinstall/f;

    invoke-virtual {p0, p1}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;->onStateUpdate(Lcom/google/android/play/core/splitinstall/f;)V

    return-void
.end method
