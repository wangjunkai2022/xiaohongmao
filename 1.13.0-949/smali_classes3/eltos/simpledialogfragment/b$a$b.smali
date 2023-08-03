.class Leltos/simpledialogfragment/b$a$b;
.super Ljava/lang/Object;
.source "CustomViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/b$a;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/b$a;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/b$a;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/b$a$b;->a:Leltos/simpledialogfragment/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Leltos/simpledialogfragment/b$a$b;->a:Leltos/simpledialogfragment/b$a;

    iget-object p1, p1, Leltos/simpledialogfragment/b$a;->a:Leltos/simpledialogfragment/b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/b;->P0()V

    return-void
.end method
