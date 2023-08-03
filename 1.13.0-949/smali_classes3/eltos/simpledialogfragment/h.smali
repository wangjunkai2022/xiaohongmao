.class public Leltos/simpledialogfragment/h;
.super Leltos/simpledialogfragment/b;
.source "SimpleTimeDialog.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/b<",
        "Leltos/simpledialogfragment/h;",
        ">;",
        "Landroid/widget/TimePicker$OnTimeChangedListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleTimeDialog."

.field public static final s:Ljava/lang/String; = "SimpleTimeDialog.HOUR"

.field public static final t:Ljava/lang/String; = "SimpleTimeDialog.MINUTE"

.field protected static final u:Ljava/lang/String; = "SimpleTimeDialog.VIEW_24_HOUR"


# instance fields
.field private r:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    return-void
.end method

.method public static W0()Leltos/simpledialogfragment/h;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/h;

    invoke-direct {v0}, Leltos/simpledialogfragment/h;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    const-string v1, "SimpleTimeDialog.MINUTE"

    const-string v2, "SimpleTimeDialog.HOUR"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SimpleTimeDialog.VIEW_24_HOUR"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 11
    :goto_1
    iget-object p1, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {p1, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 12
    iget-object p1, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    return-object p1
.end method

.method protected R0(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "SimpleTimeDialog.HOUR"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "SimpleTimeDialog.MINUTE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public X0(I)Leltos/simpledialogfragment/h;
    .locals 1

    const-string v0, "SimpleTimeDialog.HOUR"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/h;

    return-object p1
.end method

.method public Y0(I)Leltos/simpledialogfragment/h;
    .locals 1

    const-string v0, "SimpleTimeDialog.MINUTE"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/h;

    return-object p1
.end method

.method public Z0(Z)Leltos/simpledialogfragment/h;
    .locals 1

    const-string v0, "SimpleTimeDialog.VIEW_24_HOUR"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/h;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "SimpleTimeDialog.HOUR"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/h;->r:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "SimpleTimeDialog.MINUTE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0

    return-void
.end method
