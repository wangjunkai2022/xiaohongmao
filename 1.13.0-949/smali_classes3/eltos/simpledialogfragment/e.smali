.class public Leltos/simpledialogfragment/e;
.super Leltos/simpledialogfragment/b;
.source "SimpleDateDialog.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/b<",
        "Leltos/simpledialogfragment/e;",
        ">;",
        "Landroid/widget/DatePicker$OnDateChangedListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleDateDialog."

.field public static final s:Ljava/lang/String; = "SimpleDateDialog.DATE"

.field protected static final t:Ljava/lang/String; = "SimpleDateDialog.MIN_DATE"

.field protected static final u:Ljava/lang/String; = "SimpleDateDialog.MAX_DATE"

.field protected static final v:Ljava/lang/String; = "SimpleDateDialog.FIRST_DAY_OF_WEEK"


# instance fields
.field private r:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    return-void
.end method

.method public static W0()Leltos/simpledialogfragment/e;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/e;

    invoke-direct {v0}, Leltos/simpledialogfragment/e;-><init>()V

    return-object v0
.end method

.method private a1()J
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/e;->r:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object v0, p0, Leltos/simpledialogfragment/e;->r:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object v0, p0, Leltos/simpledialogfragment/e;->r:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/DatePicker;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leltos/simpledialogfragment/e;->r:Landroid/widget/DatePicker;

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "SimpleDateDialog.DATE"

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Leltos/simpledialogfragment/e;->r:Landroid/widget/DatePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 7
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SimpleDateDialog.MIN_DATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Leltos/simpledialogfragment/e;->r:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SimpleDateDialog.MAX_DATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Leltos/simpledialogfragment/e;->r:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 11
    :cond_3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SimpleDateDialog.FIRST_DAY_OF_WEEK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Leltos/simpledialogfragment/e;->r:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 13
    :cond_4
    iget-object p1, p0, Leltos/simpledialogfragment/e;->r:Landroid/widget/DatePicker;

    return-object p1
.end method

.method protected R0(I)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-direct {p0}, Leltos/simpledialogfragment/e;->a1()J

    move-result-wide v0

    const-string v2, "SimpleDateDialog.DATE"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p1
.end method

.method public X0(J)Leltos/simpledialogfragment/e;
    .locals 1

    const-string v0, "SimpleDateDialog.DATE"

    invoke-virtual {p0, v0, p1, p2}, Leltos/simpledialogfragment/f;->u0(Ljava/lang/String;J)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/e;

    return-object p1
.end method

.method public Y0(Ljava/util/Date;)Leltos/simpledialogfragment/e;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/e;->X0(J)Leltos/simpledialogfragment/e;

    move-result-object p1

    return-object p1
.end method

.method public Z0(I)Leltos/simpledialogfragment/e;
    .locals 1

    const-string v0, "SimpleDateDialog.FIRST_DAY_OF_WEEK"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/e;

    return-object p1
.end method

.method public b1(J)Leltos/simpledialogfragment/e;
    .locals 1

    const-string v0, "SimpleDateDialog.MAX_DATE"

    invoke-virtual {p0, v0, p1, p2}, Leltos/simpledialogfragment/f;->u0(Ljava/lang/String;J)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/e;

    return-object p1
.end method

.method public c1(Ljava/util/Date;)Leltos/simpledialogfragment/e;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/e;->b1(J)Leltos/simpledialogfragment/e;

    move-result-object p1

    return-object p1
.end method

.method public d1(J)Leltos/simpledialogfragment/e;
    .locals 1

    const-string v0, "SimpleDateDialog.MIN_DATE"

    invoke-virtual {p0, v0, p1, p2}, Leltos/simpledialogfragment/f;->u0(Ljava/lang/String;J)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/e;

    return-object p1
.end method

.method public e1(Ljava/util/Date;)Leltos/simpledialogfragment/e;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/e;->d1(J)Leltos/simpledialogfragment/e;

    move-result-object p1

    return-object p1
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/e;->a1()J

    move-result-wide v0

    const-string v2, "SimpleDateDialog.DATE"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
