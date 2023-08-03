.class public Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;
.super Landroid/widget/Toast;
.source "AlarmDailog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private noticeText:Landroid/widget/TextView;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->context:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lcom/lljjcoder/style/citypickerview/R$layout;->dialog_alarm_ui:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->noticeText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->noticeText:Landroid/widget/TextView;

    .line 6
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->toast:Landroid/widget/Toast;

    const/16 p1, 0x11

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 8
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 9
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setShowText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->noticeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/Toast/AlarmDailog;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
