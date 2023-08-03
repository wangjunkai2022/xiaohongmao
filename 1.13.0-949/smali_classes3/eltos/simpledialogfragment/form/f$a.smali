.class Leltos/simpledialogfragment/form/f$a;
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

    iput-object p1, p0, Leltos/simpledialogfragment/form/f$a;->a:Leltos/simpledialogfragment/form/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p1, p0, Leltos/simpledialogfragment/form/f$a;->a:Leltos/simpledialogfragment/form/f;

    invoke-static {p1}, Leltos/simpledialogfragment/form/f;->h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    move-result-object p1

    new-instance p2, Leltos/simpledialogfragment/form/f$a$a;

    invoke-direct {p2, p0}, Leltos/simpledialogfragment/form/f$a$a;-><init>(Leltos/simpledialogfragment/form/f$a;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
