.class final Lcom/google/common/collect/z3$d;
.super Ljava/lang/Object;
.source "RegularContiguousSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/collect/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p0<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;",
            "Lcom/google/common/collect/p0<",
            "TC;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/z3$d;->a:Lcom/google/common/collect/Range;

    .line 4
    iput-object p2, p0, Lcom/google/common/collect/z3$d;->b:Lcom/google/common/collect/p0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;Lcom/google/common/collect/z3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/z3$d;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)V

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/common/collect/z3;

    iget-object v1, p0, Lcom/google/common/collect/z3$d;->a:Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/z3$d;->b:Lcom/google/common/collect/p0;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/z3;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)V

    return-object v0
.end method
