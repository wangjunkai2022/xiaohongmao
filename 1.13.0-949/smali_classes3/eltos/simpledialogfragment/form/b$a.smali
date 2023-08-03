.class Leltos/simpledialogfragment/form/b$a;
.super Ljava/lang/Object;
.source "ColorViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/b;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/b;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/b$a;->a:Leltos/simpledialogfragment/form/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Leltos/simpledialogfragment/form/b$a;->a:Leltos/simpledialogfragment/form/b;

    invoke-static {p1}, Leltos/simpledialogfragment/form/b;->h(Leltos/simpledialogfragment/form/b;)Leltos/simpledialogfragment/color/ColorView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    return-void
.end method
