.class public abstract Leltos/simpledialogfragment/g;
.super Landroid/os/AsyncTask;
.source "SimpleProgressTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected a:Leltos/simpledialogfragment/SimpleProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Leltos/simpledialogfragment/SimpleProgressDialog;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Leltos/simpledialogfragment/SimpleProgressDialog;->c1()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Leltos/simpledialogfragment/SimpleProgressDialog;->d1()V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    if-eqz v0, :cond_c

    array-length v0, p1

    if-lez v0, :cond_c

    const/4 v0, 0x0

    .line 2
    instance-of v1, p1, [Ljava/lang/Number;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 3
    move-object v1, p1

    check-cast v1, [Ljava/lang/Number;

    .line 4
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 5
    array-length v7, p1

    if-le v7, v5, :cond_0

    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, -0x1

    .line 6
    :goto_0
    array-length v8, p1

    if-le v8, v4, :cond_1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v1, v3

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v6

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    const/4 v7, -0x1

    .line 7
    :goto_1
    instance-of v6, p1, [Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 8
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object v6, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    invoke-virtual {v6}, Leltos/simpledialogfragment/SimpleProgressDialog;->d1()V

    .line 10
    :cond_3
    instance-of v6, p1, [Landroid/util/Pair;

    if-eqz v6, :cond_7

    .line 11
    check-cast p1, [Landroid/util/Pair;

    .line 12
    aget-object v2, p1, v2

    .line 13
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v8, v6, Ljava/lang/Number;

    if-eqz v8, :cond_4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 14
    :cond_4
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_5

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 15
    :cond_5
    array-length v2, p1

    if-le v2, v5, :cond_6

    .line 16
    aget-object v2, p1, v5

    .line 17
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_6

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 18
    :cond_6
    array-length v2, p1

    if-le v2, v4, :cond_7

    .line 19
    aget-object p1, p1, v4

    .line 20
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_7

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_7
    if-ltz v3, :cond_8

    .line 21
    iget-object p1, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    invoke-virtual {p1, v3}, Leltos/simpledialogfragment/SimpleProgressDialog;->g1(I)V

    :cond_8
    if-gez v3, :cond_9

    .line 22
    iget-object p1, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    invoke-virtual {p1}, Leltos/simpledialogfragment/SimpleProgressDialog;->d1()V

    :cond_9
    if-lez v7, :cond_a

    .line 23
    iget-object p1, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    invoke-virtual {p1, v7}, Leltos/simpledialogfragment/SimpleProgressDialog;->f1(I)V

    :cond_a
    if-ltz v1, :cond_b

    .line 24
    iget-object p1, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    invoke-virtual {p1, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->l1(I)V

    .line 25
    :cond_b
    iget-object p1, p0, Leltos/simpledialogfragment/g;->a:Leltos/simpledialogfragment/SimpleProgressDialog;

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/SimpleProgressDialog;->e1(Ljava/lang/String;)V

    :cond_c
    return-void
.end method
