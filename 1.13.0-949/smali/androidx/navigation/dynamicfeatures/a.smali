.class public final synthetic Landroidx/navigation/dynamicfeatures/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/play/core/tasks/b;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

.field public final synthetic c:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/a;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/a;->b:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/a;->c:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/a;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/a;->b:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    iget-object v2, p0, Landroidx/navigation/dynamicfeatures/a;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, v1, v2, p1}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->a(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Exception;)V

    return-void
.end method
