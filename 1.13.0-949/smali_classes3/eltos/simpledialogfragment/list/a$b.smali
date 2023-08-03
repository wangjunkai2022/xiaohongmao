.class Leltos/simpledialogfragment/list/a$b;
.super Ljava/lang/Object;
.source "AdvancedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/list/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Long;

.field c:Z

.field final synthetic d:Leltos/simpledialogfragment/list/a;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/list/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/list/a$b;->d:Leltos/simpledialogfragment/list/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Leltos/simpledialogfragment/list/a$b;->b:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Leltos/simpledialogfragment/list/a$b;->c:Z

    .line 4
    iput-object p2, p0, Leltos/simpledialogfragment/list/a$b;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Leltos/simpledialogfragment/list/a;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Leltos/simpledialogfragment/list/a$b;-><init>(Leltos/simpledialogfragment/list/a;Ljava/lang/Object;)V

    .line 8
    iput-object p3, p0, Leltos/simpledialogfragment/list/a$b;->b:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(Leltos/simpledialogfragment/list/a;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Leltos/simpledialogfragment/list/a$b;-><init>(Leltos/simpledialogfragment/list/a;Ljava/lang/Object;)V

    .line 6
    iput-boolean p3, p0, Leltos/simpledialogfragment/list/a$b;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/list/a$b;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
