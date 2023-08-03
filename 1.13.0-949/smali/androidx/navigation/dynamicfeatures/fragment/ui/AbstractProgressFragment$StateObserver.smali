.class final Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;
.super Ljava/lang/Object;
.source "AbstractProgressFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/google/android/play/core/splitinstall/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;",
        "Landroidx/lifecycle/Observer;",
        "Lcom/google/android/play/core/splitinstall/f;",
        "sessionState",
        "",
        "onChanged",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "monitor",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "<init>",
        "(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V",
        "navigation-dynamic-features-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final monitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;


# direct methods
.method public constructor <init>(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V
    .locals 1
    .param p1    # Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
            ")V"
        }
    .end annotation

    const-string v0, "monitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->monitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    return-void
.end method

.method public static synthetic a(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->onChanged$lambda-0(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method private static final onChanged$lambda-0(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->access$getIntentSenderLauncher$p(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    .line 2
    new-instance p2, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {p2, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    .line 3
    invoke-virtual {p2, p3}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFillInIntent(Landroid/content/Intent;)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p5, p4}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFlags(II)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/google/android/play/core/splitinstall/f;)V
    .locals 6
    .param p1    # Lcom/google/android/play/core/splitinstall/f;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->monitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    invoke-virtual {v0}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->getStatus()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->i()I

    move-result v0

    const/16 v1, -0x64

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->monitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    invoke-virtual {v0}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->getSplitInstallManager()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onFailed(I)V

    return-void

    .line 7
    :cond_1
    iget-object v2, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    new-instance v3, Landroidx/navigation/dynamicfeatures/fragment/ui/b;

    invoke-direct {v3, v2}, Landroidx/navigation/dynamicfeatures/fragment/ui/b;-><init>(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;)V

    const/4 v2, 0x1

    invoke-interface {v0, p1, v3, v2}, Lcom/google/android/play/core/splitinstall/c;->f(Lcom/google/android/play/core/splitinstall/f;Lcom/google/android/play/core/common/a;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onFailed(I)V

    goto :goto_0

    .line 9
    :pswitch_1
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onCancelled()V

    goto :goto_0

    .line 10
    :pswitch_2
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onFailed(I)V

    goto :goto_0

    .line 11
    :pswitch_3
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onInstalled()V

    .line 12
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->navigate$navigation_dynamic_features_fragment_release()V

    goto :goto_0

    .line 13
    :pswitch_4
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->i()I

    move-result v1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->a()J

    move-result-wide v2

    .line 16
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->j()J

    move-result-wide v4

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onProgress(IJJ)V

    goto :goto_0

    .line 18
    :pswitch_5
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->this$0:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;

    invoke-virtual {p1, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onFailed(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/play/core/splitinstall/f;

    invoke-virtual {p0, p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;->onChanged(Lcom/google/android/play/core/splitinstall/f;)V

    return-void
.end method
