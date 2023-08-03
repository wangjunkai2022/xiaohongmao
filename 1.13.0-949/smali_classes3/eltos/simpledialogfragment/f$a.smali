.class Leltos/simpledialogfragment/f$a;
.super Ljava/lang/Object;
.source "SimpleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/f;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/f;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/f$a;->a:Leltos/simpledialogfragment/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Leltos/simpledialogfragment/f$a;->a:Leltos/simpledialogfragment/f;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Leltos/simpledialogfragment/f;->V(ILandroid/os/Bundle;)Z

    return-void
.end method
