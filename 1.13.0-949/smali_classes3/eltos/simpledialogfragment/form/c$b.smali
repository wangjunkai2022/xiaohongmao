.class Leltos/simpledialogfragment/form/c$b;
.super Ljava/lang/Object;
.source "DateTimeViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/c;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/c;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/c;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/c$b;->a:Leltos/simpledialogfragment/form/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/form/c$b;->a:Leltos/simpledialogfragment/form/c;

    invoke-static {p1}, Leltos/simpledialogfragment/form/c;->i(Leltos/simpledialogfragment/form/c;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Leltos/simpledialogfragment/form/c$b;->a:Leltos/simpledialogfragment/form/c;

    iget-object p1, p1, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/DateTime;

    iget-boolean p1, p1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/c$b;->a:Leltos/simpledialogfragment/form/c;

    invoke-static {p1}, Leltos/simpledialogfragment/form/c;->j(Leltos/simpledialogfragment/form/c;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->performClick()Z

    :cond_1
    return-void
.end method
