.class Leltos/simpledialogfragment/color/a$a$a;
.super Ljava/lang/Object;
.source "SimpleColorDialog.java"

# interfaces
.implements Leltos/simpledialogfragment/list/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/color/a$a;-><init>(Leltos/simpledialogfragment/color/a;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leltos/simpledialogfragment/list/a$c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/color/a;

.field final synthetic b:Leltos/simpledialogfragment/color/a$a;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/color/a$a;Leltos/simpledialogfragment/color/a;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/color/a$a$a;->b:Leltos/simpledialogfragment/color/a$a;

    iput-object p2, p0, Leltos/simpledialogfragment/color/a$a$a;->a:Leltos/simpledialogfragment/color/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/color/a$a$a;->b(Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
