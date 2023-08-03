.class public abstract Leltos/simpledialogfragment/form/d;
.super Ljava/lang/Object;
.source "FormElementViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Leltos/simpledialogfragment/form/FormElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Leltos/simpledialogfragment/form/FormElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Leltos/simpledialogfragment/form/FormElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    return-void
.end method


# virtual methods
.method protected abstract a(Leltos/simpledialogfragment/form/g$c;)Z
.end method

.method protected abstract b()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method protected abstract c(Landroid/content/Context;)Z
.end method

.method protected abstract d(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method protected abstract e(Landroid/os/Bundle;)V
.end method

.method protected abstract f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end method

.method protected abstract g(Landroid/content/Context;)Z
.end method
