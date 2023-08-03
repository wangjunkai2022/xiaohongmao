.class Leltos/simpledialogfragment/form/h$b;
.super Ljava/lang/Object;
.source "SpinnerViewHolder.java"

# interfaces
.implements Leltos/simpledialogfragment/form/CustomSpinnerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/h;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/h;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/h;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/h$b;->a:Leltos/simpledialogfragment/form/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/h$b;->a:Leltos/simpledialogfragment/form/h;

    invoke-static {v0}, Leltos/simpledialogfragment/form/h;->h(Leltos/simpledialogfragment/form/h;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Leltos/simpledialogfragment/form/h$b;->a:Leltos/simpledialogfragment/form/h;

    iget-object v1, v0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/Spinner;

    iget-boolean v1, v1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Leltos/simpledialogfragment/form/h;->i(Leltos/simpledialogfragment/form/h;I)V

    :cond_0
    return-void
.end method
