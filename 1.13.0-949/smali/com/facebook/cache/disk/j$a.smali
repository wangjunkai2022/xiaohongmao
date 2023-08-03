.class Lcom/facebook/cache/disk/j$a;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/j;->get()Lcom/facebook/cache/disk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/facebook/cache/disk/j;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/j$a;->b:Lcom/facebook/cache/disk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/j$a;->a:J

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
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/j$a;->b:Lcom/facebook/cache/disk/j;

    iget-wide v1, p0, Lcom/facebook/cache/disk/j$a;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/cache/disk/j;->a(Lcom/facebook/cache/disk/d$c;J)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/facebook/cache/disk/j$a;->b:Lcom/facebook/cache/disk/j;

    iget-wide v1, p0, Lcom/facebook/cache/disk/j$a;->a:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/facebook/cache/disk/j;->a(Lcom/facebook/cache/disk/d$c;J)F

    move-result p2

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

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
            "lhs",
            "rhs"
        }
    .end annotation

    check-cast p1, Lcom/facebook/cache/disk/d$c;

    check-cast p2, Lcom/facebook/cache/disk/d$c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/cache/disk/j$a;->a(Lcom/facebook/cache/disk/d$c;Lcom/facebook/cache/disk/d$c;)I

    move-result p1

    return p1
.end method
