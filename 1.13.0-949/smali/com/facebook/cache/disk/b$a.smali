.class Lcom/facebook/cache/disk/b$a;
.super Ljava/lang/Object;
.source "DefaultEntryEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/b;->get()Lcom/facebook/cache/disk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/disk/b;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/cache/disk/b$a;->a:Lcom/facebook/cache/disk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/d$c;Lcom/facebook/cache/disk/d$c;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/cache/disk/d$c;->b()J

    move-result-wide v0

    .line 2
    invoke-interface {p2}, Lcom/facebook/cache/disk/d$c;->b()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "e1",
            "e2"
        }
    .end annotation

    check-cast p1, Lcom/facebook/cache/disk/d$c;

    check-cast p2, Lcom/facebook/cache/disk/d$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/cache/disk/b$a;->a(Lcom/facebook/cache/disk/d$c;Lcom/facebook/cache/disk/d$c;)I

    move-result p1

    return p1
.end method
