.class public Landroidx/navigation/dynamicfeatures/DynamicInstallManager;
.super Ljava/lang/Object;
.source "DynamicInstallManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;,
        Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicInstallManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicInstallManager.kt\nandroidx/navigation/dynamicfeatures/DynamicInstallManager\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n*L\n1#1,192:1\n150#2:193\n*S KotlinDebug\n*F\n+ 1 DynamicInstallManager.kt\nandroidx/navigation/dynamicfeatures/DynamicInstallManager\n*L\n81#1:193\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J$\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\u0002H\u0007J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicInstallManager;",
        "",
        "",
        "module",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "installMonitor",
        "",
        "requestInstall",
        "Landroidx/navigation/NavBackStackEntry;",
        "backStackEntry",
        "Landroidx/navigation/dynamicfeatures/DynamicExtras;",
        "extras",
        "moduleName",
        "Landroidx/navigation/NavDestination;",
        "performInstall",
        "",
        "needsInstall",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "Lcom/google/android/play/core/splitinstall/c;",
        "splitInstallManager",
        "Lcom/google/android/play/core/splitinstall/c;",
        "<init>",
        "(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/c;)V",
        "Companion",
        "SplitInstallListenerWrapper",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final splitInstallManager:Lcom/google/android/play/core/splitinstall/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->Companion:Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/splitinstall/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitInstallManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/c;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->requestInstall$lambda-3(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->requestInstall$lambda-2(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private final requestInstall(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isUsed$navigation_dynamic_features_runtime_release()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->getStatus()Landroidx/lifecycle/LiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-virtual {p2, v1}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->setInstallRequired$navigation_dynamic_features_runtime_release(Z)V

    .line 4
    invoke-static {}, Lcom/google/android/play/core/splitinstall/e;->c()Lcom/google/android/play/core/splitinstall/e$a;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/play/core/splitinstall/e$a;->b(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/e$a;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/e$a;->c()Lcom/google/android/play/core/splitinstall/e;

    move-result-object v1

    const-string v2, "newBuilder()\n           \u2026ule)\n            .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/c;

    .line 8
    invoke-interface {v2, v1}, Lcom/google/android/play/core/splitinstall/c;->g(Lcom/google/android/play/core/splitinstall/e;)Lcom/google/android/play/core/tasks/d;

    move-result-object v1

    .line 9
    new-instance v2, Landroidx/navigation/dynamicfeatures/b;

    invoke-direct {v2, p2, p0, v0, p1}, Landroidx/navigation/dynamicfeatures/b;-><init>(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/d;->e(Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;

    move-result-object v1

    .line 10
    new-instance v2, Landroidx/navigation/dynamicfeatures/a;

    invoke-direct {v2, p1, p2, v0}, Landroidx/navigation/dynamicfeatures/a;-><init>(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/d;->c(Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must pass in a fresh DynamicInstallMonitor in DynamicExtras every time you call navigate()."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final requestInstall$lambda-2(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 10

    const-string v0, "$installMonitor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    .line 1
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->setSessionId$navigation_dynamic_features_runtime_release(I)V

    .line 2
    iget-object v0, p1, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/c;

    invoke-virtual {p0, v0}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->setSplitInstallManager(Lcom/google/android/play/core/splitinstall/c;)V

    .line 3
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    .line 5
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 7
    invoke-static/range {v1 .. v9}, Lcom/google/android/play/core/splitinstall/f;->b(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/f;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    sget-object p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->Companion:Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;

    invoke-virtual {p0, p2}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;->terminateLiveData$navigation_dynamic_features_runtime_release(Landroidx/lifecycle/MutableLiveData;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p3, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;

    .line 10
    iget-object p4, p1, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->context:Landroid/content/Context;

    .line 11
    invoke-direct {p3, p4, p2, p0}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$SplitInstallListenerWrapper;-><init>(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V

    .line 12
    iget-object p0, p1, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/c;

    invoke-interface {p0, p3}, Lcom/google/android/play/core/splitinstall/c;->o(Lcom/google/android/play/core/splitinstall/g;)V

    :goto_0
    return-void
.end method

.method private static final requestInstall$lambda-3(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Exception;)V
    .locals 9

    const-string v0, "$module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$installMonitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error requesting install of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicInstallManager"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1, p3}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->setException$navigation_dynamic_features_runtime_release(Ljava/lang/Exception;)V

    .line 4
    instance-of p1, p3, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    if-eqz p1, :cond_0

    .line 5
    check-cast p3, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-virtual {p3}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getErrorCode()I

    move-result p1

    move v2, p1

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    const/16 v2, -0x64

    :goto_0
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    .line 6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 8
    invoke-static/range {v0 .. v8}, Lcom/google/android/play/core/splitinstall/f;->b(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/f;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    sget-object p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->Companion:Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;

    invoke-virtual {p0, p2}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager$Companion;->terminateLiveData$navigation_dynamic_features_runtime_release(Landroidx/lifecycle/MutableLiveData;)V

    return-void
.end method


# virtual methods
.method public final needsInstall(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->splitInstallManager:Lcom/google/android/play/core/splitinstall/c;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/c;->j()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final performInstall(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/dynamicfeatures/DynamicExtras;Ljava/lang/String;)Landroidx/navigation/NavDestination;
    .locals 2
    .param p1    # Landroidx/navigation/NavBackStackEntry;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/dynamicfeatures/DynamicExtras;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "backStackEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroidx/navigation/dynamicfeatures/DynamicExtras;->getInstallMonitor()Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroidx/navigation/dynamicfeatures/DynamicExtras;->getInstallMonitor()Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->requestInstall(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V

    return-object v0

    .line 3
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/navigation/NavDestination;->getId()I

    move-result p3

    const-string v1, "dfn:destinationId"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "dfn:destinationArgs"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    sget-object p3, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->Companion:Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;->getOrThrow$navigation_dynamic_features_runtime_release(Landroidx/navigation/NavDestination;)Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->getNavigatorProvider$navigation_dynamic_features_runtime_release()Landroidx/navigation/NavigatorProvider;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p3, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object p3

    .line 9
    instance-of v1, p3, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;

    if-eqz v1, :cond_2

    .line 10
    check-cast p3, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;

    invoke-virtual {p3, p1, p2}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;->navigateToProgressDestination$navigation_dynamic_features_runtime_release(Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;Landroid/os/Bundle;)V

    return-object v0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must use a DynamicNavGraph to perform a module installation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
