.class Leltos/simpledialogfragment/list/d$a$a;
.super Leltos/simpledialogfragment/list/a$a;
.source "SimpleListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/list/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/list/a<",
        "Ljava/lang/String;",
        ">.a;"
    }
.end annotation


# instance fields
.field final synthetic f:Leltos/simpledialogfragment/list/d$a;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/list/d$a;ZZ)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/d$a$a;->f:Leltos/simpledialogfragment/list/d$a;

    invoke-direct {p0, p1, p2, p3}, Leltos/simpledialogfragment/list/a$a;-><init>(Leltos/simpledialogfragment/list/a;ZZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Ljava/lang/Object;Ljava/lang/CharSequence;)Z
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Leltos/simpledialogfragment/list/d$a$a;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/list/a$a;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
