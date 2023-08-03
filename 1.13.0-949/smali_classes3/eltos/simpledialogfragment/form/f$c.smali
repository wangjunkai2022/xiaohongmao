.class Leltos/simpledialogfragment/form/f$c;
.super Ljava/lang/Object;
.source "InputViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/f;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/f;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/f;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/f$c;->a:Leltos/simpledialogfragment/form/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Leltos/simpledialogfragment/form/f$c;->a:Leltos/simpledialogfragment/form/f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Leltos/simpledialogfragment/form/f;->g(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method
