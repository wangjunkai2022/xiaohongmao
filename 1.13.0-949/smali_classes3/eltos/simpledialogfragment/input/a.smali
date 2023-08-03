.class public Leltos/simpledialogfragment/input/a;
.super Leltos/simpledialogfragment/input/b;
.source "SimpleEMailDialog.java"


# static fields
.field public static final A:Ljava/lang/String; = "SimpleInputDialog.text"

.field protected static final B:Ljava/lang/String; = "^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

.field public static final TAG:Ljava/lang/String; = "SimpleEMailDialog."


# instance fields
.field protected final z:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/input/b;-><init>()V

    const-string v0, "^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/input/a;->z:Ljava/util/regex/Pattern;

    const/16 v0, 0x21

    .line 3
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/input/b;->c1(I)Leltos/simpledialogfragment/input/b;

    .line 4
    sget v0, Leltos/simpledialogfragment/c$n;->M:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/input/b;->a1(I)Leltos/simpledialogfragment/input/b;

    return-void
.end method

.method public static m1()Leltos/simpledialogfragment/input/a;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/input/a;

    invoke-direct {v0}, Leltos/simpledialogfragment/input/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected f1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/input/a;->z:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Leltos/simpledialogfragment/input/b;->f1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget p1, Leltos/simpledialogfragment/c$n;->V:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
