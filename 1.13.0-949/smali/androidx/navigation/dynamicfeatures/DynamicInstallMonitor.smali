.class public final Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;
.super Ljava/lang/Object;
.source "DynamicInstallMonitor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002R:\u0010\u0007\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00052\u000e\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R*\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00138\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0015\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R*\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0006\u001a\u00020\u001a8\u0006@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010\"\u001a\u0004\u0018\u00010!8G@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u0010(\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00138\u0000@BX\u0080\u000e\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0016\u001a\u0004\u0008)\u0010\u0017\u00a8\u0006,"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "",
        "",
        "cancelInstall",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "<set-?>",
        "exception",
        "Ljava/lang/Exception;",
        "getException",
        "()Ljava/lang/Exception;",
        "setException$navigation_dynamic_features_runtime_release",
        "(Ljava/lang/Exception;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/google/android/play/core/splitinstall/f;",
        "status",
        "Landroidx/lifecycle/LiveData;",
        "getStatus",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "installRequired",
        "isInstallRequired",
        "Z",
        "()Z",
        "setInstallRequired$navigation_dynamic_features_runtime_release",
        "(Z)V",
        "",
        "sessionId",
        "I",
        "getSessionId",
        "()I",
        "setSessionId$navigation_dynamic_features_runtime_release",
        "(I)V",
        "Lcom/google/android/play/core/splitinstall/c;",
        "splitInstallManager",
        "Lcom/google/android/play/core/splitinstall/c;",
        "getSplitInstallManager",
        "()Lcom/google/android/play/core/splitinstall/c;",
        "setSplitInstallManager",
        "(Lcom/google/android/play/core/splitinstall/c;)V",
        "isUsed",
        "isUsed$navigation_dynamic_features_runtime_release",
        "<init>",
        "()V",
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
.field private exception:Ljava/lang/Exception;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private isInstallRequired:Z

.field private isUsed:Z

.field private sessionId:I

.field private splitInstallManager:Lcom/google/android/play/core/splitinstall/c;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final status:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/android/play/core/splitinstall/f;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->status:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final cancelInstall()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->splitInstallManager:Lcom/google/android/play/core/splitinstall/c;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->sessionId:I

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/c;->c(I)Lcom/google/android/play/core/tasks/d;

    :cond_0
    return-void
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getSessionId()I
    .locals 1

    iget v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->sessionId:I

    return v0
.end method

.method public final getSplitInstallManager()Lcom/google/android/play/core/splitinstall/c;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->splitInstallManager:Lcom/google/android/play/core/splitinstall/c;

    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/android/play/core/splitinstall/f;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->status:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isInstallRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isInstallRequired:Z

    return v0
.end method

.method public final isUsed$navigation_dynamic_features_runtime_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isUsed:Z

    return v0
.end method

.method public final setException$navigation_dynamic_features_runtime_release(Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public final setInstallRequired$navigation_dynamic_features_runtime_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isInstallRequired:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isUsed:Z

    :cond_0
    return-void
.end method

.method public final setSessionId$navigation_dynamic_features_runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->sessionId:I

    return-void
.end method

.method public final setSplitInstallManager(Lcom/google/android/play/core/splitinstall/c;)V
    .locals 0
    .param p1    # Lcom/google/android/play/core/splitinstall/c;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->splitInstallManager:Lcom/google/android/play/core/splitinstall/c;

    return-void
.end method
