.class public Lcom/lljjcoder/style/citylist/Toast/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;
    .locals 1

    sget-object v0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;)Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;
    .locals 0

    sput-object p0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    return-object p0
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    .line 3
    :cond_0
    new-instance v0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    invoke-direct {v0, p0}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    .line 4
    invoke-virtual {v0, p1}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->setShowText(Ljava/lang/String;)V

    .line 5
    sget-object p0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    invoke-virtual {p0}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->show()V

    return-void
.end method

.method public static showMomentToast(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1;

    invoke-direct {v0, p1, p2}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    .line 3
    :cond_0
    new-instance v0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    invoke-direct {v0, p0}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    .line 4
    invoke-virtual {v0, p1}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->setShowText(Ljava/lang/String;)V

    .line 5
    sget-object p0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 6
    sget-object p0, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->alarmDialog:Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;

    invoke-virtual {p0}, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->show()V

    return-void
.end method
