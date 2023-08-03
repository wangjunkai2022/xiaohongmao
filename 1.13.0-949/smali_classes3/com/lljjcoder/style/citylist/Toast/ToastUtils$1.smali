.class final Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->showMomentToast(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$showMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1;->val$showMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->access$000()Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    iget-object v1, p0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->access$002(Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;)Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    .line 3
    invoke-static {}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->access$000()Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    move-result-object v0

    iget-object v1, p0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1;->val$showMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->setShowText(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->access$000()Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 5
    invoke-static {}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->access$000()Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->access$000()Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    move-result-object v0

    iget-object v1, p0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1;->val$showMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->setShowText(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->access$000()Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->show()V

    .line 8
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    new-instance v1, Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1$1;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1$1;-><init>(Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
