.class Leltos/simpledialogfragment/form/c;
.super Leltos/simpledialogfragment/form/d;
.source "DateTimeViewHolder.java"

# interfaces
.implements Leltos/simpledialogfragment/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/d<",
        "Leltos/simpledialogfragment/form/DateTime;",
        ">;",
        "Leltos/simpledialogfragment/f$c;"
    }
.end annotation


# static fields
.field protected static final j:Ljava/lang/String; = "date"

.field protected static final k:Ljava/lang/String; = "hour"

.field protected static final l:Ljava/lang/String; = "minute"

.field private static final m:Ljava/lang/String; = "datePickerDialogTag"

.field private static final n:Ljava/lang/String; = "timePickerDialogTag"


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/google/android/material/textfield/TextInputLayout;

.field private e:Lcom/google/android/material/textfield/TextInputLayout;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Integer;

.field private i:Leltos/simpledialogfragment/form/g$b;


# direct methods
.method public constructor <init>(Leltos/simpledialogfragment/form/DateTime;)V
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/d;-><init>(Leltos/simpledialogfragment/form/FormElement;)V

    return-void
.end method

.method static synthetic h(Leltos/simpledialogfragment/form/c;)V
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/form/c;->o()V

    return-void
.end method

.method static synthetic i(Leltos/simpledialogfragment/form/c;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic j(Leltos/simpledialogfragment/form/c;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/form/c;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic k(Leltos/simpledialogfragment/form/c;)V
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/form/c;->p()V

    return-void
.end method

.method static synthetic l(Leltos/simpledialogfragment/form/c;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic m(Leltos/simpledialogfragment/form/c;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic n(Leltos/simpledialogfragment/form/c;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method private o()V
    .locals 4

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/e;->W0()Leltos/simpledialogfragment/e;

    move-result-object v0

    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/DateTime;

    iget-object v2, p0, Leltos/simpledialogfragment/form/c;->b:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Leltos/simpledialogfragment/form/FormElement;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/f;->G0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/e;

    .line 3
    invoke-virtual {v0}, Leltos/simpledialogfragment/f;->o0()Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/e;

    .line 4
    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object v2, v1

    check-cast v2, Leltos/simpledialogfragment/form/DateTime;

    iget-object v2, v2, Leltos/simpledialogfragment/form/DateTime;->min:Ljava/lang/Long;

    if-eqz v2, :cond_0

    check-cast v1, Leltos/simpledialogfragment/form/DateTime;

    iget-object v1, v1, Leltos/simpledialogfragment/form/DateTime;->min:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leltos/simpledialogfragment/e;->d1(J)Leltos/simpledialogfragment/e;

    .line 5
    :cond_0
    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object v2, v1

    check-cast v2, Leltos/simpledialogfragment/form/DateTime;

    iget-object v2, v2, Leltos/simpledialogfragment/form/DateTime;->max:Ljava/lang/Long;

    if-eqz v2, :cond_1

    check-cast v1, Leltos/simpledialogfragment/form/DateTime;

    iget-object v1, v1, Leltos/simpledialogfragment/form/DateTime;->max:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leltos/simpledialogfragment/e;->b1(J)Leltos/simpledialogfragment/e;

    .line 6
    :cond_1
    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/DateTime;

    iget-boolean v1, v1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-nez v1, :cond_2

    sget v1, Leltos/simpledialogfragment/c$n;->J:I

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/f;->m0(I)Leltos/simpledialogfragment/f;

    .line 7
    :cond_2
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leltos/simpledialogfragment/e;->X0(J)Leltos/simpledialogfragment/e;

    .line 8
    :cond_3
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->i:Leltos/simpledialogfragment/form/g$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "datePickerDialogTag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v3, Leltos/simpledialogfragment/form/DateTime;

    iget-object v3, v3, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Leltos/simpledialogfragment/form/g$b;->g(Leltos/simpledialogfragment/f;Ljava/lang/String;)V

    return-void
.end method

.method private p()V
    .locals 4

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/h;->W0()Leltos/simpledialogfragment/h;

    move-result-object v0

    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/DateTime;

    iget-object v2, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Leltos/simpledialogfragment/form/FormElement;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/f;->G0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/h;

    .line 3
    invoke-virtual {v0}, Leltos/simpledialogfragment/f;->o0()Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/h;

    .line 4
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/h;->X0(I)Leltos/simpledialogfragment/h;

    .line 5
    :cond_0
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/h;->Y0(I)Leltos/simpledialogfragment/h;

    .line 6
    :cond_1
    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/DateTime;

    iget-boolean v1, v1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-nez v1, :cond_2

    sget v1, Leltos/simpledialogfragment/c$n;->J:I

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/f;->m0(I)Leltos/simpledialogfragment/f;

    .line 7
    :cond_2
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->i:Leltos/simpledialogfragment/form/g$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timePickerDialogTag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v3, Leltos/simpledialogfragment/form/DateTime;

    iget-object v3, v3, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Leltos/simpledialogfragment/form/g$b;->g(Leltos/simpledialogfragment/f;Ljava/lang/String;)V

    return-void
.end method

.method private q()V
    .locals 9

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->b:Landroid/widget/EditText;

    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 3
    invoke-static {v1}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v8, Ljava/util/Date;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/DateTime;

    iget-boolean v1, v1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 6
    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->e:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/DateTime;

    iget-boolean v1, v1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-nez v1, :cond_6

    :cond_5
    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 7
    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->i:Leltos/simpledialogfragment/form/g$b;

    invoke-virtual {v0}, Leltos/simpledialogfragment/form/g$b;->h()V

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datePickerDialogTag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/DateTime;

    iget-object v1, v1, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p2, v2, :cond_3

    const-string p2, "SimpleDateDialog.DATE"

    .line 3
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    .line 4
    iget-object p2, p0, Leltos/simpledialogfragment/form/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 5
    iget-object p2, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p2, Leltos/simpledialogfragment/form/DateTime;

    iget-object p2, p2, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    sget-object p3, Leltos/simpledialogfragment/form/DateTime$Type;->DATETIME:Leltos/simpledialogfragment/form/DateTime$Type;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    iget-object p2, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-nez p2, :cond_2

    .line 6
    :cond_1
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->performClick()Z

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->i:Leltos/simpledialogfragment/form/g$b;

    invoke-virtual {p1, v5}, Leltos/simpledialogfragment/form/g$b;->d(Z)V

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_4

    .line 8
    iput-object v3, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    .line 9
    :cond_4
    :goto_1
    invoke-direct {p0}, Leltos/simpledialogfragment/form/c;->q()V

    return v4

    .line 10
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timePickerDialogTag"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v6, Leltos/simpledialogfragment/form/DateTime;

    iget-object v6, v6, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 11
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    if-eqz p1, :cond_7

    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-ne p2, v2, :cond_8

    const-string p2, "SimpleTimeDialog.HOUR"

    .line 12
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    const-string p2, "SimpleTimeDialog.MINUTE"

    .line 13
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    .line 14
    iget-object p2, p0, Leltos/simpledialogfragment/form/c;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    if-eqz p1, :cond_9

    .line 15
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->i:Leltos/simpledialogfragment/form/g$b;

    invoke-virtual {p1, v5}, Leltos/simpledialogfragment/form/g$b;->d(Z)V

    goto :goto_4

    :cond_8
    if-ne p2, v1, :cond_9

    .line 16
    iput-object v3, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    .line 17
    iput-object v3, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    .line 18
    :cond_9
    :goto_4
    invoke-direct {p0}, Leltos/simpledialogfragment/form/c;->q()V

    return v4

    :cond_a
    return v5
.end method

.method protected a(Leltos/simpledialogfragment/form/g$c;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/DateTime;

    iget-object p1, p1, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    sget-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->TIME:Leltos/simpledialogfragment/form/DateTime$Type;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    sget v0, Leltos/simpledialogfragment/c$l;->O0:I

    return v0
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 2

    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object v0, p1

    check-cast v0, Leltos/simpledialogfragment/form/DateTime;

    iget-boolean v0, v0, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Leltos/simpledialogfragment/form/DateTime;

    iget-object v0, v0, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    sget-object v1, Leltos/simpledialogfragment/form/DateTime$Type;->DATE:Leltos/simpledialogfragment/form/DateTime$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    if-nez v0, :cond_3

    :cond_0
    move-object v0, p1

    check-cast v0, Leltos/simpledialogfragment/form/DateTime;

    iget-object v0, v0, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    sget-object v1, Leltos/simpledialogfragment/form/DateTime$Type;->TIME:Leltos/simpledialogfragment/form/DateTime$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-nez v0, :cond_3

    :cond_1
    check-cast p1, Leltos/simpledialogfragment/form/DateTime;

    iget-object p1, p1, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    sget-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->DATETIME:Leltos/simpledialogfragment/form/DateTime$Type;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    if-eqz p1, :cond_2

    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected d(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "date"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "hour"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    :cond_1
    iget-object v0, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "minute"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method protected f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
    .locals 5

    .line 1
    iput-object p4, p0, Leltos/simpledialogfragment/form/c;->i:Leltos/simpledialogfragment/form/g$b;

    .line 2
    sget v0, Leltos/simpledialogfragment/c$i;->f1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Leltos/simpledialogfragment/form/c;->b:Landroid/widget/EditText;

    .line 3
    sget v0, Leltos/simpledialogfragment/c$i;->m5:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    .line 4
    sget v0, Leltos/simpledialogfragment/c$i;->g1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Leltos/simpledialogfragment/form/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    sget v0, Leltos/simpledialogfragment/c$i;->n5:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Leltos/simpledialogfragment/form/c;->e:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/DateTime;

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/form/FormElement;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p2, p0, Leltos/simpledialogfragment/form/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p2, Leltos/simpledialogfragment/form/DateTime;

    iget-object p2, p2, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    sget-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->TIME:Leltos/simpledialogfragment/form/DateTime$Type;

    if-ne p2, v0, :cond_0

    .line 9
    iget-object p2, p0, Leltos/simpledialogfragment/form/c;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    iget-object p2, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object v0, p2

    check-cast v0, Leltos/simpledialogfragment/form/DateTime;

    iget-object v0, v0, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    sget-object v1, Leltos/simpledialogfragment/form/DateTime$Type;->DATETIME:Leltos/simpledialogfragment/form/DateTime$Type;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    check-cast p2, Leltos/simpledialogfragment/form/DateTime;

    iget-object p2, p2, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    sget-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->DATE:Leltos/simpledialogfragment/form/DateTime$Type;

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 12
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 14
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->b:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 15
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->b:Landroid/widget/EditText;

    new-instance v0, Leltos/simpledialogfragment/form/c$a;

    invoke-direct {v0, p0, p4}, Leltos/simpledialogfragment/form/c$a;-><init>(Leltos/simpledialogfragment/form/c;Leltos/simpledialogfragment/form/g$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->b:Landroid/widget/EditText;

    new-instance v0, Leltos/simpledialogfragment/form/c$b;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/c$b;-><init>(Leltos/simpledialogfragment/form/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 17
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->e:Lcom/google/android/material/textfield/TextInputLayout;

    .line 18
    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object v4, v0

    check-cast v4, Leltos/simpledialogfragment/form/DateTime;

    iget-object v4, v4, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    if-eq v4, v1, :cond_3

    check-cast v0, Leltos/simpledialogfragment/form/DateTime;

    iget-object v0, v0, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    sget-object v1, Leltos/simpledialogfragment/form/DateTime$Type;->TIME:Leltos/simpledialogfragment/form/DateTime$Type;

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v2, 0x0

    .line 19
    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 21
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 22
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    new-instance p2, Leltos/simpledialogfragment/form/c$c;

    invoke-direct {p2, p0, p4}, Leltos/simpledialogfragment/form/c$c;-><init>(Leltos/simpledialogfragment/form/c;Leltos/simpledialogfragment/form/g$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Leltos/simpledialogfragment/form/c;->c:Landroid/widget/EditText;

    new-instance p2, Leltos/simpledialogfragment/form/c$d;

    invoke-direct {p2, p0}, Leltos/simpledialogfragment/form/c$d;-><init>(Leltos/simpledialogfragment/form/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz p3, :cond_5

    const-string p1, "date"

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    const-string p1, "hour"

    .line 25
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    const-string p1, "minute"

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    goto :goto_2

    .line 27
    :cond_5
    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object p2, p1

    check-cast p2, Leltos/simpledialogfragment/form/DateTime;

    iget-object p2, p2, Leltos/simpledialogfragment/form/DateTime;->date:Ljava/lang/Long;

    iput-object p2, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    .line 28
    move-object p2, p1

    check-cast p2, Leltos/simpledialogfragment/form/DateTime;

    iget-object p2, p2, Leltos/simpledialogfragment/form/DateTime;->hour:Ljava/lang/Integer;

    iput-object p2, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    .line 29
    check-cast p1, Leltos/simpledialogfragment/form/DateTime;

    iget-object p1, p1, Leltos/simpledialogfragment/form/DateTime;->minute:Ljava/lang/Integer;

    iput-object p1, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    .line 30
    :goto_2
    invoke-direct {p0}, Leltos/simpledialogfragment/form/c;->q()V

    return-void
.end method

.method protected g(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/c;->c(Landroid/content/Context;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    if-nez v0, :cond_2

    .line 4
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->f:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Leltos/simpledialogfragment/c$n;->T0:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->h:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 7
    :cond_1
    iget-object v1, p0, Leltos/simpledialogfragment/form/c;->e:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Leltos/simpledialogfragment/c$n;->T0:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    return v0
.end method
