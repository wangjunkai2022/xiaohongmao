.class public Lcom/hbb20/h;
.super Ljava/lang/Object;
.source "InternationalPhoneTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final j:Ljava/lang/String; = "Int\'l Phone TextWatcher"


# instance fields
.field a:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field private b:Z

.field private c:Z

.field private d:Lio/michaelrocks/libphonenumber/android/b;

.field private e:Ljava/lang/String;

.field f:Landroid/text/Editable;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "countryNameCode",
            "countryPhoneCode"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hbb20/h;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "countryNameCode",
            "countryPhoneCode",
            "internationalOnly"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/hbb20/h;->b:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/hbb20/h;->f:Landroid/text/Editable;

    .line 5
    iput-boolean v0, p0, Lcom/hbb20/h;->h:Z

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->h(Landroid/content/Context;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/h;->a:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/hbb20/h;->d(Ljava/lang/String;I)V

    .line 9
    iput-boolean p4, p0, Lcom/hbb20/h;->i:Z

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a(Ljava/lang/CharSequence;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "s",
            "start",
            "count"
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/h;->d:Lio/michaelrocks/libphonenumber/android/b;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/b;->h()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hbb20/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/hbb20/h;->i:Z

    const/16 v2, 0x30

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v4, ""

    move-object v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    .line 6
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 7
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v6, :cond_2

    .line 8
    iget-object v7, p0, Lcom/hbb20/h;->d:Lio/michaelrocks/libphonenumber/android/b;

    invoke-virtual {v7, v6}, Lio/michaelrocks/libphonenumber/android/b;->p(C)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    :cond_2
    move v6, v8

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    .line 9
    iget-object v1, p0, Lcom/hbb20/h;->d:Lio/michaelrocks/libphonenumber/android/b;

    invoke-virtual {v1, v6}, Lio/michaelrocks/libphonenumber/android/b;->p(C)Ljava/lang/String;

    move-result-object v7

    .line 10
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-boolean v5, p0, Lcom/hbb20/h;->i:Z

    if-nez v5, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_9

    .line 12
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le p1, v2, :cond_8

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_7

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    move-object v1, v4

    .line 16
    :cond_9
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move-object v4, v1

    :goto_2
    return-object v4
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/hbb20/h;->c:Z

    .line 2
    iget-object v0, p0, Lcom/hbb20/h;->d:Lio/michaelrocks/libphonenumber/android/b;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/b;->h()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/hbb20/h;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/hbb20/h;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/hbb20/h;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 7
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 8
    :goto_1
    invoke-direct {p0, p1}, Lcom/hbb20/h;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    :goto_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_8

    if-lt v4, v0, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 13
    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_b

    if-ne v4, v5, :cond_9

    goto :goto_5

    .line 14
    :cond_9
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v4, v4, 0x1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_5
    if-nez v3, :cond_c

    :goto_6
    add-int/lit8 v3, v0, -0x1

    if-lez v3, :cond_c

    .line 15
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_c

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 16
    :cond_c
    :try_start_3
    iput-boolean v1, p0, Lcom/hbb20/h;->b:Z

    const/4 v5, 0x0

    .line 17
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 18
    iput-boolean v2, p0, Lcom/hbb20/h;->b:Z

    .line 19
    iput-object p1, p0, Lcom/hbb20/h;->f:Landroid/text/Editable;

    .line 20
    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 21
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    :goto_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    .line 1
    iget-boolean p4, p0, Lcom/hbb20/h;->b:Z

    if-nez p4, :cond_1

    iget-boolean p4, p0, Lcom/hbb20/h;->c:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/hbb20/h;->a(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/hbb20/h;->h:Z

    if-nez p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/hbb20/h;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "countryNameCode",
            "countryPhoneCode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hbb20/h;->e:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/hbb20/h;->g:I

    .line 3
    iget-object p2, p0, Lcom/hbb20/h;->a:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {p2, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->E(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/b;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/h;->d:Lio/michaelrocks/libphonenumber/android/b;

    .line 4
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/b;->h()V

    .line 5
    iget-object p1, p0, Lcom/hbb20/h;->f:Landroid/text/Editable;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/hbb20/h;->h:Z

    .line 7
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->M0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v0, p0, Lcom/hbb20/h;->f:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/hbb20/h;->h:Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lcom/hbb20/h;->b:Z

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/hbb20/h;->c:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-lez p4, :cond_1

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lcom/hbb20/h;->a(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/hbb20/h;->c()V

    :cond_1
    :goto_0
    return-void
.end method
